package com.company.springmvc.demo.data;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.hibernate.annotations.CollectionId;

import javax.persistence.*;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table
public class Product {
    @Id
    @GeneratedValue
    @Column(name = "id")
    private int id;
    @Column(name = "code")
    private String code;
    @Column(name = "name")
    private String name;
    @Column(name = "shelf_life")
    private int shelfLife;
    @Column(name = "category_id")
    private int categoryId;
}


