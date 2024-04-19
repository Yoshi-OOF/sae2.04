
package admin_sql_tp2;

import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.scene.control.Label;
import javafx.scene.control.TextField;

import java.sql.SQLException;

public class ModifStageController {
    @FXML
    private TextField stageTypeTextField;

    @FXML
    private TextField stageDateDebutTextField;

    @FXML
    private TextField stageDateFinTextField;

    @FXML
    private TextField stageChampTextField;

    @FXML
    private TextField stageNouvelleValeurTextField;


    @FXML
    private Label resultLabel;
    @FXML
    void executeModifierStage(ActionEvent event)
            throws SQLException {
        String result = MyController.myJDBC.executeWriteQuery("UPDATE vue_secretaire_stage SET "+stageChampTextField.getText()+" = '"+stageNouvelleValeurTextField.getText()+"' WHERE Type_mission = '"+stageTypeTextField.getText()+"' AND Date_deb_stage = '"+stageDateDebutTextField.getText()+"' AND Date_fin_stage = '"+stageDateFinTextField.getText()+"'");
        resultLabel.setText(result);
    }
}