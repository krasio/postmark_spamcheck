postmark_spamcheck
===============

Description
=====================================

This is simple client for Postmark's Spamcheck API

Usage:
=====================================

        gem install postmark_spamcheck


        require 'postmark_spamcheck'

        puts PostmarkSpamcheck.score_for 'foo'
        puts PostmarkSpamcheck.report_for 'bar'
