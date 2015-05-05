package com.thiagoperrotta.model;

import java.io.Serializable;
import java.text.NumberFormat;

public class Money implements Serializable {

    public enum Currency {

        BRL("R$"),
        USD("$"),
        EUR("£");

        private final String name;

        private Currency(String name) {
            this.name = name;
        }

        @Override
        public String toString() {
            return name;
        }
    };

    Double amount;
    Currency currency;

    public Money(Double amount, Currency currency) {
        this.amount = amount;
        this.currency = currency;
    }

    public Money(Double amount) {
        this(amount, Currency.BRL);
    }

    public Double getAmount() {
        return amount;
    }

    public void setAmount(Double amount) {
        this.amount = amount;
    }

    public Currency getCurrency() {
        return currency;
    }

    public void setCurrency(Currency currency) {
        this.currency = currency;
    }

    @Override
    public String toString() {
        return currency + " " + NumberFormat.getCurrencyInstance().format(amount);
    }
}
