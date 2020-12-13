package com.company.springmvc.demo.data;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;


    @Data
    @NoArgsConstructor
    @AllArgsConstructor
    @Entity
    @Table
    public class Limit{
        @Id
        @GeneratedValue
        @Column(name = "bacteria_id")
        private int bacteriaId;
        @Column(name = "limit")
        private int limit;
        @Column(name = "category_id")
        private int categoryId;

    }

