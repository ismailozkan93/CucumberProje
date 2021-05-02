package pages;

import org.openqa.selenium.By;
import org.openqa.selenium.Keys;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;
import utilities.Driver;

import java.util.List;

public class Gmibankpage {
    public Gmibankpage(){
        PageFactory.initElements(Driver.getDriver(),this);
    }
    @FindBy( xpath="//name[@name='currentPassword']")
    public WebElement currentPassword;

    @FindBy(xpath = "//*[@name=newPassword']")
    public WebElement newPassword;

    @FindBy(id = "confirmPassword")
    public WebElement confirmNewPassword;

    @FindBy(id = "strengthBar")
    List <WebElement> StrengBar;

    @FindBy(xpath = "//button[@type='submit']")
    public WebElement saveButton;

    @FindBy(css = ".invalid-feedback")
    public List<WebElement> errorListForTextBoxes;

    @FindBy(xpath = "//*[@role='alert']")
    public WebElement resultAlert;


    public List<WebElement> errorListUnderTextBoxes(){
        return Driver.getDriver().findElements(By.cssSelector(".invalid-feedback"));
    }

    public boolean doesExistSuchAnError(String expectedErrorMessage){
        List<String> errorList = BrowserUtils.getElementsText(errorListForTextBoxes);
        for (String errorText : errorList) {
            if (errorText.contains(expectedErrorMessage)){
                return true;
            }
        }
        return false;
    }

    public void typeCurrentPasswordFromPropertiesFileForDynamicCustomer(){
        typeCurrentPassword(ConfigurationReader.getProperty("dynamic_customer_password"));
    }

    public void typeCurrentPassword(String currentPassword){
        currentPasswordTextBox.click();
        currentPasswordTextBox.sendKeys(currentPassword);
        currentPasswordTextBox.sendKeys(Keys.TAB);
    }

    public void typeNewPassword(String newPassword){
        newPasswordTextBox.click();
        newPasswordTextBox.sendKeys(newPassword);
        newPasswordTextBox.sendKeys(Keys.TAB);
    }

    public void typeNewPasswordConfirmation(String newPassword){
        confirmPasswordTextBox.click();
        confirmPasswordTextBox.sendKeys(newPassword);
        confirmPasswordTextBox.sendKeys(Keys.TAB);
    }

    public void clickSaveButton(){
        BrowserUtils.waitForVisibility(saveButton, 5);
        saveButton.click();
    }

    public void typeAllInformationAndClickSaveButton(String newPassword){
        typeCurrentPasswordFromPropertiesFileForDynamicCustomer();
        typeNewPassword(newPassword);
        typeNewPasswordConfirmation(newPassword);
        clickSaveButton();
    }

    public String getAlertMessage(){
        BrowserUtils.waitForVisibility(resultAlert, 5);
        return resultAlert.getText();
    }

    public boolean isPasswordChanged(){
        String message = getAlertMessage();
        if (message.contains("Password changed!")){
            return true;
        }else{
            return false;
        }
    }

    public boolean doesMessageContains(String expectedMessage){
        String actualMessage = getAlertMessage();
        if (actualMessage.contains(expectedMessage)){
            return true;
        }else{
            return false;
        }
    }

    public void typeValueInsideASpecifiedTextBox(String value, String textBox){
        switch (textBox.toLowerCase()){
            case "current_password":
                typeCurrentPassword(value);
                break;
            case "new_password":
                typeNewPassword(value);
                break;
            case "new_password_confirmation":
                typeNewPasswordConfirmation(value);
                break;
            default:
                System.out.println("specified textbox does not exist!!!");
                break;
        }

    }

    public void changePasswordWithRandomGenerated(){
        String oldPassword = ConfigurationReader.getProperty("dynamic_customer_password");
        String newPassword = RandomStringGenerator.compareAndGenerateAgain(oldPassword,7,1,1,1,1);
        System.out.println("newPassword = " + newPassword);
        typeAllInformationAndClickSaveButton(newPassword);
        if (isPasswordChanged()){
            ConfigurationReader.changePropertyValue("dynamic_customer_password", newPassword);
        }else {
            System.out.println("there is a problem, new password cannot be restored!!!");
        }
    }

    public void changePasswordWithGivenOne(String newPassword){
        typeAllInformationAndClickSaveButton(newPassword);
        if (isPasswordChanged()){
            ConfigurationReader.changePropertyValue("dynamic_customer_password", newPassword);
        }else {
            System.out.println("there is a problem, new password cannot be restored!!!");
        }
    }

    public void clearCurrentPasswordTextBox(){
        currentPasswordTextBox.click();
        currentPasswordTextBox.clear();
    }

    public void clearNewPasswordTextBox(){
        newPasswordTextBox.click();
        newPasswordTextBox.clear();
    }

    public void clearNewPasswordConfirmationTextBox(){
        confirmPasswordTextBox.click();
        confirmPasswordTextBox.clear();
    }

    public void clearAllTextBoxes(){
        clearCurrentPasswordTextBox();
        clearNewPasswordConfirmationTextBox();
        clearNewPasswordTextBox();
    }

}


