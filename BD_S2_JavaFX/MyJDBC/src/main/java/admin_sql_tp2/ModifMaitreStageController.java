
package admin_sql_tp2;

import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.scene.control.Label;
import javafx.scene.control.TextField;

import java.sql.SQLException;

public class ModifMaitreStageController {
    @FXML
    private TextField maitreStageEmailTextField;

    @FXML
    private TextField maitreStageChampTextField;

    @FXML
    private TextField maitreStageNouvelleValeurTextField;


    @FXML
    private Label resultLabel;
    @FXML
    void executeModifierMaitreStage(ActionEvent event)
            throws SQLException {
        String result = MyController.myJDBC.executeWriteQuery("UPDATE vue_secretaire_maitre_stage SET "+maitreStageChampTextField.getText()+" = '"+maitreStageNouvelleValeurTextField.getText()+"' WHERE Mail_maitreStage = '"+maitreStageEmailTextField.getText()+"'");
        resultLabel.setText(result);
    }
}