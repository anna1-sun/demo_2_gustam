package com.company.springmvc.demo.data;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table
public class Category {
    @Id
    @GeneratedValue (strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private int id;
    @Column(name = "name")
    private String name;


    @OneToMany(cascade = CascadeType.ALL, fetch = FetchType.EAGER, mappedBy = "category")
    private List<Limit> limits;

//    @OneToMany(fetch = FetchType.LAZY, mappedBy ="category")
//    private List<Limit> bacteriaAsoc;


}

