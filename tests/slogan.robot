*** Settings ***
Library   Browser

*** Variables ***
${slogan}    Conectando colecionadores de figurinhas da copa.

*** Test Cases ***
Verificar o slogan do site
    New Browser         headless=False
    New Page            https://trade-sticker-dev.vercel.app
    Get Text            .logo-container h2    contains    ${slogan}
    Take Screenshot