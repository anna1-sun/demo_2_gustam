package com.company.springmvc.demo.data;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Entity
@Table(name = "limit")
@IdClass(LimitId.class)
public class Limit {

    @Id
    @ManyToOne
    @JoinColumn(name = "category_id", referencedColumnName = "id")
    private Category category;

    @Id
    @ManyToOne
    @JoinColumn(name = "bacteria_id", referencedColumnName = "id")
    private Bacteria bacteria;

    @Column(name = "limit")
    private int limit;


//        @ManyToOne (cascade = CascadeType.ALL, fetch = FetchType.EAGER)
//        @JoinColumn(name="category_id", referencedColumnName="limit", nullable = false)
//        private Category category;
//        @Id
//        @ManyToOne
//        @JoinColumn(name = "employer_id", referencedColumnName = "id")
//        private Employer employer;
}

