package com.company.springmvc.demo.data;


import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class LimitId implements Serializable {
    private int category;
    private int bacteria;
}
