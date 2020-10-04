package by.tms.services;

import by.tms.entity.Operation;
import org.springframework.stereotype.Service;

@Service
public class CalcService {

    public void calc (Operation operation){
        switch (operation.getType()) {
            case "sum" :
                operation.setResult(operation.getNum1() + operation.getNum2());
                break;
            case "sub" :
                operation.setResult(operation.getNum1() - operation.getNum2());
                break;
            case "mult" :
                operation.setResult(operation.getNum1() * operation.getNum2());
                break;
            case "div" :
                operation.setResult(operation.getNum1() / operation.getNum2());
                break;
        }
    }

}
