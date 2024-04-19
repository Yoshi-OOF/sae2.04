
package admin_sql_tp2;

import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.scene.control.Label;
import javafx.scene.control.TextField;

import java.sql.SQLException;

public class ModifStageController {
    @FXML
    private TextField etuEmailTextField;

    @FXML
    private TextField etuChampTextField;

    @FXML
    private TextField etuNouvelleValeurTextField;


    @FXML
    private Label resultLabel;
    @FXML
    void executeModifierEtu(ActionEvent event)
            throws SQLException {
        String result = MyController.myJDBC.executeWriteQuery("UPDATE vue_secretaire_stage SET "+etuChampTextField.getText()+" = '"+etuNouvelleValeurTextField.getText()+"' WHERE Mail_etu = '"+etuEmailTextField.getText()+"'");
        resultLabel.setText(result);
    }
}