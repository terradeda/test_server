#include<unistd.h>
#include <iostream>
#include <sys/socket.h>
#include<stdlib.h>
#include<netinet/in.h>
#include<string.h>

#define PORT 8888

int main(int, char**) {
    std::cout << "Hello, world!\n";


    int sock, new_socket, valread;

    // struct sockaddr_in serv_addr;
    sockaddr_in serv_address;  // Internet Style Socket address

    int opt =1;
    int addrlen = sizeof(serv_address); // Address Length
    char buffer[1024] = {0};
    char *hello = "hello from client";  // string for output

    // Create Socket File Descriptor
    std::cout<<"Creating Socket...";
    if((sock = socket(AF_INET,SOCK_STREAM,0)) == 0)
    {
        perror("Socket Create Failed");
        exit(EXIT_FAILURE);
    }
    std::cout<<"OK"<<std::endl;

    // Configure socket (Add SO_TIMESTAMP to test timestamping)
    // opt = 1 -> set SO_REUSEADDR and SO_REUSEPORT parameters to true
    if(setsockopt(sock, SOL_SOCKET, SO_REUSEPORT, &opt, sizeof(opt)))
    {
        perror("socket configuration Failed");
        exit(EXIT_FAILURE);
    }
    if(setsockopt(sock, SOL_SOCKET, SO_REUSEADDR, &opt, sizeof(opt)))
    {
        perror("socket configuration Failed");
        exit(EXIT_FAILURE);
    }
    
    
    // Configure Socket Address Parameters (Address family, Address and port)
    serv_address.sin_family = AF_INET;
    serv_address.sin_addr.s_addr = INADDR_ANY;
    serv_address.sin_port = htons(PORT);

    if(connect(sock, (struct sockaddr *)&serv_address, sizeof(serv_address) ) < 0){
        perror("Connection Failed");
        exit(EXIT_FAILURE);
    }

    // Send Data To Socket
    send(sock, hello, strlen(hello), 0);
    printf("hello message sent\n");


    // Read socket
    valread = read( sock, buffer, 1024);
    printf("%s\n",buffer);

    std::cout<<"ENDING"<<std::endl<<std::endl;

    return 0;
    
}
