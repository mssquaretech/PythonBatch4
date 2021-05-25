*** Settings ***
Library     RequestsLibrary
Library     string
Library     OperatingSystem


*** Test Cases ***
Test API
    create session      Test        https://reqres.in
    ${response}           get request     Test        /api/users?page=2
    ${responsebody}         convert to string       ${response.content}
    log to console          ${responsebody}

Test Post API
    ${json}     get file    data/data.json
    create session      test1       https://reqres.in
    ${response}     post request    Test1   /api/users/     data=${json}
    ${resp_body}    convert to string   ${response.content}
    log to console      ${resp_body}
    log to console      ${response.status_code}
