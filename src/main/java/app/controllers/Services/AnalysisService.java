package app.controllers.Services;

import app.controllers.Models.dto.Analysis;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class AnalysisService {

    public Analysis proceedBlood(Analysis analysis, Long gender){

        // search for anemy
        if (analysis.getEruthr() < 65){
            analysis.setAnemyConclusion("Анемия 4 степени");
        }
        else
        if (analysis.getEruthr() < 80){
            analysis.setAnemyConclusion("Анемия 3 степени");
        }
        else
        if (analysis.getEruthr() < 95){
            analysis.setAnemyConclusion("Анемия 2 степени");
        }
        else
        if ((analysis.getEruthr() < 130 && gender == 1) || (analysis.getEruthr() < 120 && gender == 2)){
            analysis.setAnemyConclusion("Анемия 1 степени");
        }

        //search for trombocytopeny
        if (analysis.getTromb() < 25){
            analysis.setTrombConclusion("Тромбоцитопения 4 степени");
        }
        else
        if (analysis.getTromb() < 50){
            analysis.setTrombConclusion("Тромбоцитопения 3 степени. Снижаются тромбоциты в ОАК при гемофилии, лекарственной тромбоцитопении, системной красной волчанке, вирусных и бактериальных инфекциях, апластической анемии, синдроме Evans, аутоиммунной тромбоцитопенической пурпуре, тромбозе почечных вен.");
        }
        else
        if (analysis.getTromb() < 75){
            analysis.setTrombConclusion("Тромбоцитопения 2 степени. Снижаются тромбоциты в ОАК при гемофилии, лекарственной тромбоцитопении, системной красной волчанке, вирусных и бактериальных инфекциях, апластической анемии, синдроме Evans, аутоиммунной тромбоцитопенической пурпуре, тромбозе почечных вен.");
        }
        else
        if (analysis.getTromb() < 100){
            analysis.setTrombConclusion("Тромбоцитопения 1 степени. Снижаются тромбоциты в ОАК при гемофилии, лекарственной тромбоцитопении, системной красной волчанке, вирусных и бактериальных инфекциях, апластической анемии, синдроме Evans, аутоиммунной тромбоцитопенической пурпуре, тромбозе почечных вен.");
        }

        //search for leukocytosis
        if (analysis.getLeu() > 9)
            analysis.setLeuConclusion("Лейкоцитоз");

        //check retculocytes
        if (analysis.getReticulosytes() < 0.2)
            analysis.setAnemyConclusion(analysis.getAnemyConclusion() + " " +
                    "Ретикулоциты могут быть повышены при постгеморрагическом восстановлении кроветворения, при переезде в горную местность или при лечении анемии.");
        else if (analysis.getReticulosytes() > 1.2)
            analysis.setAnemyConclusion(analysis.getAnemyConclusion() + " " +
                    "Ретикулоциты снижаются в общем анализе крови при ретикулоцитопении (замедленное кроветворение в костном мозге, приводящая к анемии).");

        //SOE
        if (analysis.getSoe() < 1)
            analysis.setSoeConslusion("Снижуние СОЭ. Снижается при астено-невротический синдроме, выздоровлении после инфекции, кахексии, длительном приеме глюкокортикоидов, нарушении свертываемости крови, высокой концентрации глюкозы в крови, при черепно-мозговые травмах, приеме НПВС, иммунодепрессантов, антибиотиков.");
        else
            if (analysis.getSoe() > 15)
                analysis.setSoeConslusion("Повышение СОЭ. Повышается при физиологических состояниях повышение (беременность, менструация), при инфекционных заболеваниях, злокачественных новообразованиях, системных аутоиммунных болезнях, болезнях почек, в послеоперационном периоде, при травмах и ожогах.");

        return analysis;
    }
}
