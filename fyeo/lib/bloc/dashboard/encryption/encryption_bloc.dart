import 'package:formz/formz.dart';
import 'package:formz/formz.dart';
import 'package:fyeo/enum/validator_error.dart';
import 'package:fyeo/models/encryption_result.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:fyeo/enum/page_status.dart';
import 'package:fyeo/models/encryption_result.dart';
import 'package:fyeo/router/app_routes.dart';
import 'dart:io';

part 'encryption_event.dart';
part 'encryption_state.dart';
part 'encryption_bloc.freezed.dart';
