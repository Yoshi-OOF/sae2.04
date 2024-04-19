package admin_sql_tp2;

import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.scene.control.Button;
import javafx.scene.control.Label;
import javafx.scene.control.TextField;

import java.sql.SQLException;
public class MyController {

    @FXML
    private Button myConnexionButton;

    @FXML
    private Label myConnexionLabel;

    @FXML
    private TextField myIdentityTextField;

    @FXML
    private TextField myPasswordTextField;

    @FXML
    private Button myQueryButton;

    @FXML
    private TextField myQueryTextField;

    @FXML
    private Label myResultLabel;

    private MyJDBC myJDBC=new MyJDBC("com.microsoft.sqlserver.jdbc.SQLServerDriver","jdbc:sqlserver://172.30.4.243\\LHAMON;databaseName=andreolieDB");

    private boolean connected=false;

    @FXML
    void connexionPressEvent(ActionEvent event)
            throws ClassNotFoundException, SQLException {
            if(!connected){
                myJDBC.connect(myIdentityTextField.getText(),
                        myPasswordTextField.getText());
                myConnexionLabel.setText("Connecté");
                connected=true;
            }
            else{
                myJDBC.disconnect();
                myConnexionLabel.setText("Pas connecté");
                connected=false;
            }
    }

    @FXML
    void executionPressEvent(ActionEvent event)
            throws SQLException {
        String result=myJDBC.executeReadQuery(myQueryTextField.getText());
        myResultLabel.setText(result);
    }

    @FXML
    void voirInformationEtudiant(ActionEvent event)
            throws SQLException {
        String result=myJDBC.executeReadQuery("SELECT * FROM vue_secretaire_etudiant");
        myResultLabel.setText(result);
    }

    @FXML
    void voirInformationEnseignant(ActionEvent event)
            throws SQLException {
        String result = myJDBC.executeReadQuery("SELECT * FROM vue_secretaire_enseignant");
        myResultLabel.setText(result);
    }

    @FXML
    void voirInformationMaitreStage(ActionEvent event)
            throws SQLException {
        String result = myJDBC.executeReadQuery("SELECT * FROM vue_secretaire_cours");
        myResultLabel.setText(result);
    }

}
