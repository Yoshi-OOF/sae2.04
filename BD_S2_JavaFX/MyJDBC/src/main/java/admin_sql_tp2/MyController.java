package admin_sql_tp2;


import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.scene.control.Button;
import javafx.scene.control.Label;
import javafx.scene.control.TextField;

import java.sql.SQLException;
import javafx.event.Event;
import javafx.stage.Stage;
public class MyController {
    @FXML
    private Stage modifEtuPanel;

    @FXML
    private Stage modifEnseiPanel;

    @FXML
    private Stage modifEntPanel;

    @FXML
    private Stage modifMaitreStagePanel;

    @FXML 
    private Button modifStagePanel;

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

    static public MyJDBC myJDBC=new MyJDBC("com.microsoft.sqlserver.jdbc.SQLServerDriver","jdbc:sqlserver://172.30.4.243\\LHAMON;databaseName=andreolieDB");

    private boolean connected=false;

    public void setModifEtuPanel(Stage modifetupanel) {
        this.modifEtuPanel = modifetupanel;
    }

    public void setModifEnseiPanel(Stage modifenseipanel) {
        this.modifEnseiPanel = modifenseipanel;
    }

    public void setModifEntPanel(Stage modifentpanel) {
        this.modifEntPanel = modifentpanel;
    }

    public void setModifMaitreStagePanel(Stage modifmaitrestagepanel) {
        this.modifMaitreStagePanel = modifmaitrestagepanel;
    }

    public void setModifStagePanel(Stage modifstagepanel) {
        this.modifStagePanel = modifstagepanel;
    }

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
        String result = myJDBC.executeReadQuery("SELECT * FROM vue_secretaire_maitre_stage");
        myResultLabel.setText(result);
    }

    @FXML
    void voirInformationStage(ActionEvent event)
            throws SQLException {
        String result = myJDBC.executeReadQuery("SELECT * FROM vue_secretaire_stage");
        myResultLabel.setText(result);
    }

    @FXML
    void voirInformationSuperviseur(ActionEvent event)
            throws SQLException {
        String result = myJDBC.executeReadQuery("SELECT * FROM vue_secretaire_superviseur");
        myResultLabel.setText(result);
    }

    @FXML
    void voirInformationNote(ActionEvent event)
            throws SQLException {
        String result = myJDBC.executeReadQuery("SELECT * FROM vue_secretaire_note");
        myResultLabel.setText(result);
    }

    @FXML
    void voirInformationEntreprise(ActionEvent event)
    // Nous n'avons pas créé de vue pour les entreprises donc on met juste les attributs de l'entreprise ici
            throws SQLException {
        String result = myJDBC.executeReadQuery("SELECT Nom_ent, Naf_ent, Ape_ent, Nom_chef_ent, Prenom_chef_ent, Adresse_chef_ent, Mail_chef_ent FROM ENTREPRISE");
        myResultLabel.setText(result);
    }

    @FXML
    void voirPanelModifEtu(ActionEvent event) {
        this.modifEtuPanel.show();
    }

    @FXML
    void voirPanelModifEnsei(ActionEvent event) {
        this.modifEnseiPanel.show();
    }

    @FXML
    void voirPanelModifEnt(ActionEvent event) {
        this.modifEntPanel.show();
    }

    @FXML
    void voirPanelModifMaitreStage(ActionEvent event) {
        this.modifMaitreStagePanel.show();
    }

    @FXML
    void voirPanelModifStage(ActionEvent event) {
        this.modifStagePanel.show();
    }

}
