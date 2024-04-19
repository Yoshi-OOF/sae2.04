package admin_sql_tp2;

import javafx.application.Application;
import javafx.fxml.FXMLLoader;
import javafx.scene.Scene;
import javafx.stage.Modality;
import javafx.stage.Stage;
import javafx.stage.StageStyle;

import java.io.IOException;

public class MyApplication extends Application {
    @Override
    public void start(Stage stage) throws IOException {
        FXMLLoader fxmlLoader = new FXMLLoader(MyApplication.class.getResource("hello-view.fxml"));
        Scene scene = new Scene(fxmlLoader.load());
        stage.setTitle("Hello!");
        stage.setScene(scene);
        stage.show();

        Stage modifEtuPanel = new Stage(StageStyle.DECORATED);
        modifEtuPanel.initModality(Modality.NONE);
        modifEtuPanel.initOwner(stage);

        FXMLLoader fxmlModifEtuPanelLoader = new FXMLLoader(MyApplication.class.getResource("modif_etu.fxml"));
        Scene sceneModifEtuPanel = new Scene(fxmlModifEtuPanelLoader.load());
        modifEtuPanel.setScene(sceneModifEtuPanel);

        Stage modifEnseiPanel = new Stage(StageStyle.DECORATED);
        modifEnseiPanel.initModality(Modality.NONE);
        modifEnseiPanel.initOwner(stage);

        FXMLLoader fxmlModifEnseiPanelLoader = new FXMLLoader(MyApplication.class.getResource("modif_ensei.fxml"));
        Scene sceneModifEnseiPanel = new Scene(fxmlModifEnseiPanelLoader.load());
        modifEnseiPanel.setScene(sceneModifEnseiPanel);

        Stage modifEntPanel = new Stage(StageStyle.DECORATED);
        modifEntPanel.initModality(Modality.NONE);
        modifEntPanel.initOwner(stage);

        FXMLLoader fxmlModifEntPanelLoader = new FXMLLoader(MyApplication.class.getResource("modif_ent.fxml"));
        Scene sceneModifEntPanel = new Scene(fxmlModifEntPanelLoader.load());
        modifEntPanel.setScene(sceneModifEntPanel);
        
        MyController controller = (MyController)fxmlLoader.getController();
        controller.setModifEtuPanel(modifEtuPanel);
        controller.setModifEnseiPanel(modifEnseiPanel);
        controller.setModifEntPanel(modifEntPanel);


    }

    public static void main(String[] args) {
        launch();
    }
}