.class public Lcom/android/internal/telephony/SSRequestDecisionMaker;
.super Ljava/lang/Object;
.source "SSRequestDecisionMaker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/SSRequestDecisionMaker$SSRequestHandler;
    }
.end annotation


# static fields
.field private static final CLEAR_DELAY_TIMEOUT:I = 0x2710

.field private static final EVENT_SS_CLEAR_TEMP_VOLTE_USER_FLAG:I = 0x3

.field private static final EVENT_SS_RESPONSE:I = 0x2

.field private static final EVENT_SS_SEND:I = 0x1

.field static final LOG_TAG:Ljava/lang/String; = "SSDecisonMaker"

.field private static final SS_ERROR_UT_USER_UNKNOWN:I = 0x193

.field private static final SS_REQUEST_GET_CALL_BARRING:I = 0x3

.field private static final SS_REQUEST_GET_CALL_FORWARD:I = 0x1

.field private static final SS_REQUEST_GET_CALL_FORWARD_TIME_SLOT:I = 0xf

.field private static final SS_REQUEST_GET_CALL_WAITING:I = 0x5

.field private static final SS_REQUEST_GET_CLIP:I = 0x9

.field private static final SS_REQUEST_GET_CLIR:I = 0x7

.field private static final SS_REQUEST_GET_COLP:I = 0xd

.field private static final SS_REQUEST_GET_COLR:I = 0xb

.field private static final SS_REQUEST_SET_CALL_BARRING:I = 0x4

.field private static final SS_REQUEST_SET_CALL_FORWARD:I = 0x2

.field private static final SS_REQUEST_SET_CALL_FORWARD_TIME_SLOT:I = 0x10

.field private static final SS_REQUEST_SET_CALL_WAITING:I = 0x6

.field private static final SS_REQUEST_SET_CLIP:I = 0xa

.field private static final SS_REQUEST_SET_CLIR:I = 0x8

.field private static final SS_REQUEST_SET_COLP:I = 0xe

.field private static final SS_REQUEST_SET_COLR:I = 0xc


# instance fields
.field private mCi:Lcom/android/internal/telephony/CommandsInterface;

.field private mContext:Landroid/content/Context;

.field private mIsTempVolteUser:Z

.field private mMMTelSSTSL:Lcom/android/internal/telephony/MMTelSSTransport;

.field private mPhone:Lcom/android/internal/telephony/PhoneBase;

.field private mPhoneId:I

.field private mSSHandlerThread:Landroid/os/HandlerThread;

.field private mSSRequestHandler:Lcom/android/internal/telephony/SSRequestDecisionMaker$SSRequestHandler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/Phone;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phone"    # Lcom/android/internal/telephony/Phone;

    .prologue
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    iput-object p1, p0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mContext:Landroid/content/Context;

    move-object v1, p2

    .line 105
    check-cast v1, Lcom/android/internal/telephony/PhoneBase;

    iput-object v1, p0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    .line 106
    iget-object v1, p0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iput-object v1, p0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 107
    invoke-interface {p2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    iput v1, p0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mPhoneId:I

    .line 109
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "SSRequestHandler"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mSSHandlerThread:Landroid/os/HandlerThread;

    .line 110
    iget-object v1, p0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mSSHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 111
    iget-object v1, p0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mSSHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 112
    .local v0, "looper":Landroid/os/Looper;
    new-instance v1, Lcom/android/internal/telephony/SSRequestDecisionMaker$SSRequestHandler;

    invoke-direct {v1, p0, v0}, Lcom/android/internal/telephony/SSRequestDecisionMaker$SSRequestHandler;-><init>(Lcom/android/internal/telephony/SSRequestDecisionMaker;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mSSRequestHandler:Lcom/android/internal/telephony/SSRequestDecisionMaker$SSRequestHandler;

    .line 114
    invoke-static {}, Lcom/android/internal/telephony/MMTelSSTransport;->getInstance()Lcom/android/internal/telephony/MMTelSSTransport;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mMMTelSSTSL:Lcom/android/internal/telephony/MMTelSSTransport;

    .line 116
    iget-object v1, p0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mMMTelSSTSL:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-interface {p2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v2

    invoke-virtual {v1, p2, p1, v2}, Lcom/android/internal/telephony/MMTelSSTransport;->registerPhone(Lcom/android/internal/telephony/Phone;Landroid/content/Context;I)V

    .line 117
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/SSRequestDecisionMaker;)Lcom/android/internal/telephony/PhoneBase;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/SSRequestDecisionMaker;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/SSRequestDecisionMaker;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/SSRequestDecisionMaker;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SSRequestDecisionMaker;->processSendRequest(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/SSRequestDecisionMaker;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/SSRequestDecisionMaker;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SSRequestDecisionMaker;->processResponse(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$302(Lcom/android/internal/telephony/SSRequestDecisionMaker;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/SSRequestDecisionMaker;
    .param p1, "x1"    # Z

    .prologue
    .line 66
    iput-boolean p1, p0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mIsTempVolteUser:Z

    return p1
.end method

.method private getPhoneId()I
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mPhoneId:I

    .line 121
    iget v0, p0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mPhoneId:I

    return v0
.end method

.method private processResponse(Ljava/lang/Object;)V
    .locals 32
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 310
    const/4 v10, 0x0

    .local v10, "resp":Landroid/os/Message;
    move-object/from16 v17, p1

    .line 311
    check-cast v17, Landroid/os/AsyncResult;

    .line 312
    .local v17, "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v19, v0

    .line 313
    .local v19, "arResult":Ljava/lang/Object;
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v18, v0

    .line 314
    .local v18, "arException":Ljava/lang/Throwable;
    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v4, Ljava/util/ArrayList;

    move-object/from16 v28, v4

    check-cast v28, Ljava/util/ArrayList;

    .line 315
    .local v28, "ssParmList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    const/4 v4, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/lang/Integer;

    .line 316
    .local v27, "request":Ljava/lang/Integer;
    const-string v4, "SSDecisonMaker"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "processResponse, request = "

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, v27

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v4, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    invoke-virtual/range {v27 .. v27}, Ljava/lang/Integer;->intValue()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 704
    .end local v19    # "arResult":Ljava/lang/Object;
    :cond_0
    :goto_0
    if-eqz v18, :cond_1

    move-object/from16 v0, v18

    instance-of v4, v0, Lcom/mediatek/simservs/xcap/XcapException;

    if-eqz v4, :cond_1

    .line 705
    const-string v4, "SSDecisonMaker"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "processResponse, xcapException.httpErrorCode = "

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    check-cast v18, Lcom/mediatek/simservs/xcap/XcapException;

    .end local v18    # "arException":Ljava/lang/Throwable;
    invoke-virtual/range {v18 .. v18}, Lcom/mediatek/simservs/xcap/XcapException;->getHttpErrorCode()I

    move-result v15

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v4, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    new-instance v18, Lcom/android/internal/telephony/CommandException;

    sget-object v4, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    move-object/from16 v0, v18

    invoke-direct {v0, v4}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    .line 710
    .restart local v18    # "arException":Ljava/lang/Throwable;
    :cond_1
    if-eqz v10, :cond_2

    .line 711
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-static {v10, v0, v1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 712
    invoke-virtual {v10}, Landroid/os/Message;->sendToTarget()V

    .line 714
    :cond_2
    :goto_1
    return-void

    .line 320
    .restart local v19    # "arResult":Ljava/lang/Object;
    :pswitch_0
    const/4 v4, 0x1

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 321
    .local v6, "cfReason":I
    const/4 v4, 0x2

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 322
    .local v7, "serviceClass":I
    const/4 v4, 0x3

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 323
    .local v8, "number":Ljava/lang/String;
    const/4 v4, 0x4

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    .end local v10    # "resp":Landroid/os/Message;
    check-cast v10, Landroid/os/Message;

    .line 325
    .restart local v10    # "resp":Landroid/os/Message;
    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_3

    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v4, v4, Lcom/mediatek/simservs/xcap/XcapException;

    if-eqz v4, :cond_3

    .line 326
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v29, v0

    check-cast v29, Lcom/mediatek/simservs/xcap/XcapException;

    .line 327
    .local v29, "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    invoke-virtual/range {v29 .. v29}, Lcom/mediatek/simservs/xcap/XcapException;->getHttpErrorCode()I

    move-result v4

    const/16 v11, 0x193

    if-ne v4, v11, :cond_0

    .line 328
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v4, v6, v7, v8, v10}, Lcom/android/internal/telephony/CommandsInterface;->queryCallForwardStatus(IILjava/lang/String;Landroid/os/Message;)V

    .line 329
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    const/4 v11, 0x2

    invoke-virtual {v4, v11}, Lcom/android/internal/telephony/PhoneBase;->setCsFallbackStatus(I)V

    goto :goto_1

    .line 332
    .end local v29    # "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    :cond_3
    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_0

    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v4, v4, Ljava/net/UnknownHostException;

    if-eqz v4, :cond_0

    .line 333
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v4, v6, v7, v8, v10}, Lcom/android/internal/telephony/CommandsInterface;->queryCallForwardStatus(IILjava/lang/String;Landroid/os/Message;)V

    goto :goto_1

    .line 339
    .end local v6    # "cfReason":I
    .end local v7    # "serviceClass":I
    .end local v8    # "number":Ljava/lang/String;
    :pswitch_1
    const/4 v4, 0x1

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 340
    .local v5, "action":I
    const/4 v4, 0x2

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 341
    .restart local v6    # "cfReason":I
    const/4 v4, 0x3

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 342
    .restart local v7    # "serviceClass":I
    const/4 v4, 0x4

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 343
    .restart local v8    # "number":Ljava/lang/String;
    const/4 v4, 0x5

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 344
    .local v9, "timeSeconds":I
    const/4 v4, 0x6

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    .end local v10    # "resp":Landroid/os/Message;
    check-cast v10, Landroid/os/Message;

    .line 346
    .restart local v10    # "resp":Landroid/os/Message;
    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_4

    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v4, v4, Lcom/mediatek/simservs/xcap/XcapException;

    if-eqz v4, :cond_4

    .line 347
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v29, v0

    check-cast v29, Lcom/mediatek/simservs/xcap/XcapException;

    .line 348
    .restart local v29    # "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    invoke-virtual/range {v29 .. v29}, Lcom/mediatek/simservs/xcap/XcapException;->getHttpErrorCode()I

    move-result v4

    const/16 v11, 0x193

    if-ne v4, v11, :cond_5

    .line 349
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface/range {v4 .. v10}, Lcom/android/internal/telephony/CommandsInterface;->setCallForward(IIILjava/lang/String;ILandroid/os/Message;)V

    .line 351
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    const/4 v11, 0x2

    invoke-virtual {v4, v11}, Lcom/android/internal/telephony/PhoneBase;->setCsFallbackStatus(I)V

    goto/16 :goto_1

    .line 354
    .end local v29    # "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    :cond_4
    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_5

    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v4, v4, Ljava/net/UnknownHostException;

    if-eqz v4, :cond_5

    .line 355
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface/range {v4 .. v10}, Lcom/android/internal/telephony/CommandsInterface;->setCallForward(IIILjava/lang/String;ILandroid/os/Message;)V

    goto/16 :goto_1

    .line 359
    :cond_5
    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_0

    .line 360
    if-nez v6, :cond_0

    .line 361
    const/4 v4, 0x1

    if-eq v5, v4, :cond_6

    const/4 v4, 0x3

    if-ne v5, v4, :cond_7

    .line 362
    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    const-string v11, "persist.radio.ut.cfu.mode"

    const-string v15, "enabled_ut_cfu_mode_on"

    invoke-virtual {v4, v11, v15}, Lcom/android/internal/telephony/PhoneBase;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 365
    :cond_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    const-string v11, "persist.radio.ut.cfu.mode"

    const-string v15, "enabled_ut_cfu_mode_off"

    invoke-virtual {v4, v11, v15}, Lcom/android/internal/telephony/PhoneBase;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 373
    .end local v5    # "action":I
    .end local v6    # "cfReason":I
    .end local v7    # "serviceClass":I
    .end local v8    # "number":Ljava/lang/String;
    .end local v9    # "timeSeconds":I
    :pswitch_2
    const/4 v4, 0x3

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    .end local v10    # "resp":Landroid/os/Message;
    check-cast v10, Landroid/os/Message;

    .line 375
    .restart local v10    # "resp":Landroid/os/Message;
    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_8

    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v4, v4, Lcom/mediatek/simservs/xcap/XcapException;

    if-eqz v4, :cond_8

    .line 376
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v29, v0

    check-cast v29, Lcom/mediatek/simservs/xcap/XcapException;

    .line 377
    .restart local v29    # "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    invoke-virtual/range {v29 .. v29}, Lcom/mediatek/simservs/xcap/XcapException;->getHttpErrorCode()I

    move-result v4

    const/16 v11, 0x193

    if-ne v4, v11, :cond_0

    .line 378
    new-instance v18, Lcom/android/internal/telephony/CommandException;

    .end local v18    # "arException":Ljava/lang/Throwable;
    sget-object v4, Lcom/android/internal/telephony/CommandException$Error;->SPECAIL_UT_COMMAND_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

    move-object/from16 v0, v18

    invoke-direct {v0, v4}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    .line 380
    .restart local v18    # "arException":Ljava/lang/Throwable;
    const/16 v19, 0x0

    .line 381
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    const/4 v11, 0x2

    invoke-virtual {v4, v11}, Lcom/android/internal/telephony/PhoneBase;->setCsFallbackStatus(I)V

    goto/16 :goto_0

    .line 383
    .end local v29    # "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    :cond_8
    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_0

    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v4, v4, Ljava/net/UnknownHostException;

    if-eqz v4, :cond_0

    .line 384
    if-eqz v10, :cond_2

    .line 385
    const/4 v4, 0x0

    new-instance v11, Lcom/android/internal/telephony/CommandException;

    sget-object v15, Lcom/android/internal/telephony/CommandException$Error;->SPECAIL_UT_COMMAND_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v11, v15}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    invoke-static {v10, v4, v11}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 388
    invoke-virtual {v10}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_1

    .line 395
    :pswitch_3
    const/4 v4, 0x7

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    .end local v10    # "resp":Landroid/os/Message;
    check-cast v10, Landroid/os/Message;

    .line 397
    .restart local v10    # "resp":Landroid/os/Message;
    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_9

    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v4, v4, Lcom/mediatek/simservs/xcap/XcapException;

    if-eqz v4, :cond_9

    .line 398
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v29, v0

    check-cast v29, Lcom/mediatek/simservs/xcap/XcapException;

    .line 399
    .restart local v29    # "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    invoke-virtual/range {v29 .. v29}, Lcom/mediatek/simservs/xcap/XcapException;->getHttpErrorCode()I

    move-result v4

    const/16 v11, 0x193

    if-ne v4, v11, :cond_0

    .line 400
    new-instance v18, Lcom/android/internal/telephony/CommandException;

    .end local v18    # "arException":Ljava/lang/Throwable;
    sget-object v4, Lcom/android/internal/telephony/CommandException$Error;->SPECAIL_UT_COMMAND_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

    move-object/from16 v0, v18

    invoke-direct {v0, v4}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    .line 402
    .restart local v18    # "arException":Ljava/lang/Throwable;
    const/16 v19, 0x0

    .line 403
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    const/4 v11, 0x2

    invoke-virtual {v4, v11}, Lcom/android/internal/telephony/PhoneBase;->setCsFallbackStatus(I)V

    goto/16 :goto_0

    .line 405
    .end local v29    # "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    :cond_9
    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_0

    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v4, v4, Ljava/net/UnknownHostException;

    if-eqz v4, :cond_0

    .line 406
    if-eqz v10, :cond_2

    .line 407
    const/4 v4, 0x0

    new-instance v11, Lcom/android/internal/telephony/CommandException;

    sget-object v15, Lcom/android/internal/telephony/CommandException$Error;->SPECAIL_UT_COMMAND_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v11, v15}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    invoke-static {v10, v4, v11}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 410
    invoke-virtual {v10}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_1

    .line 417
    :pswitch_4
    const/4 v4, 0x1

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 418
    .local v12, "facility":Ljava/lang/String;
    const/4 v4, 0x2

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 419
    .local v14, "password":Ljava/lang/String;
    const/4 v4, 0x3

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 420
    .restart local v7    # "serviceClass":I
    const/4 v4, 0x4

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    .end local v10    # "resp":Landroid/os/Message;
    check-cast v10, Landroid/os/Message;

    .line 422
    .restart local v10    # "resp":Landroid/os/Message;
    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_a

    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v4, v4, Lcom/mediatek/simservs/xcap/XcapException;

    if-eqz v4, :cond_a

    .line 423
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v29, v0

    check-cast v29, Lcom/mediatek/simservs/xcap/XcapException;

    .line 424
    .restart local v29    # "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    invoke-virtual/range {v29 .. v29}, Lcom/mediatek/simservs/xcap/XcapException;->getHttpErrorCode()I

    move-result v4

    const/16 v11, 0x193

    if-ne v4, v11, :cond_b

    .line 425
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v4, v12, v14, v7, v10}, Lcom/android/internal/telephony/CommandsInterface;->queryFacilityLock(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V

    .line 427
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    const/4 v11, 0x2

    invoke-virtual {v4, v11}, Lcom/android/internal/telephony/PhoneBase;->setCsFallbackStatus(I)V

    goto/16 :goto_1

    .line 430
    .end local v29    # "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    :cond_a
    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_b

    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v4, v4, Ljava/net/UnknownHostException;

    if-eqz v4, :cond_b

    .line 431
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v4, v12, v14, v7, v10}, Lcom/android/internal/telephony/CommandsInterface;->queryFacilityLock(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V

    goto/16 :goto_1

    .line 435
    :cond_b
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/SSRequestDecisionMaker;->getPhoneId()I

    move-result v4

    invoke-static {v4}, Lcom/android/internal/telephony/MMTelSSUtils;->isOp01IccCard(I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {v12}, Lcom/android/internal/telephony/MMTelSSUtils;->isOutgoingCallBarring(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 437
    new-instance v18, Lcom/android/internal/telephony/CommandException;

    .end local v18    # "arException":Ljava/lang/Throwable;
    sget-object v4, Lcom/android/internal/telephony/CommandException$Error;->SPECAIL_UT_COMMAND_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

    move-object/from16 v0, v18

    invoke-direct {v0, v4}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    .line 439
    .restart local v18    # "arException":Ljava/lang/Throwable;
    const/16 v19, 0x0

    .line 440
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mIsTempVolteUser:Z

    .line 442
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mSSRequestHandler:Lcom/android/internal/telephony/SSRequestDecisionMaker$SSRequestHandler;

    const/4 v11, 0x3

    invoke-virtual {v4, v11}, Lcom/android/internal/telephony/SSRequestDecisionMaker$SSRequestHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v24

    .line 443
    .local v24, "msg":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mSSRequestHandler:Lcom/android/internal/telephony/SSRequestDecisionMaker$SSRequestHandler;

    const-wide/16 v30, 0x2710

    move-object/from16 v0, v24

    move-wide/from16 v1, v30

    invoke-virtual {v4, v0, v1, v2}, Lcom/android/internal/telephony/SSRequestDecisionMaker$SSRequestHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 448
    .end local v7    # "serviceClass":I
    .end local v12    # "facility":Ljava/lang/String;
    .end local v14    # "password":Ljava/lang/String;
    .end local v24    # "msg":Landroid/os/Message;
    :pswitch_5
    const/4 v4, 0x1

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 449
    .restart local v12    # "facility":Ljava/lang/String;
    const/4 v4, 0x2

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    .line 450
    .local v13, "lockState":Z
    const/4 v4, 0x3

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 451
    .restart local v14    # "password":Ljava/lang/String;
    const/4 v4, 0x4

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 452
    .restart local v7    # "serviceClass":I
    const/4 v4, 0x5

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    .end local v10    # "resp":Landroid/os/Message;
    check-cast v10, Landroid/os/Message;

    .line 454
    .restart local v10    # "resp":Landroid/os/Message;
    invoke-static {v12}, Lcom/android/internal/telephony/MMTelSSUtils;->isOutgoingCallBarring(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 455
    new-instance v18, Lcom/android/internal/telephony/CommandException;

    .end local v18    # "arException":Ljava/lang/Throwable;
    sget-object v4, Lcom/android/internal/telephony/CommandException$Error;->SPECAIL_UT_COMMAND_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

    move-object/from16 v0, v18

    invoke-direct {v0, v4}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    .line 457
    .restart local v18    # "arException":Ljava/lang/Throwable;
    const/16 v19, 0x0

    .line 460
    .end local v19    # "arResult":Ljava/lang/Object;
    :cond_c
    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_d

    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v4, v4, Lcom/mediatek/simservs/xcap/XcapException;

    if-eqz v4, :cond_d

    .line 461
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v29, v0

    check-cast v29, Lcom/mediatek/simservs/xcap/XcapException;

    .line 462
    .restart local v29    # "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    invoke-virtual/range {v29 .. v29}, Lcom/mediatek/simservs/xcap/XcapException;->getHttpErrorCode()I

    move-result v4

    const/16 v11, 0x193

    if-ne v4, v11, :cond_0

    .line 463
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move v15, v7

    move-object/from16 v16, v10

    invoke-interface/range {v11 .. v16}, Lcom/android/internal/telephony/CommandsInterface;->setFacilityLock(Ljava/lang/String;ZLjava/lang/String;ILandroid/os/Message;)V

    .line 465
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    const/4 v11, 0x2

    invoke-virtual {v4, v11}, Lcom/android/internal/telephony/PhoneBase;->setCsFallbackStatus(I)V

    goto/16 :goto_1

    .line 468
    .end local v29    # "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    :cond_d
    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_0

    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v4, v4, Ljava/net/UnknownHostException;

    if-eqz v4, :cond_0

    .line 469
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move v15, v7

    move-object/from16 v16, v10

    invoke-interface/range {v11 .. v16}, Lcom/android/internal/telephony/CommandsInterface;->setFacilityLock(Ljava/lang/String;ZLjava/lang/String;ILandroid/os/Message;)V

    goto/16 :goto_1

    .line 475
    .end local v7    # "serviceClass":I
    .end local v12    # "facility":Ljava/lang/String;
    .end local v13    # "lockState":Z
    .end local v14    # "password":Ljava/lang/String;
    .restart local v19    # "arResult":Ljava/lang/Object;
    :pswitch_6
    const/16 v25, 0x0

    .line 476
    .local v25, "queryVolteUser":Z
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    instance-of v4, v4, Lcom/android/internal/telephony/gsm/GSMPhone;

    if-eqz v4, :cond_e

    .line 477
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v21, v0

    check-cast v21, Lcom/android/internal/telephony/gsm/GSMPhone;

    .line 478
    .local v21, "gsmPhone":Lcom/android/internal/telephony/gsm/GSMPhone;
    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/gsm/GSMPhone;->getTbcwMode()I

    move-result v4

    if-nez v4, :cond_e

    .line 479
    const/16 v25, 0x1

    .line 483
    .end local v21    # "gsmPhone":Lcom/android/internal/telephony/gsm/GSMPhone;
    :cond_e
    if-eqz v25, :cond_18

    .line 484
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v21, v0

    check-cast v21, Lcom/android/internal/telephony/gsm/GSMPhone;

    .line 485
    .restart local v21    # "gsmPhone":Lcom/android/internal/telephony/gsm/GSMPhone;
    const/4 v4, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/Integer;

    .line 487
    .local v26, "reqCode":Ljava/lang/Integer;
    const/16 v20, 0x0

    .line 488
    .local v20, "enable":Z
    invoke-virtual/range {v26 .. v26}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v11, 0x5

    if-ne v4, v11, :cond_10

    .line 489
    const/4 v4, 0x1

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 490
    .restart local v7    # "serviceClass":I
    const/4 v4, 0x2

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    .end local v10    # "resp":Landroid/os/Message;
    check-cast v10, Landroid/os/Message;

    .line 497
    .restart local v10    # "resp":Landroid/os/Message;
    :goto_2
    const/16 v29, 0x0

    .line 498
    .restart local v29    # "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_f

    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v4, v4, Lcom/mediatek/simservs/xcap/XcapException;

    if-eqz v4, :cond_f

    .line 499
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v29, v0

    .end local v29    # "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    check-cast v29, Lcom/mediatek/simservs/xcap/XcapException;

    .line 502
    .restart local v29    # "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    :cond_f
    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_12

    .line 503
    const/4 v4, 0x2

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/gsm/GSMPhone;->setTbcwMode(I)V

    .line 504
    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/gsm/GSMPhone;->setTbcwToEnabledOnIfDisabled()V

    .line 505
    invoke-virtual/range {v26 .. v26}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v11, 0x5

    if-ne v4, v11, :cond_11

    .line 506
    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Lcom/android/internal/telephony/gsm/GSMPhone;->getTerminalBasedCallWaiting(Landroid/os/Message;)V

    goto/16 :goto_1

    .line 492
    .end local v7    # "serviceClass":I
    .end local v29    # "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    :cond_10
    const/4 v4, 0x1

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v20

    .line 493
    const/4 v4, 0x2

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 494
    .restart local v7    # "serviceClass":I
    const/4 v4, 0x3

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    .end local v10    # "resp":Landroid/os/Message;
    check-cast v10, Landroid/os/Message;

    .restart local v10    # "resp":Landroid/os/Message;
    goto :goto_2

    .line 508
    .restart local v29    # "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    :cond_11
    move-object/from16 v0, v21

    move/from16 v1, v20

    invoke-virtual {v0, v1, v10}, Lcom/android/internal/telephony/gsm/GSMPhone;->setTerminalBasedCallWaiting(ZLandroid/os/Message;)V

    goto/16 :goto_1

    .line 510
    :cond_12
    if-eqz v29, :cond_14

    invoke-virtual/range {v29 .. v29}, Lcom/mediatek/simservs/xcap/XcapException;->getHttpErrorCode()I

    move-result v4

    const/16 v11, 0x193

    if-ne v4, v11, :cond_14

    .line 512
    const/4 v4, 0x3

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/gsm/GSMPhone;->setTbcwMode(I)V

    .line 513
    const-string v4, "persist.radio.terminal-based.cw"

    const-string v11, "disabled_tbcw"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v11}, Lcom/android/internal/telephony/gsm/GSMPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 515
    invoke-virtual/range {v26 .. v26}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v11, 0x5

    if-ne v4, v11, :cond_13

    .line 516
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v4, v7, v10}, Lcom/android/internal/telephony/CommandsInterface;->queryCallWaiting(ILandroid/os/Message;)V

    .line 520
    :goto_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    const/4 v11, 0x2

    invoke-virtual {v4, v11}, Lcom/android/internal/telephony/PhoneBase;->setCsFallbackStatus(I)V

    goto/16 :goto_1

    .line 518
    :cond_13
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move/from16 v0, v20

    invoke-interface {v4, v0, v7, v10}, Lcom/android/internal/telephony/CommandsInterface;->setCallWaiting(ZILandroid/os/Message;)V

    goto :goto_3

    .line 521
    :cond_14
    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_16

    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v4, v4, Ljava/net/UnknownHostException;

    if-eqz v4, :cond_16

    .line 523
    invoke-virtual/range {v26 .. v26}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v11, 0x5

    if-ne v4, v11, :cond_15

    .line 524
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v4, v7, v10}, Lcom/android/internal/telephony/CommandsInterface;->queryCallWaiting(ILandroid/os/Message;)V

    goto/16 :goto_1

    .line 526
    :cond_15
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move/from16 v0, v20

    invoke-interface {v4, v0, v7, v10}, Lcom/android/internal/telephony/CommandsInterface;->setCallWaiting(ZILandroid/os/Message;)V

    goto/16 :goto_1

    .line 529
    :cond_16
    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/gsm/GSMPhone;->setTbcwToEnabledOnIfDisabled()V

    .line 530
    invoke-virtual/range {v26 .. v26}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v11, 0x5

    if-ne v4, v11, :cond_17

    .line 531
    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Lcom/android/internal/telephony/gsm/GSMPhone;->getTerminalBasedCallWaiting(Landroid/os/Message;)V

    goto/16 :goto_1

    .line 533
    :cond_17
    move-object/from16 v0, v21

    move/from16 v1, v20

    invoke-virtual {v0, v1, v10}, Lcom/android/internal/telephony/gsm/GSMPhone;->setTerminalBasedCallWaiting(ZLandroid/os/Message;)V

    goto/16 :goto_1

    .line 538
    .end local v7    # "serviceClass":I
    .end local v20    # "enable":Z
    .end local v21    # "gsmPhone":Lcom/android/internal/telephony/gsm/GSMPhone;
    .end local v26    # "reqCode":Ljava/lang/Integer;
    .end local v29    # "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    :cond_18
    const/4 v4, 0x1

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 539
    .restart local v7    # "serviceClass":I
    const/4 v4, 0x2

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    .end local v10    # "resp":Landroid/os/Message;
    check-cast v10, Landroid/os/Message;

    .line 541
    .restart local v10    # "resp":Landroid/os/Message;
    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_19

    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v4, v4, Lcom/mediatek/simservs/xcap/XcapException;

    if-eqz v4, :cond_19

    .line 542
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v29, v0

    check-cast v29, Lcom/mediatek/simservs/xcap/XcapException;

    .line 543
    .restart local v29    # "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    invoke-virtual/range {v29 .. v29}, Lcom/mediatek/simservs/xcap/XcapException;->getHttpErrorCode()I

    move-result v4

    const/16 v11, 0x193

    if-ne v4, v11, :cond_0

    .line 544
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v4, v7, v10}, Lcom/android/internal/telephony/CommandsInterface;->queryCallWaiting(ILandroid/os/Message;)V

    .line 545
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    const/4 v11, 0x2

    invoke-virtual {v4, v11}, Lcom/android/internal/telephony/PhoneBase;->setCsFallbackStatus(I)V

    goto/16 :goto_1

    .line 548
    .end local v29    # "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    :cond_19
    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_0

    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v4, v4, Ljava/net/UnknownHostException;

    if-eqz v4, :cond_0

    .line 550
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v4, v7, v10}, Lcom/android/internal/telephony/CommandsInterface;->queryCallWaiting(ILandroid/os/Message;)V

    goto/16 :goto_1

    .line 558
    .end local v7    # "serviceClass":I
    .end local v25    # "queryVolteUser":Z
    :pswitch_7
    const/4 v4, 0x1

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v20

    .line 559
    .restart local v20    # "enable":Z
    const/4 v4, 0x2

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 560
    .restart local v7    # "serviceClass":I
    const/4 v4, 0x3

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    .end local v10    # "resp":Landroid/os/Message;
    check-cast v10, Landroid/os/Message;

    .line 561
    .restart local v10    # "resp":Landroid/os/Message;
    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_1a

    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v4, v4, Lcom/mediatek/simservs/xcap/XcapException;

    if-eqz v4, :cond_1a

    .line 562
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v29, v0

    check-cast v29, Lcom/mediatek/simservs/xcap/XcapException;

    .line 563
    .restart local v29    # "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    invoke-virtual/range {v29 .. v29}, Lcom/mediatek/simservs/xcap/XcapException;->getHttpErrorCode()I

    move-result v4

    const/16 v11, 0x193

    if-ne v4, v11, :cond_0

    .line 564
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move/from16 v0, v20

    invoke-interface {v4, v0, v7, v10}, Lcom/android/internal/telephony/CommandsInterface;->setCallWaiting(ZILandroid/os/Message;)V

    .line 565
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    const/4 v11, 0x2

    invoke-virtual {v4, v11}, Lcom/android/internal/telephony/PhoneBase;->setCsFallbackStatus(I)V

    goto/16 :goto_1

    .line 568
    .end local v29    # "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    :cond_1a
    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_0

    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v4, v4, Ljava/net/UnknownHostException;

    if-eqz v4, :cond_0

    .line 569
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move/from16 v0, v20

    invoke-interface {v4, v0, v7, v10}, Lcom/android/internal/telephony/CommandsInterface;->setCallWaiting(ZILandroid/os/Message;)V

    goto/16 :goto_1

    .line 576
    .end local v7    # "serviceClass":I
    .end local v20    # "enable":Z
    :pswitch_8
    const/4 v4, 0x1

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    .end local v10    # "resp":Landroid/os/Message;
    check-cast v10, Landroid/os/Message;

    .line 578
    .restart local v10    # "resp":Landroid/os/Message;
    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_1b

    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v4, v4, Lcom/mediatek/simservs/xcap/XcapException;

    if-eqz v4, :cond_1b

    .line 579
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v29, v0

    check-cast v29, Lcom/mediatek/simservs/xcap/XcapException;

    .line 580
    .restart local v29    # "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    invoke-virtual/range {v29 .. v29}, Lcom/mediatek/simservs/xcap/XcapException;->getHttpErrorCode()I

    move-result v4

    const/16 v11, 0x193

    if-ne v4, v11, :cond_1c

    .line 581
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v4, v10}, Lcom/android/internal/telephony/CommandsInterface;->getCLIR(Landroid/os/Message;)V

    .line 582
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    const/4 v11, 0x2

    invoke-virtual {v4, v11}, Lcom/android/internal/telephony/PhoneBase;->setCsFallbackStatus(I)V

    goto/16 :goto_1

    .line 585
    .end local v29    # "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    :cond_1b
    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_1c

    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v4, v4, Ljava/net/UnknownHostException;

    if-eqz v4, :cond_1c

    .line 586
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v4, v10}, Lcom/android/internal/telephony/CommandsInterface;->getCLIR(Landroid/os/Message;)V

    goto/16 :goto_1

    .line 589
    :cond_1c
    new-instance v18, Lcom/android/internal/telephony/CommandException;

    .end local v18    # "arException":Ljava/lang/Throwable;
    sget-object v4, Lcom/android/internal/telephony/CommandException$Error;->SPECAIL_UT_COMMAND_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

    move-object/from16 v0, v18

    invoke-direct {v0, v4}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    .line 591
    .restart local v18    # "arException":Ljava/lang/Throwable;
    const/16 v19, 0x0

    .line 592
    goto/16 :goto_0

    .line 595
    :pswitch_9
    const/4 v4, 0x1

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v22

    .line 596
    .local v22, "mode":I
    const/4 v4, 0x2

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    .end local v10    # "resp":Landroid/os/Message;
    check-cast v10, Landroid/os/Message;

    .line 598
    .restart local v10    # "resp":Landroid/os/Message;
    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_1d

    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v4, v4, Lcom/mediatek/simservs/xcap/XcapException;

    if-eqz v4, :cond_1d

    .line 599
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v29, v0

    check-cast v29, Lcom/mediatek/simservs/xcap/XcapException;

    .line 600
    .restart local v29    # "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    invoke-virtual/range {v29 .. v29}, Lcom/mediatek/simservs/xcap/XcapException;->getHttpErrorCode()I

    move-result v4

    const/16 v11, 0x193

    if-ne v4, v11, :cond_1e

    .line 601
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move/from16 v0, v22

    invoke-interface {v4, v0, v10}, Lcom/android/internal/telephony/CommandsInterface;->setCLIR(ILandroid/os/Message;)V

    .line 602
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    const/4 v11, 0x2

    invoke-virtual {v4, v11}, Lcom/android/internal/telephony/PhoneBase;->setCsFallbackStatus(I)V

    goto/16 :goto_1

    .line 605
    .end local v29    # "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    :cond_1d
    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_1e

    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v4, v4, Ljava/net/UnknownHostException;

    if-eqz v4, :cond_1e

    .line 606
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move/from16 v0, v22

    invoke-interface {v4, v0, v10}, Lcom/android/internal/telephony/CommandsInterface;->setCLIR(ILandroid/os/Message;)V

    goto/16 :goto_1

    .line 609
    :cond_1e
    new-instance v18, Lcom/android/internal/telephony/CommandException;

    .end local v18    # "arException":Ljava/lang/Throwable;
    sget-object v4, Lcom/android/internal/telephony/CommandException$Error;->SPECAIL_UT_COMMAND_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

    move-object/from16 v0, v18

    invoke-direct {v0, v4}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    .line 611
    .restart local v18    # "arException":Ljava/lang/Throwable;
    const/16 v19, 0x0

    .line 612
    goto/16 :goto_0

    .line 615
    .end local v22    # "mode":I
    :pswitch_a
    const/4 v4, 0x1

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    .end local v10    # "resp":Landroid/os/Message;
    check-cast v10, Landroid/os/Message;

    .line 616
    .restart local v10    # "resp":Landroid/os/Message;
    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_1f

    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v4, v4, Lcom/mediatek/simservs/xcap/XcapException;

    if-eqz v4, :cond_1f

    .line 617
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v29, v0

    check-cast v29, Lcom/mediatek/simservs/xcap/XcapException;

    .line 618
    .restart local v29    # "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    invoke-virtual/range {v29 .. v29}, Lcom/mediatek/simservs/xcap/XcapException;->getHttpErrorCode()I

    move-result v4

    const/16 v11, 0x193

    if-ne v4, v11, :cond_20

    .line 619
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v4, v10}, Lcom/android/internal/telephony/CommandsInterface;->queryCLIP(Landroid/os/Message;)V

    .line 620
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    const/4 v11, 0x2

    invoke-virtual {v4, v11}, Lcom/android/internal/telephony/PhoneBase;->setCsFallbackStatus(I)V

    goto/16 :goto_1

    .line 623
    .end local v29    # "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    :cond_1f
    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_20

    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v4, v4, Ljava/net/UnknownHostException;

    if-eqz v4, :cond_20

    .line 624
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v4, v10}, Lcom/android/internal/telephony/CommandsInterface;->queryCLIP(Landroid/os/Message;)V

    goto/16 :goto_1

    .line 627
    :cond_20
    new-instance v18, Lcom/android/internal/telephony/CommandException;

    .end local v18    # "arException":Ljava/lang/Throwable;
    sget-object v4, Lcom/android/internal/telephony/CommandException$Error;->SPECAIL_UT_COMMAND_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

    move-object/from16 v0, v18

    invoke-direct {v0, v4}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    .line 629
    .restart local v18    # "arException":Ljava/lang/Throwable;
    const/16 v19, 0x0

    .line 630
    goto/16 :goto_0

    .line 633
    :pswitch_b
    const/4 v4, 0x1

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v22

    .line 634
    .restart local v22    # "mode":I
    if-nez v22, :cond_21

    const/16 v23, 0x0

    .line 635
    .local v23, "modeCs":Z
    :goto_4
    const/4 v4, 0x2

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    .end local v10    # "resp":Landroid/os/Message;
    check-cast v10, Landroid/os/Message;

    .line 636
    .restart local v10    # "resp":Landroid/os/Message;
    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_22

    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v4, v4, Lcom/mediatek/simservs/xcap/XcapException;

    if-eqz v4, :cond_22

    .line 637
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v29, v0

    check-cast v29, Lcom/mediatek/simservs/xcap/XcapException;

    .line 638
    .restart local v29    # "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    invoke-virtual/range {v29 .. v29}, Lcom/mediatek/simservs/xcap/XcapException;->getHttpErrorCode()I

    move-result v4

    const/16 v11, 0x193

    if-ne v4, v11, :cond_23

    .line 639
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move/from16 v0, v23

    invoke-interface {v4, v0, v10}, Lcom/android/internal/telephony/CommandsInterface;->setCLIP(ZLandroid/os/Message;)V

    .line 640
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    const/4 v11, 0x2

    invoke-virtual {v4, v11}, Lcom/android/internal/telephony/PhoneBase;->setCsFallbackStatus(I)V

    goto/16 :goto_1

    .line 634
    .end local v23    # "modeCs":Z
    .end local v29    # "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    :cond_21
    const/16 v23, 0x1

    goto :goto_4

    .line 643
    .restart local v23    # "modeCs":Z
    :cond_22
    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_23

    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v4, v4, Ljava/net/UnknownHostException;

    if-eqz v4, :cond_23

    .line 644
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move/from16 v0, v23

    invoke-interface {v4, v0, v10}, Lcom/android/internal/telephony/CommandsInterface;->setCLIP(ZLandroid/os/Message;)V

    goto/16 :goto_1

    .line 647
    :cond_23
    new-instance v18, Lcom/android/internal/telephony/CommandException;

    .end local v18    # "arException":Ljava/lang/Throwable;
    sget-object v4, Lcom/android/internal/telephony/CommandException$Error;->SPECAIL_UT_COMMAND_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

    move-object/from16 v0, v18

    invoke-direct {v0, v4}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    .line 649
    .restart local v18    # "arException":Ljava/lang/Throwable;
    const/16 v19, 0x0

    .line 650
    goto/16 :goto_0

    .line 653
    .end local v22    # "mode":I
    .end local v23    # "modeCs":Z
    :pswitch_c
    const/4 v4, 0x1

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    .end local v10    # "resp":Landroid/os/Message;
    check-cast v10, Landroid/os/Message;

    .line 654
    .restart local v10    # "resp":Landroid/os/Message;
    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_24

    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v4, v4, Lcom/mediatek/simservs/xcap/XcapException;

    if-eqz v4, :cond_24

    .line 655
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v29, v0

    check-cast v29, Lcom/mediatek/simservs/xcap/XcapException;

    .line 656
    .restart local v29    # "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    invoke-virtual/range {v29 .. v29}, Lcom/mediatek/simservs/xcap/XcapException;->getHttpErrorCode()I

    move-result v4

    const/16 v11, 0x193

    if-ne v4, v11, :cond_25

    .line 657
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v4, v10}, Lcom/android/internal/telephony/CommandsInterface;->getCOLR(Landroid/os/Message;)V

    .line 658
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    const/4 v11, 0x2

    invoke-virtual {v4, v11}, Lcom/android/internal/telephony/PhoneBase;->setCsFallbackStatus(I)V

    goto/16 :goto_1

    .line 661
    .end local v29    # "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    :cond_24
    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_25

    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v4, v4, Ljava/net/UnknownHostException;

    if-eqz v4, :cond_25

    .line 662
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v4, v10}, Lcom/android/internal/telephony/CommandsInterface;->getCOLR(Landroid/os/Message;)V

    goto/16 :goto_1

    .line 665
    :cond_25
    new-instance v18, Lcom/android/internal/telephony/CommandException;

    .end local v18    # "arException":Ljava/lang/Throwable;
    sget-object v4, Lcom/android/internal/telephony/CommandException$Error;->SPECAIL_UT_COMMAND_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

    move-object/from16 v0, v18

    invoke-direct {v0, v4}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    .line 667
    .restart local v18    # "arException":Ljava/lang/Throwable;
    const/16 v19, 0x0

    .line 668
    goto/16 :goto_0

    .line 671
    :pswitch_d
    new-instance v18, Lcom/android/internal/telephony/CommandException;

    .end local v18    # "arException":Ljava/lang/Throwable;
    sget-object v4, Lcom/android/internal/telephony/CommandException$Error;->SPECAIL_UT_COMMAND_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

    move-object/from16 v0, v18

    invoke-direct {v0, v4}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    .line 673
    .restart local v18    # "arException":Ljava/lang/Throwable;
    const/16 v19, 0x0

    .line 674
    goto/16 :goto_0

    .line 677
    :pswitch_e
    const/4 v4, 0x1

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    .end local v10    # "resp":Landroid/os/Message;
    check-cast v10, Landroid/os/Message;

    .line 678
    .restart local v10    # "resp":Landroid/os/Message;
    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_26

    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v4, v4, Lcom/mediatek/simservs/xcap/XcapException;

    if-eqz v4, :cond_26

    .line 679
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v29, v0

    check-cast v29, Lcom/mediatek/simservs/xcap/XcapException;

    .line 680
    .restart local v29    # "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    invoke-virtual/range {v29 .. v29}, Lcom/mediatek/simservs/xcap/XcapException;->getHttpErrorCode()I

    move-result v4

    const/16 v11, 0x193

    if-ne v4, v11, :cond_27

    .line 681
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v4, v10}, Lcom/android/internal/telephony/CommandsInterface;->getCOLP(Landroid/os/Message;)V

    .line 682
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    const/4 v11, 0x2

    invoke-virtual {v4, v11}, Lcom/android/internal/telephony/PhoneBase;->setCsFallbackStatus(I)V

    goto/16 :goto_1

    .line 685
    .end local v29    # "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    :cond_26
    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_27

    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v4, v4, Ljava/net/UnknownHostException;

    if-eqz v4, :cond_27

    .line 686
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v4, v10}, Lcom/android/internal/telephony/CommandsInterface;->getCOLP(Landroid/os/Message;)V

    goto/16 :goto_1

    .line 689
    :cond_27
    new-instance v18, Lcom/android/internal/telephony/CommandException;

    .end local v18    # "arException":Ljava/lang/Throwable;
    sget-object v4, Lcom/android/internal/telephony/CommandException$Error;->SPECAIL_UT_COMMAND_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

    move-object/from16 v0, v18

    invoke-direct {v0, v4}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    .line 691
    .restart local v18    # "arException":Ljava/lang/Throwable;
    const/16 v19, 0x0

    .line 692
    goto/16 :goto_0

    .line 695
    :pswitch_f
    new-instance v18, Lcom/android/internal/telephony/CommandException;

    .end local v18    # "arException":Ljava/lang/Throwable;
    sget-object v4, Lcom/android/internal/telephony/CommandException$Error;->SPECAIL_UT_COMMAND_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

    move-object/from16 v0, v18

    invoke-direct {v0, v4}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    .line 697
    .restart local v18    # "arException":Ljava/lang/Throwable;
    const/16 v19, 0x0

    .line 698
    goto/16 :goto_0

    .line 318
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private processSendRequest(Ljava/lang/Object;)V
    .locals 28
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 161
    const/16 v26, 0x0

    .local v26, "resp":Landroid/os/Message;
    move-object/from16 v27, p1

    .line 162
    check-cast v27, Ljava/util/ArrayList;

    .line 163
    .local v27, "ssParmList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    const/4 v1, 0x0

    move-object/from16 v0, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/Integer;

    .line 164
    .local v25, "request":Ljava/lang/Integer;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mSSRequestHandler:Lcom/android/internal/telephony/SSRequestDecisionMaker$SSRequestHandler;

    const/4 v6, 0x2

    move-object/from16 v0, v27

    invoke-virtual {v1, v6, v0}, Lcom/android/internal/telephony/SSRequestDecisionMaker$SSRequestHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 166
    .local v5, "utResp":Landroid/os/Message;
    const-string v1, "SSDecisonMaker"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "processSendRequest, request = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v25

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    invoke-virtual/range {v25 .. v25}, Ljava/lang/Integer;->intValue()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 307
    :cond_0
    :goto_0
    return-void

    .line 170
    :pswitch_0
    const/4 v1, 0x1

    move-object/from16 v0, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 171
    .local v2, "cfReason":I
    const/4 v1, 0x2

    move-object/from16 v0, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 172
    .local v3, "serviceClass":I
    const/4 v1, 0x3

    move-object/from16 v0, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 173
    .local v4, "number":Ljava/lang/String;
    const/4 v1, 0x4

    move-object/from16 v0, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    .end local v26    # "resp":Landroid/os/Message;
    check-cast v26, Landroid/os/Message;

    .line 175
    .restart local v26    # "resp":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mMMTelSSTSL:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/SSRequestDecisionMaker;->getPhoneId()I

    move-result v6

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/telephony/MMTelSSTransport;->queryCallForwardStatus(IILjava/lang/String;Landroid/os/Message;I)V

    goto :goto_0

    .line 180
    .end local v2    # "cfReason":I
    .end local v3    # "serviceClass":I
    .end local v4    # "number":Ljava/lang/String;
    :pswitch_1
    const/4 v1, 0x1

    move-object/from16 v0, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 181
    .local v7, "action":I
    const/4 v1, 0x2

    move-object/from16 v0, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 182
    .restart local v2    # "cfReason":I
    const/4 v1, 0x3

    move-object/from16 v0, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 183
    .restart local v3    # "serviceClass":I
    const/4 v1, 0x4

    move-object/from16 v0, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 184
    .restart local v4    # "number":Ljava/lang/String;
    const/4 v1, 0x5

    move-object/from16 v0, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 185
    .local v11, "timeSeconds":I
    const/4 v1, 0x6

    move-object/from16 v0, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    .end local v26    # "resp":Landroid/os/Message;
    check-cast v26, Landroid/os/Message;

    .line 187
    .restart local v26    # "resp":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mMMTelSSTSL:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/SSRequestDecisionMaker;->getPhoneId()I

    move-result v13

    move v8, v2

    move v9, v3

    move-object v10, v4

    move-object v12, v5

    invoke-virtual/range {v6 .. v13}, Lcom/android/internal/telephony/MMTelSSTransport;->setCallForward(IIILjava/lang/String;ILandroid/os/Message;I)V

    goto/16 :goto_0

    .line 192
    .end local v2    # "cfReason":I
    .end local v3    # "serviceClass":I
    .end local v4    # "number":Ljava/lang/String;
    .end local v7    # "action":I
    .end local v11    # "timeSeconds":I
    :pswitch_2
    const/4 v1, 0x1

    move-object/from16 v0, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 193
    .restart local v2    # "cfReason":I
    const/4 v1, 0x2

    move-object/from16 v0, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 194
    .restart local v3    # "serviceClass":I
    const/4 v1, 0x3

    move-object/from16 v0, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    .end local v26    # "resp":Landroid/os/Message;
    check-cast v26, Landroid/os/Message;

    .line 196
    .restart local v26    # "resp":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mMMTelSSTSL:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/SSRequestDecisionMaker;->getPhoneId()I

    move-result v6

    invoke-virtual {v1, v2, v3, v5, v6}, Lcom/android/internal/telephony/MMTelSSTransport;->queryCallForwardInTimeSlotStatus(IILandroid/os/Message;I)V

    goto/16 :goto_0

    .line 201
    .end local v2    # "cfReason":I
    .end local v3    # "serviceClass":I
    :pswitch_3
    const/4 v1, 0x1

    move-object/from16 v0, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 202
    .restart local v7    # "action":I
    const/4 v1, 0x2

    move-object/from16 v0, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 203
    .restart local v2    # "cfReason":I
    const/4 v1, 0x3

    move-object/from16 v0, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 204
    .restart local v3    # "serviceClass":I
    const/4 v1, 0x4

    move-object/from16 v0, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 205
    .restart local v4    # "number":Ljava/lang/String;
    const/4 v1, 0x5

    move-object/from16 v0, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 206
    .restart local v11    # "timeSeconds":I
    const/4 v1, 0x6

    move-object/from16 v0, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [J

    move-object v12, v1

    check-cast v12, [J

    .line 207
    .local v12, "timeSlot":[J
    const/4 v1, 0x7

    move-object/from16 v0, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    .end local v26    # "resp":Landroid/os/Message;
    check-cast v26, Landroid/os/Message;

    .line 209
    .restart local v26    # "resp":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mMMTelSSTSL:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/SSRequestDecisionMaker;->getPhoneId()I

    move-result v14

    move v8, v2

    move v9, v3

    move-object v10, v4

    move-object v13, v5

    invoke-virtual/range {v6 .. v14}, Lcom/android/internal/telephony/MMTelSSTransport;->setCallForwardInTimeSlot(IIILjava/lang/String;I[JLandroid/os/Message;I)V

    goto/16 :goto_0

    .line 214
    .end local v2    # "cfReason":I
    .end local v3    # "serviceClass":I
    .end local v4    # "number":Ljava/lang/String;
    .end local v7    # "action":I
    .end local v11    # "timeSeconds":I
    .end local v12    # "timeSlot":[J
    :pswitch_4
    const/4 v1, 0x1

    move-object/from16 v0, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 215
    .local v14, "facility":Ljava/lang/String;
    const/4 v1, 0x2

    move-object/from16 v0, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 216
    .local v15, "password":Ljava/lang/String;
    const/4 v1, 0x3

    move-object/from16 v0, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 217
    .restart local v3    # "serviceClass":I
    const/4 v1, 0x4

    move-object/from16 v0, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    .end local v26    # "resp":Landroid/os/Message;
    check-cast v26, Landroid/os/Message;

    .line 219
    .restart local v26    # "resp":Landroid/os/Message;
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/SSRequestDecisionMaker;->getPhoneId()I

    move-result v1

    invoke-static {v1}, Lcom/android/internal/telephony/MMTelSSUtils;->isOp01IccCard(I)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {v14}, Lcom/android/internal/telephony/MMTelSSUtils;->isOutgoingCallBarring(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 221
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mIsTempVolteUser:Z

    if-eqz v1, :cond_1

    .line 222
    if-eqz v26, :cond_0

    .line 223
    const/4 v1, 0x0

    new-instance v6, Lcom/android/internal/telephony/CommandException;

    sget-object v8, Lcom/android/internal/telephony/CommandException$Error;->SPECAIL_UT_COMMAND_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v6, v8}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    move-object/from16 v0, v26

    invoke-static {v0, v1, v6}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 225
    invoke-virtual/range {v26 .. v26}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 229
    :cond_1
    const-string v14, "AI"

    .line 232
    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mMMTelSSTSL:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/SSRequestDecisionMaker;->getPhoneId()I

    move-result v18

    move/from16 v16, v3

    move-object/from16 v17, v5

    invoke-virtual/range {v13 .. v18}, Lcom/android/internal/telephony/MMTelSSTransport;->queryFacilityLock(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;I)V

    goto/16 :goto_0

    .line 236
    .end local v3    # "serviceClass":I
    .end local v14    # "facility":Ljava/lang/String;
    .end local v15    # "password":Ljava/lang/String;
    :pswitch_5
    const/4 v1, 0x1

    move-object/from16 v0, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 237
    .restart local v14    # "facility":Ljava/lang/String;
    const/4 v1, 0x2

    move-object/from16 v0, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v18

    .line 238
    .local v18, "lockState":Z
    const/4 v1, 0x3

    move-object/from16 v0, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 239
    .restart local v15    # "password":Ljava/lang/String;
    const/4 v1, 0x4

    move-object/from16 v0, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 240
    .restart local v3    # "serviceClass":I
    const/4 v1, 0x5

    move-object/from16 v0, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    .end local v26    # "resp":Landroid/os/Message;
    check-cast v26, Landroid/os/Message;

    .line 241
    .restart local v26    # "resp":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mMMTelSSTSL:Lcom/android/internal/telephony/MMTelSSTransport;

    move-object/from16 v16, v0

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/SSRequestDecisionMaker;->getPhoneId()I

    move-result v22

    move-object/from16 v17, v14

    move-object/from16 v19, v15

    move/from16 v20, v3

    move-object/from16 v21, v5

    invoke-virtual/range {v16 .. v22}, Lcom/android/internal/telephony/MMTelSSTransport;->setFacilityLock(Ljava/lang/String;ZLjava/lang/String;ILandroid/os/Message;I)V

    goto/16 :goto_0

    .line 246
    .end local v3    # "serviceClass":I
    .end local v14    # "facility":Ljava/lang/String;
    .end local v15    # "password":Ljava/lang/String;
    .end local v18    # "lockState":Z
    :pswitch_6
    const/4 v1, 0x1

    move-object/from16 v0, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 247
    .restart local v3    # "serviceClass":I
    const/4 v1, 0x2

    move-object/from16 v0, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    .end local v26    # "resp":Landroid/os/Message;
    check-cast v26, Landroid/os/Message;

    .line 248
    .restart local v26    # "resp":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mMMTelSSTSL:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/SSRequestDecisionMaker;->getPhoneId()I

    move-result v6

    invoke-virtual {v1, v3, v5, v6}, Lcom/android/internal/telephony/MMTelSSTransport;->queryCallWaiting(ILandroid/os/Message;I)V

    goto/16 :goto_0

    .line 252
    .end local v3    # "serviceClass":I
    :pswitch_7
    const/4 v1, 0x1

    move-object/from16 v0, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v23

    .line 253
    .local v23, "enable":Z
    const/4 v1, 0x2

    move-object/from16 v0, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 254
    .restart local v3    # "serviceClass":I
    const/4 v1, 0x3

    move-object/from16 v0, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    .end local v26    # "resp":Landroid/os/Message;
    check-cast v26, Landroid/os/Message;

    .line 257
    .restart local v26    # "resp":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mMMTelSSTSL:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/SSRequestDecisionMaker;->getPhoneId()I

    move-result v6

    invoke-virtual {v1, v3, v5, v6}, Lcom/android/internal/telephony/MMTelSSTransport;->queryCallWaiting(ILandroid/os/Message;I)V

    goto/16 :goto_0

    .line 261
    .end local v3    # "serviceClass":I
    .end local v23    # "enable":Z
    :pswitch_8
    const/4 v1, 0x1

    move-object/from16 v0, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    .end local v26    # "resp":Landroid/os/Message;
    check-cast v26, Landroid/os/Message;

    .line 262
    .restart local v26    # "resp":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mMMTelSSTSL:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/SSRequestDecisionMaker;->getPhoneId()I

    move-result v6

    invoke-virtual {v1, v5, v6}, Lcom/android/internal/telephony/MMTelSSTransport;->getCLIR(Landroid/os/Message;I)V

    goto/16 :goto_0

    .line 266
    :pswitch_9
    const/4 v1, 0x1

    move-object/from16 v0, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v24

    .line 267
    .local v24, "mode":I
    const/4 v1, 0x2

    move-object/from16 v0, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    .end local v26    # "resp":Landroid/os/Message;
    check-cast v26, Landroid/os/Message;

    .line 268
    .restart local v26    # "resp":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mMMTelSSTSL:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/SSRequestDecisionMaker;->getPhoneId()I

    move-result v6

    move/from16 v0, v24

    invoke-virtual {v1, v0, v5, v6}, Lcom/android/internal/telephony/MMTelSSTransport;->setCLIR(ILandroid/os/Message;I)V

    goto/16 :goto_0

    .line 272
    .end local v24    # "mode":I
    :pswitch_a
    const/4 v1, 0x1

    move-object/from16 v0, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    .end local v26    # "resp":Landroid/os/Message;
    check-cast v26, Landroid/os/Message;

    .line 273
    .restart local v26    # "resp":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mMMTelSSTSL:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/SSRequestDecisionMaker;->getPhoneId()I

    move-result v6

    invoke-virtual {v1, v5, v6}, Lcom/android/internal/telephony/MMTelSSTransport;->queryCLIP(Landroid/os/Message;I)V

    goto/16 :goto_0

    .line 277
    :pswitch_b
    const/4 v1, 0x1

    move-object/from16 v0, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v24

    .line 278
    .restart local v24    # "mode":I
    const/4 v1, 0x2

    move-object/from16 v0, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    .end local v26    # "resp":Landroid/os/Message;
    check-cast v26, Landroid/os/Message;

    .line 279
    .restart local v26    # "resp":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mMMTelSSTSL:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/SSRequestDecisionMaker;->getPhoneId()I

    move-result v6

    move/from16 v0, v24

    invoke-virtual {v1, v0, v5, v6}, Lcom/android/internal/telephony/MMTelSSTransport;->setCLIP(ILandroid/os/Message;I)V

    goto/16 :goto_0

    .line 283
    .end local v24    # "mode":I
    :pswitch_c
    const/4 v1, 0x1

    move-object/from16 v0, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    .end local v26    # "resp":Landroid/os/Message;
    check-cast v26, Landroid/os/Message;

    .line 284
    .restart local v26    # "resp":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mMMTelSSTSL:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/SSRequestDecisionMaker;->getPhoneId()I

    move-result v6

    invoke-virtual {v1, v5, v6}, Lcom/android/internal/telephony/MMTelSSTransport;->getCOLR(Landroid/os/Message;I)V

    goto/16 :goto_0

    .line 288
    :pswitch_d
    const/4 v1, 0x1

    move-object/from16 v0, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v24

    .line 289
    .restart local v24    # "mode":I
    const/4 v1, 0x2

    move-object/from16 v0, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    .end local v26    # "resp":Landroid/os/Message;
    check-cast v26, Landroid/os/Message;

    .line 290
    .restart local v26    # "resp":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mMMTelSSTSL:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/SSRequestDecisionMaker;->getPhoneId()I

    move-result v6

    move/from16 v0, v24

    invoke-virtual {v1, v0, v5, v6}, Lcom/android/internal/telephony/MMTelSSTransport;->setCOLR(ILandroid/os/Message;I)V

    goto/16 :goto_0

    .line 294
    .end local v24    # "mode":I
    :pswitch_e
    const/4 v1, 0x1

    move-object/from16 v0, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    .end local v26    # "resp":Landroid/os/Message;
    check-cast v26, Landroid/os/Message;

    .line 295
    .restart local v26    # "resp":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mMMTelSSTSL:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/SSRequestDecisionMaker;->getPhoneId()I

    move-result v6

    invoke-virtual {v1, v5, v6}, Lcom/android/internal/telephony/MMTelSSTransport;->getCOLP(Landroid/os/Message;I)V

    goto/16 :goto_0

    .line 299
    :pswitch_f
    const/4 v1, 0x1

    move-object/from16 v0, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v24

    .line 300
    .restart local v24    # "mode":I
    const/4 v1, 0x2

    move-object/from16 v0, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    .end local v26    # "resp":Landroid/os/Message;
    check-cast v26, Landroid/os/Message;

    .line 301
    .restart local v26    # "resp":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mMMTelSSTSL:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/SSRequestDecisionMaker;->getPhoneId()I

    move-result v6

    move/from16 v0, v24

    invoke-virtual {v1, v0, v5, v6}, Lcom/android/internal/telephony/MMTelSSTransport;->setCOLP(ILandroid/os/Message;I)V

    goto/16 :goto_0

    .line 168
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public getCLIP(Landroid/os/Message;)V
    .locals 3
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 821
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 822
    .local v0, "ssParmList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x9

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 823
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 824
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SSRequestDecisionMaker;->send(Ljava/util/ArrayList;)V

    .line 825
    return-void
.end method

.method public getCLIR(Landroid/os/Message;)V
    .locals 3
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 806
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 807
    .local v0, "ssParmList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    new-instance v1, Ljava/lang/Integer;

    const/4 v2, 0x7

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 808
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 809
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SSRequestDecisionMaker;->send(Ljava/util/ArrayList;)V

    .line 810
    return-void
.end method

.method public getCOLP(Landroid/os/Message;)V
    .locals 3
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 851
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 852
    .local v0, "ssParmList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0xd

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 853
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 854
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SSRequestDecisionMaker;->send(Ljava/util/ArrayList;)V

    .line 855
    return-void
.end method

.method public getCOLR(Landroid/os/Message;)V
    .locals 3
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 836
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 837
    .local v0, "ssParmList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0xb

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 838
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 839
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SSRequestDecisionMaker;->send(Ljava/util/ArrayList;)V

    .line 840
    return-void
.end method

.method public queryCallForwardInTimeSlotStatus(IILandroid/os/Message;)V
    .locals 3
    .param p1, "cfReason"    # I
    .param p2, "serviceClass"    # I
    .param p3, "response"    # Landroid/os/Message;

    .prologue
    .line 743
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 744
    .local v0, "ssParmList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0xf

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 745
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 746
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 747
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 748
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SSRequestDecisionMaker;->send(Ljava/util/ArrayList;)V

    .line 749
    return-void
.end method

.method public queryCallForwardStatus(IILjava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "cfReason"    # I
    .param p2, "serviceClass"    # I
    .param p3, "number"    # Ljava/lang/String;
    .param p4, "response"    # Landroid/os/Message;

    .prologue
    .line 718
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 719
    .local v0, "ssParmList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    new-instance v1, Ljava/lang/Integer;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 720
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 721
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 722
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 723
    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 724
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SSRequestDecisionMaker;->send(Ljava/util/ArrayList;)V

    .line 725
    return-void
.end method

.method public queryCallWaiting(ILandroid/os/Message;)V
    .locals 3
    .param p1, "serviceClass"    # I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 789
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 790
    .local v0, "ssParmList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    new-instance v1, Ljava/lang/Integer;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 791
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 792
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 793
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SSRequestDecisionMaker;->send(Ljava/util/ArrayList;)V

    .line 794
    return-void
.end method

.method public queryFacilityLock(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V
    .locals 3
    .param p1, "facility"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "serviceClass"    # I
    .param p4, "response"    # Landroid/os/Message;

    .prologue
    .line 767
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 768
    .local v0, "ssParmList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    new-instance v1, Ljava/lang/Integer;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 769
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 770
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 771
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 772
    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 773
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SSRequestDecisionMaker;->send(Ljava/util/ArrayList;)V

    .line 774
    return-void
.end method

.method send(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 867
    .local p1, "ssParmList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    iget-object v1, p0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mSSRequestHandler:Lcom/android/internal/telephony/SSRequestDecisionMaker$SSRequestHandler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p1}, Lcom/android/internal/telephony/SSRequestDecisionMaker$SSRequestHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 868
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 869
    return-void
.end method

.method public setCLIP(ILandroid/os/Message;)V
    .locals 3
    .param p1, "clipMode"    # I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 828
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 829
    .local v0, "ssParmList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0xa

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 830
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 831
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 832
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SSRequestDecisionMaker;->send(Ljava/util/ArrayList;)V

    .line 833
    return-void
.end method

.method public setCLIR(ILandroid/os/Message;)V
    .locals 3
    .param p1, "clirMode"    # I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 813
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 814
    .local v0, "ssParmList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x8

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 815
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 816
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 817
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SSRequestDecisionMaker;->send(Ljava/util/ArrayList;)V

    .line 818
    return-void
.end method

.method public setCOLP(ILandroid/os/Message;)V
    .locals 3
    .param p1, "colpMode"    # I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 858
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 859
    .local v0, "ssParmList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0xe

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 860
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 861
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 862
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SSRequestDecisionMaker;->send(Ljava/util/ArrayList;)V

    .line 863
    return-void
.end method

.method public setCOLR(ILandroid/os/Message;)V
    .locals 3
    .param p1, "colrMode"    # I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 843
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 844
    .local v0, "ssParmList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0xc

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 845
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 846
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 847
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SSRequestDecisionMaker;->send(Ljava/util/ArrayList;)V

    .line 848
    return-void
.end method

.method public setCallForward(IIILjava/lang/String;ILandroid/os/Message;)V
    .locals 3
    .param p1, "action"    # I
    .param p2, "cfReason"    # I
    .param p3, "serviceClass"    # I
    .param p4, "number"    # Ljava/lang/String;
    .param p5, "timeSeconds"    # I
    .param p6, "response"    # Landroid/os/Message;

    .prologue
    .line 730
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 731
    .local v0, "ssParmList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    new-instance v1, Ljava/lang/Integer;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 732
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 733
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 734
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 735
    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 736
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p5}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 737
    invoke-virtual {v0, p6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 738
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SSRequestDecisionMaker;->send(Ljava/util/ArrayList;)V

    .line 739
    return-void
.end method

.method public setCallForwardInTimeSlot(IIILjava/lang/String;I[JLandroid/os/Message;)V
    .locals 3
    .param p1, "action"    # I
    .param p2, "cfReason"    # I
    .param p3, "serviceClass"    # I
    .param p4, "number"    # Ljava/lang/String;
    .param p5, "timeSeconds"    # I
    .param p6, "timeSlot"    # [J
    .param p7, "response"    # Landroid/os/Message;

    .prologue
    .line 753
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 754
    .local v0, "ssParmList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x10

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 755
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 756
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 757
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 758
    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 759
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p5}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 760
    invoke-virtual {v0, p6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 761
    invoke-virtual {v0, p7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 762
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SSRequestDecisionMaker;->send(Ljava/util/ArrayList;)V

    .line 763
    return-void
.end method

.method public setCallWaiting(ZILandroid/os/Message;)V
    .locals 3
    .param p1, "enable"    # Z
    .param p2, "serviceClass"    # I
    .param p3, "response"    # Landroid/os/Message;

    .prologue
    .line 797
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 798
    .local v0, "ssParmList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    new-instance v1, Ljava/lang/Integer;

    const/4 v2, 0x6

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 799
    new-instance v1, Ljava/lang/Boolean;

    invoke-direct {v1, p1}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 800
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 801
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 802
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SSRequestDecisionMaker;->send(Ljava/util/ArrayList;)V

    .line 803
    return-void
.end method

.method public setFacilityLock(Ljava/lang/String;ZLjava/lang/String;ILandroid/os/Message;)V
    .locals 3
    .param p1, "facility"    # Ljava/lang/String;
    .param p2, "lockState"    # Z
    .param p3, "password"    # Ljava/lang/String;
    .param p4, "serviceClass"    # I
    .param p5, "response"    # Landroid/os/Message;

    .prologue
    .line 778
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 779
    .local v0, "ssParmList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    new-instance v1, Ljava/lang/Integer;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 780
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 781
    new-instance v1, Ljava/lang/Boolean;

    invoke-direct {v1, p2}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 782
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 783
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 784
    invoke-virtual {v0, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 785
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SSRequestDecisionMaker;->send(Ljava/util/ArrayList;)V

    .line 786
    return-void
.end method
