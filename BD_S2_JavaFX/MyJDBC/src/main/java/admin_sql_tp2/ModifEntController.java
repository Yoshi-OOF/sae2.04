package admin_sql_tp2;

import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.scene.control.Label;
import javafx.scene.control.TextField;
import java.sql.SQLException;

public class ModifEntController {
    @FXML
    private TextField entEmailTextField;

    @FXML
    private TextField entChampTextField;

    @FXML
    private TextField entNouvelleValeurTextField;

    @FXML
    private Label resultLabel;

    @FXML
    void executeModifierEnt(ActionEvent event)
    // Nous n'avons pas créé de vue pour les entreprises donc on met juste entreprise ici
            throws SQLException {
        String result = MyController.myJDBC.executeWriteQuery("UPDATE entreprise SET "+entChampTextField.getText()+" = '"+entNouvelleValeurTextField.getText()+"' WHERE Mail_chef_ent = '"+entEmailTextField.getText()+"'");
        resultLabel.setText(result);
    }
}
