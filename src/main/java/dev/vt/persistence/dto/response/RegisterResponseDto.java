package dev.vt.persistence.dto.response;

import dev.vt.persistence.model.enums.US_States;

import java.io.Serializable;



public record RegisterResponseDto(String responseMessage) implements Serializable { }
