function privnote($message){
    Write-Output "Generating Privnote link"
    $url = "https://privnote.com"
    $ie = New-Object -com InternetExplorer.Application
    $ie.visible = $false
    $ie.navigate($url)
    while($ie.Busy){Start-Sleep -milliseconds 100}
    $doc = $ie.Document
    $input = $doc.getElementByID("note_raw")
    $encbutton = $doc.getElementByID("encrypt_note")
    $input.value = $message
    $encbutton.click()

    Start-Sleep -seconds 5

    $output = $doc.getElementByID("note_link_input")
    $link = $output.value
    write-output $link
   
    $ie.quit()
}