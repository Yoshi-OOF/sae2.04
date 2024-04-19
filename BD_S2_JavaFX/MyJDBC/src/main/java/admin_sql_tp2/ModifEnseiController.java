
package admin_sql_tp2;

import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.scene.control.Label;
import javafx.scene.control.TextField;

import java.sql.SQLException;

public class ModifEnseiController {
    @FXML
    private TextField enseiEmailTextField;

    @FXML
    private TextField enseiChampTextField;

    @FXML
    private TextField enseiNouvelleValeurTextField;
    @FXML
    private Label resultLabel;
    @FXML
    void executeModifierEnsei(ActionEvent event)
            throws SQLException {
        String result = MyController.myJDBC.executeWriteQuery("UPDATE enseignant SET "+enseiChampTextField.getText()+" = '"+enseiNouvelleValeurTextField.getText()+"' WHERE Mail_ensei = '"+enseiEmailTextField.getText()+"'");
        resultLabel.setText(result);
    }
}