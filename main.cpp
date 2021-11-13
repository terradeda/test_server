#include<unistd.h>
#include <iostream>
#include <sys/socket.h>
#include<stdlib.h>
#include<netinet/in.h>
#include<string.h>
#include<list>

#define PORT 8888

typedef enum{
    ST_ERROR = -1,
    ST_OK = 0
}status;

class clientHandler{
    public:
        clientHandler(server* parent){     // Client(pass reference to server)
        server = parent;
        }

    private:
        server* server;
        int m_socket_fd;            // File Descriptor for client socket
        sockaddr_in m_socket_addr;  // Client Socket address Configuration obj.
        int temp;
        int temp2;
        int temp3;

};

class server{
    private:
        int global_socket_fd;                       // File Descriptor for the client socket
        std::list<clientHandler> clientHandlers;    // List of current client handlers

    public:
        server(){}
        status waitForConnectionRequest(){ 
            //TODO:test
        }

    private:
        status createClientHandler(){return (status)0;}
        status removeClientHandler(){return (status)0;}     // Client handler object calls this when an issue occurs. allows destructor call and notification to parent of closure.


};






int main(int, char**) {
    std::cout << "Hello, world!\n";


    int server_fd, new_socket, valread;

    // struct sockaddr_in serv_addr;
    sockaddr_in serv_addr;  // Internet Style Socket address

    int opt =1;
    int addrlen = sizeof(serv_addr); // Address Length
    char buffer[1024] = {0};
    char *hello = "hello from server";  // string for output

    // Create Socket File Descriptor
    std::cout<<"Creating Socket...";
    if((server_fd = socket(AF_INET,SOCK_STREAM,0)) == 0)
    {
        perror("Socket Create Failed");
        exit(EXIT_FAILURE);
    }
    std::cout<<"OK"<<std::endl;

    // Configure socket (Add SO_TIMESTAMP to test timestamping)
    // opt = 1 -> set SO_REUSEADDR and SO_REUSEPORT parameters to true
    if(setsockopt(server_fd, SOL_SOCKET, SO_REUSEPORT, &opt, sizeof(opt)))
    {
        perror("socket configuration Failed");
        exit(EXIT_FAILURE);
    }
    if(setsockopt(server_fd, SOL_SOCKET, SO_REUSEADDR, &opt, sizeof(opt)))
    {
        perror("socket configuration Failed");
        exit(EXIT_FAILURE);
    }
    
    
    // Configure Socket Address Parameters (Address family, Address and port)
    serv_addr.sin_family = AF_INET;
    serv_addr.sin_addr.s_addr = INADDR_ANY;
    serv_addr.sin_port = htons(PORT);

    // Forcefully Bind Socket to port/ip
    std::cout<<"Bind Address To Socket...";
    if(bind(server_fd, (struct sockaddr *)&serv_addr, sizeof(serv_addr)) <0 )
    {
        perror("Socket Bind Error");
        exit(EXIT_FAILURE);
    }
    std::cout<<"OK"<<std::endl;
    
    // Listen Socket configuration
    std::cout<<"Configure Socket to listen ...";

    if(listen(server_fd,3) <0){
        perror("listen error");
        exit(EXIT_FAILURE);
    }

    std::cout<<"ok"<<std::endl;

    // Accept Pending Socket Connection Requests (due to TCP connection)
    std::cout<<"Waiting For socket Connection Request..."<<std::endl;

    if((new_socket = accept(server_fd, (struct sockaddr *) &serv_addr, (socklen_t* )&addrlen)) <0)
    {
        perror("Socket Accept Error");
        exit(EXIT_FAILURE);
    }
    std::cout<<"Connection Accepted"<<std::endl;

    // Read socket
    valread = read( new_socket, buffer, 1024);
    printf("%s\n",buffer);

    // Send Data To Socket
    send(new_socket, hello, strlen(hello), 0);
    printf("hello message sent\n");

    std::cout<<"ENDING"<<std::endl<<std::endl;

    return 0;
    
}
