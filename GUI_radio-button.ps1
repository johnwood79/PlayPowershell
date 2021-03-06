[VOID][Reflection.Assembly]::LoadWithPartialName("System.Windows.Forms") 
 
# create form
$form = New-Object Windows.Forms.Form
$form.text = "What do you want to do?"
$form.top = 10
$form.left = 10
$form.height = 250
$form.width = 375
 
# create label
$label = New-Object Windows.Forms.Label
$label.text = "Select your options:"
$label.height = 30
$label.width = 150
$label.top = 15
$label.left = 20
$form.controls.add($label)
 
 
# create radiobutton
$RadioButton = New-Object Windows.Forms.radiobutton
$RadioButton.text = "Button Text"
$RadioButton.height = 20
$RadioButton.width = 150
$RadioButton.top = 20
$RadioButton.left = 5
$RadioButton.checked = "True"
 
# create radiobutton1
$radiobutton1 = New-Object Windows.Forms.radiobutton
$RadioButton1.text = "Button Text1"
$RadioButton1.height = 20
$RadioButton1.width = 150
$RadioButton1.top = 40
$RadioButton1.left =5
 
# create Groupbox
$GroupBox0 = New-Object Windows.Forms.GroupBox
$GroupBox0.Left = 10
$GroupBox0.Text = "1st Set"
$GroupBox0.Top = 42
$GroupBox0.Width = 160
$GroupBox0.Height = 100
$GroupBox0.Controls.Add($RadioButton)
$GroupBox0.Controls.Add($RadioButton1)
 
# create radiobutton
$RadioButton2 = New-Object Windows.Forms.radiobutton
$RadioButton2.text = "Button Text2"
$RadioButton2.height = 20
$RadioButton2.width = 160
$RadioButton2.top = 20
$RadioButton2.left = 5
$RadioButton2.checked = "True"
 
# create radiobutton2
$radiobutton3 = New-Object Windows.Forms.radiobutton
$RadioButton3.text = "Button Text3"
$RadioButton3.height = 20
$RadioButton3.width = 150
$RadioButton3.top = 40
$RadioButton3.left = 5
 
# create Groupbox
$GroupBox1 = New-Object Windows.Forms.GroupBox
$GroupBox1.Left = 180
$GroupBox1.Text = "2nd Set"
$GroupBox1.Top = 42
$GroupBox1.Width = 170
$GroupBox1.Height = 100
$GroupBox1.Controls.Add($RadioButton2)
$GroupBox1.Controls.Add($RadioButton3)
 
# create event handler for button
$event = {
if($radiobutton.checked){write-host "button pressed"}
if($radiobutton1.checked){write-host "button1 pressed"}
if($radiobutton2.checked){write-host "button2 pressed"}
if($radiobutton3.checked){write-host "button3 pressed"}
$form.Close()
}
 
# create button
$button = New-Object Windows.Forms.Button
$button.Add_Click($event)
$button.text = "OK"
$button.height = 30
$button.width = 70
$button.top = 170
$button.left = 150
$form.controls.add($button)
 
 
# attach controls to form
$form.controls.add($Groupbox0)
$form.controls.add($Groupbox1)
$form.controls.add($button)
$form.controls.add($label)
$form.controls.add($textbox)
 
[VOID]$form.showdialog()