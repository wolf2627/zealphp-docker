#!/bin/bash

# Text Formatting
BOLD="\e[1m"
RED="\e[31m"
GREEN="\e[32m"
BLUE="\e[34m"
YELLOW="\e[33m"
PINK="\e[35m"
RESET="\e[0m"

clear

{
# Welcome Message
echo -e "${GREEN}${BOLD}Welcome to ZealPHP!${RESET}\n"
echo -e "${BLUE}${BOLD}ZealPHP is a lightweight, high-performance PHP framework designed to help you build web applications quickly and easily.${RESET}\n"

# Instructions
echo -e "${YELLOW}${BOLD}Everything you need to get started is already installed in this container. Follow the instructions below to create your first project:${RESET}\n"

echo -e "${GREEN}${BOLD}Before starting:${RESET}"
echo -e "   ${BLUE}Make sure to navigate to the bind-mounted directory:${RESET}"
echo -e "   ${BOLD}$ cd /home/zealphp/app\n${RESET}"
echo -e "   ${BLUE}Although you can create your project anywhere you like,we recommend using the ${RESET}${BOLD}/home/zealphp/app${RESET} ${BLUE}directory as${RESET}"
echo -e "   ${BLUE}it is bind-mounted when running the container. This ensures your files are saved in the connected folder, allowing ${RESET}"
echo -e "   ${BLUE}you to easily move your development files to production.${RESET}\n"


echo -e "${GREEN}${BOLD}Instructions: ${RESET}"
echo -e "${GREEN}1. Create a new project from our go-to template:${RESET}"
echo -e "   ${BLUE}Replace 'my-project' with your project name and execute:${RESET}"
echo -e "   ${BOLD}$ composer create-project --stability=dev sibidharan/zealphp-project my-project\n${RESET}"

echo -e "${GREEN}2. Change directory to your new project:${RESET}"
echo -e "   ${BOLD}$ cd my-project\n${RESET}"

echo -e "${GREEN}3. Update composer dependencies:${RESET}"
echo -e "   ${BOLD}$ composer update\n${RESET}"

echo -e "${GREEN}4. Start the application:${RESET}"
echo -e "   ${BOLD}$ php app.php\n${RESET}"

echo -e " ${BOLD}ZealPHP server running at http://0.0.0.0:8080 with 8 routes${RESET}"
echo -e " ${YELLOW}If you see this message, you have done everything correctly and the server is running.\n${RESET}"
echo -e " ${RED}${BOLD}To Stop:${RESET} ${BOLD}Press Ctrl+C to stop the server\n${RESET}"

echo -e "${GREEN}5. Open your browser and navigate to:${RESET}"
echo -e "   ${BOLD}http://localhost:8080${RESET}"
echo -e "   ${BLUE}(Note: This works only if you used -p and set the port to 8080)${RESET}\n"

# Important Note about Volume Mounting
echo -e "${RED}${BOLD}IMPORTANT:${RESET}"
echo -e " ${YELLOW}-> If you used ${BOLD}-v${RESET}${YELLOW}, your files will be saved in the connected folder.${RESET}"
echo -e " ${YELLOW}-> This allows you to easily move your development files to production.${RESET}"
echo -e " ${YELLOW}-> Make sure your server is set up for ZealPHP.${RESET}"
echo -e " ${YELLOW}-> Follow the instructions at: ${GREEN}https://php.zeal.ninja${RESET} ${YELLOW}for setting up the server.${RESET}\n"

# Note for Testing and Comparison
echo -e "${PINK}${BOLD}Note:${RESET}"
echo -e "${YELLOW}This container is built on Ubuntu, allowing you to install other frameworks as well.${RESET}" 
echo -e "${YELLOW}Compare their performance with ZealPHP to experience its unmatched speed and efficiency!${RESET}\n"

# Additional Information
echo -e "${YELLOW}${BOLD}For more information, visit the ZealPHP GitHub repository and explore the documentation and examples at ${RESET}${BOLD}https://github.com/sibidharan/zealphp${RESET}.\n"

# Final Encouragement
echo -e "${GREEN}${BOLD}Feel free to explore all features in ZealPHP${RESET}"
} | less -R -P '[ZealPHP Quick Start Guide] Press q to exit'