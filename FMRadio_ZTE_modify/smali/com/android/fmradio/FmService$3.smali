.class Lcom/android/fmradio/FmService$3;
.super Ljava/lang/Thread;
.source "FmService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fmradio/FmService;->startRdsThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/fmradio/FmService;


# direct methods
.method constructor <init>(Lcom/android/fmradio/FmService;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/fmradio/FmService$3;->this$0:Lcom/android/fmradio/FmService;

    .line 2076
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/android/fmradio/FmService$3;)Lcom/android/fmradio/FmService;
    .locals 1

    .prologue
    .line 2076
    iget-object v0, p0, Lcom/android/fmradio/FmService$3;->this$0:Lcom/android/fmradio/FmService;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    const/4 v14, 0x2

    const/4 v13, 0x1

    .line 2079
    :goto_0
    iget-object v10, p0, Lcom/android/fmradio/FmService$3;->this$0:Lcom/android/fmradio/FmService;

    # getter for: Lcom/android/fmradio/FmService;->mIsRdsThreadExit:Z
    invoke-static {v10}, Lcom/android/fmradio/FmService;->access$68(Lcom/android/fmradio/FmService;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 2174
    return-void

    .line 2083
    :cond_0
    invoke-static {}, Lcom/android/fmradio/FmNative;->readRds()S

    move-result v5

    .line 2084
    .local v5, "iRdsEvents":I
    if-eqz v5, :cond_1

    .line 2085
    const-string v10, "FmService"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "startRdsThread, is rds events: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2088
    :cond_1
    const/16 v10, 0x8

    and-int/lit8 v11, v5, 0x8

    if-ne v10, v11, :cond_4

    .line 2089
    invoke-static {}, Lcom/android/fmradio/FmNative;->getPs()[B

    move-result-object v1

    .line 2090
    .local v1, "bytePS":[B
    if-eqz v1, :cond_4

    .line 2091
    new-instance v10, Ljava/lang/String;

    invoke-direct {v10, v1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 2092
    .local v7, "ps":Ljava/lang/String;
    iget-object v10, p0, Lcom/android/fmradio/FmService$3;->this$0:Lcom/android/fmradio/FmService;

    # getter for: Lcom/android/fmradio/FmService;->mPsString:Ljava/lang/String;
    invoke-static {v10}, Lcom/android/fmradio/FmService;->access$69(Lcom/android/fmradio/FmService;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 2093
    # getter for: Lcom/android/fmradio/FmService;->sChannelListListener:Lcom/android/fmradio/FmService$OnChannelListListener;
    invoke-static {}, Lcom/android/fmradio/FmService;->access$19()Lcom/android/fmradio/FmService$OnChannelListListener;

    move-result-object v10

    if-eqz v10, :cond_2

    .line 2094
    # getter for: Lcom/android/fmradio/FmService;->sChannelListListener:Lcom/android/fmradio/FmService$OnChannelListListener;
    invoke-static {}, Lcom/android/fmradio/FmService;->access$19()Lcom/android/fmradio/FmService$OnChannelListListener;

    move-result-object v10

    invoke-interface {v10}, Lcom/android/fmradio/FmService$OnChannelListListener;->onTuneFinished()V

    .line 2097
    :cond_2
    new-instance v6, Landroid/os/Handler;

    iget-object v10, p0, Lcom/android/fmradio/FmService$3;->this$0:Lcom/android/fmradio/FmService;

    invoke-virtual {v10}, Lcom/android/fmradio/FmService;->getMainLooper()Landroid/os/Looper;

    move-result-object v10

    invoke-direct {v6, v10}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2098
    .local v6, "mainHandler":Landroid/os/Handler;
    new-instance v10, Lcom/android/fmradio/FmService$3$1;

    invoke-direct {v10, p0}, Lcom/android/fmradio/FmService$3$1;-><init>(Lcom/android/fmradio/FmService$3;)V

    invoke-virtual {v6, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2105
    .end local v6    # "mainHandler":Landroid/os/Handler;
    :cond_3
    const/4 v9, 0x0

    .line 2106
    .local v9, "values":Landroid/content/ContentValues;
    iget-object v10, p0, Lcom/android/fmradio/FmService$3;->this$0:Lcom/android/fmradio/FmService;

    # getter for: Lcom/android/fmradio/FmService;->mContext:Landroid/content/Context;
    invoke-static {v10}, Lcom/android/fmradio/FmService;->access$14(Lcom/android/fmradio/FmService;)Landroid/content/Context;

    move-result-object v10

    iget-object v11, p0, Lcom/android/fmradio/FmService$3;->this$0:Lcom/android/fmradio/FmService;

    # getter for: Lcom/android/fmradio/FmService;->mCurrentStation:I
    invoke-static {v11}, Lcom/android/fmradio/FmService;->access$12(Lcom/android/fmradio/FmService;)I

    move-result v11

    invoke-static {v10, v11}, Lcom/android/fmradio/FmStation;->isStationExist(Landroid/content/Context;I)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 2107
    new-instance v9, Landroid/content/ContentValues;

    .end local v9    # "values":Landroid/content/ContentValues;
    invoke-direct {v9, v13}, Landroid/content/ContentValues;-><init>(I)V

    .line 2108
    .restart local v9    # "values":Landroid/content/ContentValues;
    const-string v10, "program_service"

    invoke-virtual {v9, v10, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2109
    iget-object v10, p0, Lcom/android/fmradio/FmService$3;->this$0:Lcom/android/fmradio/FmService;

    # getter for: Lcom/android/fmradio/FmService;->mContext:Landroid/content/Context;
    invoke-static {v10}, Lcom/android/fmradio/FmService;->access$14(Lcom/android/fmradio/FmService;)Landroid/content/Context;

    move-result-object v10

    iget-object v11, p0, Lcom/android/fmradio/FmService$3;->this$0:Lcom/android/fmradio/FmService;

    # getter for: Lcom/android/fmradio/FmService;->mCurrentStation:I
    invoke-static {v11}, Lcom/android/fmradio/FmService;->access$12(Lcom/android/fmradio/FmService;)I

    move-result v11

    invoke-static {v10, v11, v9}, Lcom/android/fmradio/FmStation;->updateStationToDb(Landroid/content/Context;ILandroid/content/ContentValues;)V

    .line 2116
    :goto_1
    iget-object v10, p0, Lcom/android/fmradio/FmService$3;->this$0:Lcom/android/fmradio/FmService;

    # invokes: Lcom/android/fmradio/FmService;->setPs(Ljava/lang/String;)V
    invoke-static {v10, v7}, Lcom/android/fmradio/FmService;->access$70(Lcom/android/fmradio/FmService;Ljava/lang/String;)V

    .line 2120
    .end local v1    # "bytePS":[B
    .end local v7    # "ps":Ljava/lang/String;
    .end local v9    # "values":Landroid/content/ContentValues;
    :cond_4
    const/16 v10, 0x40

    and-int/lit8 v11, v5, 0x40

    if-ne v10, v11, :cond_6

    .line 2121
    invoke-static {}, Lcom/android/fmradio/FmNative;->getLrText()[B

    move-result-object v0

    .line 2122
    .local v0, "byteLRText":[B
    if-eqz v0, :cond_6

    .line 2123
    new-instance v10, Ljava/lang/String;

    invoke-direct {v10, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    .line 2124
    .local v8, "rds":Ljava/lang/String;
    iget-object v10, p0, Lcom/android/fmradio/FmService$3;->this$0:Lcom/android/fmradio/FmService;

    # getter for: Lcom/android/fmradio/FmService;->mRtTextString:Ljava/lang/String;
    invoke-static {v10}, Lcom/android/fmradio/FmService;->access$71(Lcom/android/fmradio/FmService;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_5

    .line 2125
    iget-object v10, p0, Lcom/android/fmradio/FmService$3;->this$0:Lcom/android/fmradio/FmService;

    invoke-virtual {v10}, Lcom/android/fmradio/FmService;->updatePlayingNotification()V

    .line 2127
    :cond_5
    iget-object v10, p0, Lcom/android/fmradio/FmService$3;->this$0:Lcom/android/fmradio/FmService;

    # invokes: Lcom/android/fmradio/FmService;->setLRText(Ljava/lang/String;)V
    invoke-static {v10, v8}, Lcom/android/fmradio/FmService;->access$72(Lcom/android/fmradio/FmService;Ljava/lang/String;)V

    .line 2128
    const/4 v9, 0x0

    .line 2129
    .restart local v9    # "values":Landroid/content/ContentValues;
    iget-object v10, p0, Lcom/android/fmradio/FmService$3;->this$0:Lcom/android/fmradio/FmService;

    # getter for: Lcom/android/fmradio/FmService;->mContext:Landroid/content/Context;
    invoke-static {v10}, Lcom/android/fmradio/FmService;->access$14(Lcom/android/fmradio/FmService;)Landroid/content/Context;

    move-result-object v10

    iget-object v11, p0, Lcom/android/fmradio/FmService$3;->this$0:Lcom/android/fmradio/FmService;

    # getter for: Lcom/android/fmradio/FmService;->mCurrentStation:I
    invoke-static {v11}, Lcom/android/fmradio/FmService;->access$12(Lcom/android/fmradio/FmService;)I

    move-result v11

    invoke-static {v10, v11}, Lcom/android/fmradio/FmStation;->isStationExist(Landroid/content/Context;I)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 2130
    new-instance v9, Landroid/content/ContentValues;

    .end local v9    # "values":Landroid/content/ContentValues;
    invoke-direct {v9, v13}, Landroid/content/ContentValues;-><init>(I)V

    .line 2131
    .restart local v9    # "values":Landroid/content/ContentValues;
    const-string v10, "radio_text"

    invoke-virtual {v9, v10, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2132
    iget-object v10, p0, Lcom/android/fmradio/FmService$3;->this$0:Lcom/android/fmradio/FmService;

    # getter for: Lcom/android/fmradio/FmService;->mContext:Landroid/content/Context;
    invoke-static {v10}, Lcom/android/fmradio/FmService;->access$14(Lcom/android/fmradio/FmService;)Landroid/content/Context;

    move-result-object v10

    iget-object v11, p0, Lcom/android/fmradio/FmService$3;->this$0:Lcom/android/fmradio/FmService;

    # getter for: Lcom/android/fmradio/FmService;->mCurrentStation:I
    invoke-static {v11}, Lcom/android/fmradio/FmService;->access$12(Lcom/android/fmradio/FmService;)I

    move-result v11

    invoke-static {v10, v11, v9}, Lcom/android/fmradio/FmStation;->updateStationToDb(Landroid/content/Context;ILandroid/content/ContentValues;)V

    .line 2142
    .end local v0    # "byteLRText":[B
    .end local v8    # "rds":Ljava/lang/String;
    .end local v9    # "values":Landroid/content/ContentValues;
    :cond_6
    :goto_2
    const/16 v10, 0x80

    and-int/lit16 v11, v5, 0x80

    if-ne v10, v11, :cond_8

    .line 2146
    iget-object v10, p0, Lcom/android/fmradio/FmService$3;->this$0:Lcom/android/fmradio/FmService;

    # getter for: Lcom/android/fmradio/FmService;->mIsScanning:Z
    invoke-static {v10}, Lcom/android/fmradio/FmService;->access$18(Lcom/android/fmradio/FmService;)Z

    move-result v10

    if-nez v10, :cond_7

    iget-object v10, p0, Lcom/android/fmradio/FmService$3;->this$0:Lcom/android/fmradio/FmService;

    # getter for: Lcom/android/fmradio/FmService;->mIsSeeking:Z
    invoke-static {v10}, Lcom/android/fmradio/FmService;->access$73(Lcom/android/fmradio/FmService;)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 2147
    :cond_7
    const-string v10, "FmService"

    const-string v11, "startRdsThread, seek or scan going, no need to tune here"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2168
    :cond_8
    :goto_3
    const/16 v3, 0x1f4

    .line 2169
    .local v3, "hundredMillisecond":I
    const-wide/16 v10, 0x1f4

    :try_start_0
    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 2170
    :catch_0
    move-exception v2

    .line 2171
    .local v2, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_0

    .line 2111
    .end local v2    # "e":Ljava/lang/InterruptedException;
    .end local v3    # "hundredMillisecond":I
    .restart local v1    # "bytePS":[B
    .restart local v7    # "ps":Ljava/lang/String;
    .restart local v9    # "values":Landroid/content/ContentValues;
    :cond_9
    new-instance v9, Landroid/content/ContentValues;

    .end local v9    # "values":Landroid/content/ContentValues;
    invoke-direct {v9, v14}, Landroid/content/ContentValues;-><init>(I)V

    .line 2112
    .restart local v9    # "values":Landroid/content/ContentValues;
    const-string v10, "frequency"

    iget-object v11, p0, Lcom/android/fmradio/FmService$3;->this$0:Lcom/android/fmradio/FmService;

    # getter for: Lcom/android/fmradio/FmService;->mCurrentStation:I
    invoke-static {v11}, Lcom/android/fmradio/FmService;->access$12(Lcom/android/fmradio/FmService;)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2113
    const-string v10, "program_service"

    invoke-virtual {v9, v10, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2114
    iget-object v10, p0, Lcom/android/fmradio/FmService$3;->this$0:Lcom/android/fmradio/FmService;

    # getter for: Lcom/android/fmradio/FmService;->mContext:Landroid/content/Context;
    invoke-static {v10}, Lcom/android/fmradio/FmService;->access$14(Lcom/android/fmradio/FmService;)Landroid/content/Context;

    move-result-object v10

    invoke-static {v10, v9}, Lcom/android/fmradio/FmStation;->insertStationToDb(Landroid/content/Context;Landroid/content/ContentValues;)V

    goto/16 :goto_1

    .line 2134
    .end local v1    # "bytePS":[B
    .end local v7    # "ps":Ljava/lang/String;
    .restart local v0    # "byteLRText":[B
    .restart local v8    # "rds":Ljava/lang/String;
    :cond_a
    new-instance v9, Landroid/content/ContentValues;

    .end local v9    # "values":Landroid/content/ContentValues;
    invoke-direct {v9, v14}, Landroid/content/ContentValues;-><init>(I)V

    .line 2135
    .restart local v9    # "values":Landroid/content/ContentValues;
    const-string v10, "frequency"

    iget-object v11, p0, Lcom/android/fmradio/FmService$3;->this$0:Lcom/android/fmradio/FmService;

    # getter for: Lcom/android/fmradio/FmService;->mCurrentStation:I
    invoke-static {v11}, Lcom/android/fmradio/FmService;->access$12(Lcom/android/fmradio/FmService;)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2136
    const-string v10, "radio_text"

    invoke-virtual {v9, v10, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2137
    iget-object v10, p0, Lcom/android/fmradio/FmService$3;->this$0:Lcom/android/fmradio/FmService;

    # getter for: Lcom/android/fmradio/FmService;->mContext:Landroid/content/Context;
    invoke-static {v10}, Lcom/android/fmradio/FmService;->access$14(Lcom/android/fmradio/FmService;)Landroid/content/Context;

    move-result-object v10

    invoke-static {v10, v9}, Lcom/android/fmradio/FmStation;->insertStationToDb(Landroid/content/Context;Landroid/content/ContentValues;)V

    goto :goto_2

    .line 2148
    .end local v0    # "byteLRText":[B
    .end local v8    # "rds":Ljava/lang/String;
    .end local v9    # "values":Landroid/content/ContentValues;
    :cond_b
    iget-object v10, p0, Lcom/android/fmradio/FmService$3;->this$0:Lcom/android/fmradio/FmService;

    # getter for: Lcom/android/fmradio/FmService;->mPowerStatus:I
    invoke-static {v10}, Lcom/android/fmradio/FmService;->access$16(Lcom/android/fmradio/FmService;)I

    move-result v10

    sget v11, Lcom/android/fmradio/FmService;->POWER_DOWN:I

    if-ne v10, v11, :cond_c

    .line 2149
    const-string v10, "FmService"

    const-string v11, "startRdsThread, fm is power down, do nothing."

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 2151
    :cond_c
    invoke-static {}, Lcom/android/fmradio/FmNative;->activeAf()S

    move-result v4

    .line 2152
    .local v4, "iFreq":I
    invoke-static {v4}, Lcom/android/fmradio/FmUtils;->isValidStation(I)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 2155
    iget-object v10, p0, Lcom/android/fmradio/FmService$3;->this$0:Lcom/android/fmradio/FmService;

    # getter for: Lcom/android/fmradio/FmService;->mCurrentStation:I
    invoke-static {v10}, Lcom/android/fmradio/FmService;->access$12(Lcom/android/fmradio/FmService;)I

    move-result v10

    if-eq v10, v4, :cond_8

    .line 2156
    iget-object v10, p0, Lcom/android/fmradio/FmService$3;->this$0:Lcom/android/fmradio/FmService;

    # getter for: Lcom/android/fmradio/FmService;->mIsScanning:Z
    invoke-static {v10}, Lcom/android/fmradio/FmService;->access$18(Lcom/android/fmradio/FmService;)Z

    move-result v10

    if-nez v10, :cond_8

    iget-object v10, p0, Lcom/android/fmradio/FmService$3;->this$0:Lcom/android/fmradio/FmService;

    # getter for: Lcom/android/fmradio/FmService;->mIsSeeking:Z
    invoke-static {v10}, Lcom/android/fmradio/FmService;->access$73(Lcom/android/fmradio/FmService;)Z

    move-result v10

    if-nez v10, :cond_8

    .line 2157
    const-string v10, "FmService"

    const-string v11, "startRdsThread, seek or scan not going,need to tune here"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2159
    iget-object v10, p0, Lcom/android/fmradio/FmService$3;->this$0:Lcom/android/fmradio/FmService;

    invoke-static {v4}, Lcom/android/fmradio/FmUtils;->computeFrequency(I)F

    move-result v11

    invoke-virtual {v10, v11}, Lcom/android/fmradio/FmService;->tuneStationAsync(F)V

    goto/16 :goto_3
.end method
