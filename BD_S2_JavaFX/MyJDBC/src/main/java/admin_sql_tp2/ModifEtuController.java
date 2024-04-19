
package admin_sql_tp2;

import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.scene.control.Button;
import javafx.scene.control.Label;
import javafx.scene.control.TextField;

import java.sql.SQLException;

import java.sql.SQLException;
public class ModifEtuController {
    @FXML
    private TextField etuEmailTextField;

    @FXML
    private TextField etuChampTextField;

    @FXML
    private TextField etuNouvelleValeurTextField;
    @FXML
    void executeModifierEtu(ActionEvent event)
            throws SQLException {
        String result = MyController.myJDBC.executeReadQuery("UPDATE etudiant SET "+etuChampTextField.getText()+" = '"+etuNouvelleValeurTextField.getText()+"' WHERE email = '"+etuEmailTextField.getText()+"'");
        MyController.myResultLabel.setText(result);
    }
}