<?php

class CategoryDeletionException extends Exception {
    public function __construct(string $message) {
        parent::__construct($message);
    }
}