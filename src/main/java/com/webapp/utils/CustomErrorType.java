package com.webapp.utils;

import java.util.List;
import java.util.Map;

public class CustomErrorType {

  private Map<String, List<MessageItem>> errors;

  public CustomErrorType() {}

  public CustomErrorType(Map<String, List<MessageItem>> errors) {
    this.errors = errors;
  }

  public Map<String, List<MessageItem>> getErrors() {
    return errors;
  }

  public void setErrors(Map<String, List<MessageItem>> errors) {
    this.errors = errors;
  }
}
