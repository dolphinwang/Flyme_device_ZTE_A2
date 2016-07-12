.class Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;
.super Landroid/os/Handler;
.source "MMTelSSTransport.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/MMTelSSTransport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MMTelSSTransmitter"
.end annotation


# instance fields
.field dataLength:[B

.field final synthetic this$0:Lcom/android/internal/telephony/MMTelSSTransport;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/MMTelSSTransport;Landroid/os/Looper;)V
    .locals 1
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 582
    iput-object p1, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    .line 583
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 587
    const/4 v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->dataLength:[B

    .line 584
    return-void
.end method


# virtual methods
.method public containSpecificMedia(Ljava/util/List;I)Z
    .locals 6
    .param p2, "serviceClass"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)Z"
        }
    .end annotation

    .prologue
    .local p1, "mediaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x1

    .line 598
    if-nez p1, :cond_1

    .line 612
    :cond_0
    :goto_0
    return v2

    .line 599
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_0

    .line 603
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_4

    .line 604
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 605
    .local v1, "mediaType":Ljava/lang/String;
    const-string v3, "MMTelSS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mediaType="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",serviceClass="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    const-string v3, "audio"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    if-eq p2, v2, :cond_0

    if-eqz p2, :cond_0

    .line 608
    :cond_2
    const-string v3, "video"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/16 v3, 0x200

    if-eq p2, v3, :cond_0

    if-eqz p2, :cond_0

    .line 603
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 612
    .end local v1    # "mediaType":Ljava/lang/String;
    :cond_4
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public convertToLocalTime(Ljava/lang/String;)[J
    .locals 9
    .param p1, "timeSlotString"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x2

    .line 4683
    const/4 v5, 0x0

    .line 4684
    .local v5, "timeSlot":[J
    if-eqz p1, :cond_0

    .line 4685
    const-string v6, ","

    invoke-virtual {p1, v6, v8}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v4

    .line 4686
    .local v4, "timeArray":[Ljava/lang/String;
    array-length v6, v4

    if-ne v6, v8, :cond_0

    .line 4687
    new-array v5, v8, [J

    .line 4688
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v8, :cond_0

    .line 4689
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v6, "HH:mm"

    invoke-direct {v1, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 4690
    .local v1, "dateFormat":Ljava/text/SimpleDateFormat;
    const-string v6, "GMT+8"

    invoke-static {v6}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 4692
    :try_start_0
    aget-object v6, v4, v3

    invoke-virtual {v1, v6}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 4693
    .local v0, "date":Ljava/util/Date;
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    aput-wide v6, v5, v3
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4688
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4694
    .end local v0    # "date":Ljava/util/Date;
    :catch_0
    move-exception v2

    .line 4695
    .local v2, "e":Ljava/text/ParseException;
    invoke-virtual {v2}, Ljava/text/ParseException;->printStackTrace()V

    .line 4696
    const/4 v6, 0x0

    .line 4701
    .end local v1    # "dateFormat":Ljava/text/SimpleDateFormat;
    .end local v2    # "e":Ljava/text/ParseException;
    .end local v3    # "i":I
    .end local v4    # "timeArray":[Ljava/lang/String;
    :goto_1
    return-object v6

    :cond_0
    move-object v6, v5

    goto :goto_1
.end method

.method public convertToSeverTime([J)Ljava/lang/String;
    .locals 6
    .param p1, "timeSlot"    # [J

    .prologue
    .line 4705
    const/4 v3, 0x0

    .line 4706
    .local v3, "timeSlotString":Ljava/lang/String;
    if-eqz p1, :cond_0

    array-length v4, p1

    const/4 v5, 0x2

    if-eq v4, v5, :cond_1

    .line 4707
    :cond_0
    const/4 v4, 0x0

    .line 4719
    :goto_0
    return-object v4

    .line 4709
    :cond_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v4, p1

    if-ge v2, v4, :cond_3

    .line 4710
    new-instance v0, Ljava/util/Date;

    aget-wide v4, p1, v2

    invoke-direct {v0, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 4711
    .local v0, "date":Ljava/util/Date;
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v4, "HH:mm"

    invoke-direct {v1, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 4712
    .local v1, "dateFormat":Ljava/text/SimpleDateFormat;
    const-string v4, "GMT+8"

    invoke-static {v4}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 4713
    if-nez v2, :cond_2

    .line 4714
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .line 4709
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 4716
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .end local v0    # "date":Ljava/util/Date;
    .end local v1    # "dateFormat":Ljava/text/SimpleDateFormat;
    :cond_3
    move-object v4, v3

    .line 4719
    goto :goto_0
.end method

.method public copyOldRuleToNewRuleSet(Lcom/mediatek/simservs/client/policy/Rule;Lcom/mediatek/simservs/client/policy/RuleSet;II)Lcom/mediatek/simservs/client/policy/Rule;
    .locals 11
    .param p1, "oldRule"    # Lcom/mediatek/simservs/client/policy/Rule;
    .param p2, "newRuleSet"    # Lcom/mediatek/simservs/client/policy/RuleSet;
    .param p3, "cfAction"    # I
    .param p4, "cfReason"    # I

    .prologue
    .line 2266
    invoke-virtual {p1}, Lcom/mediatek/simservs/client/policy/Rule;->getConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v5

    .line 2267
    .local v5, "oldCond":Lcom/mediatek/simservs/client/policy/Conditions;
    invoke-virtual {p1}, Lcom/mediatek/simservs/client/policy/Rule;->getActions()Lcom/mediatek/simservs/client/policy/Actions;

    move-result-object v4

    .line 2269
    .local v4, "oldAction":Lcom/mediatek/simservs/client/policy/Actions;
    iget-object v8, p1, Lcom/mediatek/simservs/client/policy/Rule;->mId:Ljava/lang/String;

    invoke-virtual {p2, v8}, Lcom/mediatek/simservs/client/policy/RuleSet;->createNewRule(Ljava/lang/String;)Lcom/mediatek/simservs/client/policy/Rule;

    move-result-object v3

    .line 2270
    .local v3, "newRule":Lcom/mediatek/simservs/client/policy/Rule;
    invoke-virtual {v3}, Lcom/mediatek/simservs/client/policy/Rule;->createConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v2

    .line 2271
    .local v2, "newCond":Lcom/mediatek/simservs/client/policy/Conditions;
    invoke-virtual {v3}, Lcom/mediatek/simservs/client/policy/Rule;->createActions()Lcom/mediatek/simservs/client/policy/Actions;

    move-result-object v1

    .line 2273
    .local v1, "newAction":Lcom/mediatek/simservs/client/policy/Actions;
    if-eqz v5, :cond_b

    .line 2274
    invoke-virtual {v5}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendBusy()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 2275
    invoke-virtual {v2}, Lcom/mediatek/simservs/client/policy/Conditions;->addBusy()V

    .line 2277
    :cond_0
    invoke-virtual {v5}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendCommunicationDiverted()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 2278
    invoke-virtual {v2}, Lcom/mediatek/simservs/client/policy/Conditions;->addCommunicationDiverted()V

    .line 2280
    :cond_1
    invoke-virtual {v5}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendInternational()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 2281
    invoke-virtual {v2}, Lcom/mediatek/simservs/client/policy/Conditions;->addInternational()V

    .line 2283
    :cond_2
    invoke-virtual {v5}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendInternationalExHc()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 2284
    invoke-virtual {v2}, Lcom/mediatek/simservs/client/policy/Conditions;->addInternationalExHc()V

    .line 2286
    :cond_3
    invoke-virtual {v5}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendNoAnswer()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 2287
    invoke-virtual {v2}, Lcom/mediatek/simservs/client/policy/Conditions;->addNoAnswer()V

    .line 2289
    :cond_4
    invoke-virtual {v5}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendNotReachable()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 2290
    invoke-virtual {v2}, Lcom/mediatek/simservs/client/policy/Conditions;->addNotReachable()V

    .line 2292
    :cond_5
    invoke-virtual {v5}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendNotRegistered()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 2293
    invoke-virtual {v2}, Lcom/mediatek/simservs/client/policy/Conditions;->addNotRegistered()V

    .line 2295
    :cond_6
    invoke-virtual {v5}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendPresenceStatus()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 2296
    invoke-virtual {v2}, Lcom/mediatek/simservs/client/policy/Conditions;->addPresenceStatus()V

    .line 2298
    :cond_7
    invoke-virtual {v5}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendRoaming()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 2299
    invoke-virtual {v2}, Lcom/mediatek/simservs/client/policy/Conditions;->addRoaming()V

    .line 2301
    :cond_8
    invoke-virtual {v5}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendRuleDeactivated()Z

    move-result v8

    if-eqz v8, :cond_9

    .line 2302
    invoke-virtual {v2}, Lcom/mediatek/simservs/client/policy/Conditions;->addRuleDeactivated()V

    .line 2305
    :cond_9
    invoke-virtual {v5}, Lcom/mediatek/simservs/client/policy/Conditions;->getMedias()Ljava/util/List;

    move-result-object v7

    .line 2306
    .local v7, "oldMediaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v7, :cond_a

    .line 2307
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    if-ge v0, v8, :cond_a

    .line 2308
    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v2, v8}, Lcom/mediatek/simservs/client/policy/Conditions;->addMedia(Ljava/lang/String;)V

    .line 2307
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2312
    .end local v0    # "i":I
    :cond_a
    invoke-virtual {v5}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendTime()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/mediatek/simservs/client/policy/Conditions;->addTime(Ljava/lang/String;)V

    .line 2315
    .end local v7    # "oldMediaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_b
    invoke-virtual {v4}, Lcom/mediatek/simservs/client/policy/Actions;->getFowardTo()Lcom/mediatek/simservs/client/policy/ForwardTo;

    move-result-object v6

    .line 2316
    .local v6, "oldForward":Lcom/mediatek/simservs/client/policy/ForwardTo;
    if-eqz v6, :cond_d

    .line 2317
    const/4 v8, 0x4

    if-ne p3, v8, :cond_c

    if-nez p4, :cond_c

    .line 2319
    const-string v8, "MMTelSS"

    const-string v9, "No need to append the original numebr in Erasure."

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2320
    const-string v8, ""

    invoke-virtual {v6}, Lcom/mediatek/simservs/client/policy/ForwardTo;->isNotifyCaller()Z

    move-result v9

    invoke-virtual {v1, v8, v9}, Lcom/mediatek/simservs/client/policy/Actions;->setFowardTo(Ljava/lang/String;Z)V

    .line 2324
    :goto_1
    invoke-virtual {v1}, Lcom/mediatek/simservs/client/policy/Actions;->getFowardTo()Lcom/mediatek/simservs/client/policy/ForwardTo;

    move-result-object v8

    invoke-virtual {v6}, Lcom/mediatek/simservs/client/policy/ForwardTo;->isRevealIdentityToCaller()Z

    move-result v9

    invoke-virtual {v8, v9}, Lcom/mediatek/simservs/client/policy/ForwardTo;->setRevealIdentityToCaller(Z)V

    .line 2326
    invoke-virtual {v1}, Lcom/mediatek/simservs/client/policy/Actions;->getFowardTo()Lcom/mediatek/simservs/client/policy/ForwardTo;

    move-result-object v8

    invoke-virtual {v6}, Lcom/mediatek/simservs/client/policy/ForwardTo;->isRevealIdentityToTarget()Z

    move-result v9

    invoke-virtual {v8, v9}, Lcom/mediatek/simservs/client/policy/ForwardTo;->setRevealIdentityToTarget(Z)V

    .line 2333
    :goto_2
    invoke-virtual {v4}, Lcom/mediatek/simservs/client/policy/Actions;->isAllow()Z

    move-result v8

    invoke-virtual {v1, v8}, Lcom/mediatek/simservs/client/policy/Actions;->setAllow(Z)V

    .line 2334
    return-object v3

    .line 2322
    :cond_c
    invoke-virtual {v6}, Lcom/mediatek/simservs/client/policy/ForwardTo;->getTarget()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6}, Lcom/mediatek/simservs/client/policy/ForwardTo;->isNotifyCaller()Z

    move-result v9

    invoke-virtual {v1, v8, v9}, Lcom/mediatek/simservs/client/policy/Actions;->setFowardTo(Ljava/lang/String;Z)V

    goto :goto_1

    .line 2329
    :cond_d
    const-string v8, "MMTelSS"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "No need to append the forward number, cfAction: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", cfReason: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public copyOldRuleToNewRuleSetExceptSpecificMedia(Lcom/mediatek/simservs/client/policy/Rule;Lcom/mediatek/simservs/client/policy/RuleSet;IIII)Lcom/mediatek/simservs/client/policy/Rule;
    .locals 12
    .param p1, "oldRule"    # Lcom/mediatek/simservs/client/policy/Rule;
    .param p2, "newRuleSet"    # Lcom/mediatek/simservs/client/policy/RuleSet;
    .param p3, "requestedServiceClass"    # I
    .param p4, "phoneId"    # I
    .param p5, "cfAction"    # I
    .param p6, "cfReason"    # I

    .prologue
    .line 2368
    invoke-virtual {p1}, Lcom/mediatek/simservs/client/policy/Rule;->getConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v6

    .line 2369
    .local v6, "oldCond":Lcom/mediatek/simservs/client/policy/Conditions;
    invoke-virtual {p1}, Lcom/mediatek/simservs/client/policy/Rule;->getActions()Lcom/mediatek/simservs/client/policy/Actions;

    move-result-object v5

    .line 2419
    .local v5, "oldAction":Lcom/mediatek/simservs/client/policy/Actions;
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Lcom/mediatek/simservs/client/policy/Conditions;->getMedias()Ljava/util/List;

    move-result-object v9

    invoke-virtual {p0, v9, p3}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->hasExtraMedia(Ljava/util/List;I)Z

    move-result v9

    if-nez v9, :cond_0

    .line 2422
    const/4 v4, 0x0

    .line 2507
    :goto_0
    return-object v4

    .line 2425
    :cond_0
    iget-object v9, p1, Lcom/mediatek/simservs/client/policy/Rule;->mId:Ljava/lang/String;

    invoke-virtual {p2, v9}, Lcom/mediatek/simservs/client/policy/RuleSet;->createNewRule(Ljava/lang/String;)Lcom/mediatek/simservs/client/policy/Rule;

    move-result-object v4

    .line 2426
    .local v4, "newRule":Lcom/mediatek/simservs/client/policy/Rule;
    invoke-virtual {v4}, Lcom/mediatek/simservs/client/policy/Rule;->createConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v3

    .line 2427
    .local v3, "newCond":Lcom/mediatek/simservs/client/policy/Conditions;
    invoke-virtual {v4}, Lcom/mediatek/simservs/client/policy/Rule;->createActions()Lcom/mediatek/simservs/client/policy/Actions;

    move-result-object v2

    .line 2429
    .local v2, "newAction":Lcom/mediatek/simservs/client/policy/Actions;
    if-eqz v6, :cond_e

    .line 2430
    invoke-virtual {v6}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendBusy()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 2431
    invoke-virtual {v3}, Lcom/mediatek/simservs/client/policy/Conditions;->addBusy()V

    .line 2433
    :cond_1
    invoke-virtual {v6}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendCommunicationDiverted()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 2434
    invoke-virtual {v3}, Lcom/mediatek/simservs/client/policy/Conditions;->addCommunicationDiverted()V

    .line 2436
    :cond_2
    invoke-virtual {v6}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendInternational()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 2437
    invoke-virtual {v3}, Lcom/mediatek/simservs/client/policy/Conditions;->addInternational()V

    .line 2439
    :cond_3
    invoke-virtual {v6}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendInternationalExHc()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 2440
    invoke-virtual {v3}, Lcom/mediatek/simservs/client/policy/Conditions;->addInternationalExHc()V

    .line 2442
    :cond_4
    invoke-virtual {v6}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendNoAnswer()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 2443
    invoke-virtual {v3}, Lcom/mediatek/simservs/client/policy/Conditions;->addNoAnswer()V

    .line 2445
    :cond_5
    invoke-virtual {v6}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendNotReachable()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 2446
    invoke-virtual {v3}, Lcom/mediatek/simservs/client/policy/Conditions;->addNotReachable()V

    .line 2448
    :cond_6
    invoke-virtual {v6}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendNotRegistered()Z

    move-result v9

    if-eqz v9, :cond_7

    .line 2449
    invoke-virtual {v3}, Lcom/mediatek/simservs/client/policy/Conditions;->addNotRegistered()V

    .line 2451
    :cond_7
    invoke-virtual {v6}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendPresenceStatus()Z

    move-result v9

    if-eqz v9, :cond_8

    .line 2452
    invoke-virtual {v3}, Lcom/mediatek/simservs/client/policy/Conditions;->addPresenceStatus()V

    .line 2454
    :cond_8
    invoke-virtual {v6}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendRoaming()Z

    move-result v9

    if-eqz v9, :cond_9

    .line 2455
    invoke-virtual {v3}, Lcom/mediatek/simservs/client/policy/Conditions;->addRoaming()V

    .line 2457
    :cond_9
    invoke-virtual {v6}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendRuleDeactivated()Z

    move-result v9

    if-eqz v9, :cond_a

    .line 2458
    invoke-virtual {v3}, Lcom/mediatek/simservs/client/policy/Conditions;->addRuleDeactivated()V

    .line 2461
    :cond_a
    invoke-virtual {v6}, Lcom/mediatek/simservs/client/policy/Conditions;->getMedias()Ljava/util/List;

    move-result-object v8

    .line 2462
    .local v8, "oldMediaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v8, :cond_c

    .line 2463
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    if-ge v1, v9, :cond_c

    .line 2464
    invoke-virtual {p0, p3}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->getMediaType(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_b

    .line 2465
    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v3, v9}, Lcom/mediatek/simservs/client/policy/Conditions;->addMedia(Ljava/lang/String;)V

    .line 2463
    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2470
    .end local v1    # "i":I
    :cond_c
    invoke-virtual {v6}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendTime()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Lcom/mediatek/simservs/client/policy/Conditions;->addTime(Ljava/lang/String;)V

    .line 2488
    .end local v8    # "oldMediaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_d
    invoke-virtual {v5}, Lcom/mediatek/simservs/client/policy/Actions;->getFowardTo()Lcom/mediatek/simservs/client/policy/ForwardTo;

    move-result-object v7

    .line 2489
    .local v7, "oldForward":Lcom/mediatek/simservs/client/policy/ForwardTo;
    if-eqz v7, :cond_11

    .line 2490
    const/4 v9, 0x4

    move/from16 v0, p5

    if-ne v0, v9, :cond_10

    if-nez p6, :cond_10

    .line 2492
    const-string v9, "MMTelSS"

    const-string v10, "No need to append the original numebr in Erasure."

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2493
    const-string v9, ""

    invoke-virtual {v7}, Lcom/mediatek/simservs/client/policy/ForwardTo;->isNotifyCaller()Z

    move-result v10

    invoke-virtual {v2, v9, v10}, Lcom/mediatek/simservs/client/policy/Actions;->setFowardTo(Ljava/lang/String;Z)V

    .line 2497
    :goto_2
    invoke-virtual {v2}, Lcom/mediatek/simservs/client/policy/Actions;->getFowardTo()Lcom/mediatek/simservs/client/policy/ForwardTo;

    move-result-object v9

    invoke-virtual {v7}, Lcom/mediatek/simservs/client/policy/ForwardTo;->isRevealIdentityToCaller()Z

    move-result v10

    invoke-virtual {v9, v10}, Lcom/mediatek/simservs/client/policy/ForwardTo;->setRevealIdentityToCaller(Z)V

    .line 2499
    invoke-virtual {v2}, Lcom/mediatek/simservs/client/policy/Actions;->getFowardTo()Lcom/mediatek/simservs/client/policy/ForwardTo;

    move-result-object v9

    invoke-virtual {v7}, Lcom/mediatek/simservs/client/policy/ForwardTo;->isRevealIdentityToTarget()Z

    move-result v10

    invoke-virtual {v9, v10}, Lcom/mediatek/simservs/client/policy/ForwardTo;->setRevealIdentityToTarget(Z)V

    .line 2505
    :goto_3
    invoke-virtual {v5}, Lcom/mediatek/simservs/client/policy/Actions;->isAllow()Z

    move-result v9

    invoke-virtual {v2, v9}, Lcom/mediatek/simservs/client/policy/Actions;->setAllow(Z)V

    goto/16 :goto_0

    .line 2474
    .end local v7    # "oldForward":Lcom/mediatek/simservs/client/policy/ForwardTo;
    :cond_e
    invoke-static/range {p4 .. p4}, Lcom/android/internal/telephony/MMTelSSUtils;->isOp06IccCard(I)Z

    move-result v9

    if-nez v9, :cond_d

    invoke-static/range {p4 .. p4}, Lcom/android/internal/telephony/MMTelSSUtils;->isOp07IccCard(I)Z

    move-result v9

    if-nez v9, :cond_d

    .line 2476
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 2477
    .restart local v8    # "oldMediaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v9, "audio"

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2478
    const-string v9, "video"

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2479
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_4
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    if-ge v1, v9, :cond_d

    .line 2480
    invoke-virtual {p0, p3}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->getMediaType(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_f

    .line 2482
    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v3, v9}, Lcom/mediatek/simservs/client/policy/Conditions;->addMedia(Ljava/lang/String;)V

    .line 2479
    :cond_f
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 2495
    .end local v1    # "i":I
    .end local v8    # "oldMediaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v7    # "oldForward":Lcom/mediatek/simservs/client/policy/ForwardTo;
    :cond_10
    invoke-virtual {v7}, Lcom/mediatek/simservs/client/policy/ForwardTo;->getTarget()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7}, Lcom/mediatek/simservs/client/policy/ForwardTo;->isNotifyCaller()Z

    move-result v10

    invoke-virtual {v2, v9, v10}, Lcom/mediatek/simservs/client/policy/Actions;->setFowardTo(Ljava/lang/String;Z)V

    goto :goto_2

    .line 2502
    :cond_11
    const-string v9, "MMTelSS"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "No need to append the forward number, cfAction: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, p5

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", cfReason: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, p6

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method public copyOldRuleToNewRuleSetWithDisabledCB(Lcom/mediatek/simservs/client/policy/Rule;Lcom/mediatek/simservs/client/policy/RuleSet;ZII)V
    .locals 7
    .param p1, "oldRule"    # Lcom/mediatek/simservs/client/policy/Rule;
    .param p2, "newRuleSet"    # Lcom/mediatek/simservs/client/policy/RuleSet;
    .param p3, "allow"    # Z
    .param p4, "cfAction"    # I
    .param p5, "cfReason"    # I

    .prologue
    .line 2339
    const/4 v0, 0x0

    .line 2340
    .local v0, "newAction":Lcom/mediatek/simservs/client/policy/Actions;
    const/4 v1, 0x0

    .line 2341
    .local v1, "newCond":Lcom/mediatek/simservs/client/policy/Conditions;
    invoke-virtual {p1}, Lcom/mediatek/simservs/client/policy/Rule;->getActions()Lcom/mediatek/simservs/client/policy/Actions;

    move-result-object v3

    .line 2342
    .local v3, "oldAction":Lcom/mediatek/simservs/client/policy/Actions;
    invoke-virtual {p1}, Lcom/mediatek/simservs/client/policy/Rule;->getConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v4

    .line 2344
    .local v4, "oldCond":Lcom/mediatek/simservs/client/policy/Conditions;
    iget-object v5, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget v5, v5, Lcom/android/internal/telephony/MMTelSSTransport;->mDisableRuleMode:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2

    .line 2345
    invoke-virtual {v3}, Lcom/mediatek/simservs/client/policy/Actions;->isAllow()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v4}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendRuleDeactivated()Z

    move-result v5

    if-nez v5, :cond_1

    .line 2363
    :cond_0
    :goto_0
    return-void

    .line 2348
    :cond_1
    invoke-virtual {p0, p1, p2, p4, p5}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->copyOldRuleToNewRuleSet(Lcom/mediatek/simservs/client/policy/Rule;Lcom/mediatek/simservs/client/policy/RuleSet;II)Lcom/mediatek/simservs/client/policy/Rule;

    goto :goto_0

    .line 2350
    :cond_2
    iget-object v5, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget v5, v5, Lcom/android/internal/telephony/MMTelSSTransport;->mDisableRuleMode:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_3

    .line 2351
    invoke-virtual {p0, p1, p2, p4, p5}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->copyOldRuleToNewRuleSet(Lcom/mediatek/simservs/client/policy/Rule;Lcom/mediatek/simservs/client/policy/RuleSet;II)Lcom/mediatek/simservs/client/policy/Rule;

    move-result-object v2

    .line 2352
    .local v2, "newRule":Lcom/mediatek/simservs/client/policy/Rule;
    if-eqz v2, :cond_0

    invoke-virtual {v3}, Lcom/mediatek/simservs/client/policy/Actions;->isAllow()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v4}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendRuleDeactivated()Z

    move-result v5

    if-nez v5, :cond_0

    .line 2353
    invoke-virtual {v2}, Lcom/mediatek/simservs/client/policy/Rule;->createConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v1

    .line 2354
    invoke-virtual {v1}, Lcom/mediatek/simservs/client/policy/Conditions;->addRuleDeactivated()V

    goto :goto_0

    .line 2356
    .end local v2    # "newRule":Lcom/mediatek/simservs/client/policy/Rule;
    :cond_3
    iget-object v5, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget v5, v5, Lcom/android/internal/telephony/MMTelSSTransport;->mDisableRuleMode:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_0

    .line 2357
    invoke-virtual {p0, p1, p2, p4, p5}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->copyOldRuleToNewRuleSet(Lcom/mediatek/simservs/client/policy/Rule;Lcom/mediatek/simservs/client/policy/RuleSet;II)Lcom/mediatek/simservs/client/policy/Rule;

    move-result-object v2

    .line 2358
    .restart local v2    # "newRule":Lcom/mediatek/simservs/client/policy/Rule;
    if-eqz v2, :cond_0

    invoke-virtual {v3}, Lcom/mediatek/simservs/client/policy/Actions;->isAllow()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v4}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendRuleDeactivated()Z

    move-result v5

    if-nez v5, :cond_0

    .line 2359
    invoke-virtual {v2}, Lcom/mediatek/simservs/client/policy/Rule;->createActions()Lcom/mediatek/simservs/client/policy/Actions;

    move-result-object v0

    .line 2360
    invoke-virtual {v0, p3}, Lcom/mediatek/simservs/client/policy/Actions;->setAllow(Z)V

    goto :goto_0
.end method

.method public getMediaType(I)Ljava/lang/String;
    .locals 1
    .param p1, "serviceClass"    # I

    .prologue
    .line 626
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 627
    const-string v0, "audio"

    .line 631
    :goto_0
    return-object v0

    .line 628
    :cond_0
    const/16 v0, 0x200

    if-ne p1, v0, :cond_1

    .line 629
    const-string v0, "video"

    goto :goto_0

    .line 631
    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method public handleCreateNewRuleForCFInTimeSlot(Lcom/mediatek/simservs/client/CommunicationDiversion;Lcom/mediatek/simservs/client/policy/RuleSet;IIILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)Z
    .locals 6
    .param p1, "cd"    # Lcom/mediatek/simservs/client/CommunicationDiversion;
    .param p2, "newRuleSet"    # Lcom/mediatek/simservs/client/policy/RuleSet;
    .param p3, "setCFReason"    # I
    .param p4, "setCFAction"    # I
    .param p5, "setCFServiceClass"    # I
    .param p6, "setCFNumber"    # Ljava/lang/String;
    .param p7, "setCFTimeSeconds"    # I
    .param p8, "timeSlot"    # Ljava/lang/String;
    .param p9, "ruleID"    # Ljava/lang/String;
    .param p10, "updateSingleRule"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mediatek/simservs/xcap/XcapException;
        }
    .end annotation

    .prologue
    .line 4639
    invoke-virtual {p2, p9}, Lcom/mediatek/simservs/client/policy/RuleSet;->createNewRule(Ljava/lang/String;)Lcom/mediatek/simservs/client/policy/Rule;

    move-result-object v2

    .line 4640
    .local v2, "cfRule":Lcom/mediatek/simservs/client/policy/Rule;
    invoke-virtual {v2}, Lcom/mediatek/simservs/client/policy/Rule;->createConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v1

    .line 4641
    .local v1, "cfCond":Lcom/mediatek/simservs/client/policy/Conditions;
    invoke-virtual {v2}, Lcom/mediatek/simservs/client/policy/Rule;->createActions()Lcom/mediatek/simservs/client/policy/Actions;

    move-result-object v0

    .line 4642
    .local v0, "cfAction":Lcom/mediatek/simservs/client/policy/Actions;
    const-string v3, "MMTelSS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleCreateNewRuleForCFInTimeSlot(): reason = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", serviceClass = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", number = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", cfTime = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", timeSlot = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4647
    const/4 v3, 0x1

    if-ne p5, v3, :cond_3

    .line 4648
    const-string v3, "audio"

    invoke-virtual {v1, v3}, Lcom/mediatek/simservs/client/policy/Conditions;->addMedia(Ljava/lang/String;)V

    .line 4656
    :cond_0
    :goto_0
    const/4 v3, 0x1

    if-ne p3, v3, :cond_5

    .line 4657
    invoke-virtual {v1}, Lcom/mediatek/simservs/client/policy/Conditions;->addBusy()V

    .line 4667
    :cond_1
    :goto_1
    invoke-virtual {v1, p8}, Lcom/mediatek/simservs/client/policy/Conditions;->addTime(Ljava/lang/String;)V

    .line 4668
    invoke-static {}, Lcom/android/internal/telephony/MMTelSSUtils;->isNotifyCallerTest()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 4669
    const/4 v3, 0x0

    invoke-virtual {v0, p6, v3}, Lcom/mediatek/simservs/client/policy/Actions;->setFowardTo(Ljava/lang/String;Z)V

    .line 4673
    :goto_2
    invoke-virtual {v0}, Lcom/mediatek/simservs/client/policy/Actions;->getFowardTo()Lcom/mediatek/simservs/client/policy/ForwardTo;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/mediatek/simservs/client/policy/ForwardTo;->setRevealIdentityToCaller(Z)V

    .line 4674
    invoke-virtual {v0}, Lcom/mediatek/simservs/client/policy/Actions;->getFowardTo()Lcom/mediatek/simservs/client/policy/ForwardTo;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/mediatek/simservs/client/policy/ForwardTo;->setRevealIdentityToTarget(Z)V

    .line 4676
    if-eqz p10, :cond_2

    .line 4677
    invoke-virtual {p1, p9}, Lcom/mediatek/simservs/client/CommunicationDiversion;->saveRule(Ljava/lang/String;)V

    .line 4679
    :cond_2
    const/4 v3, 0x1

    return v3

    .line 4649
    :cond_3
    const/16 v3, 0x200

    if-ne p5, v3, :cond_4

    .line 4650
    const-string v3, "video"

    invoke-virtual {v1, v3}, Lcom/mediatek/simservs/client/policy/Conditions;->addMedia(Ljava/lang/String;)V

    goto :goto_0

    .line 4651
    :cond_4
    if-nez p5, :cond_0

    .line 4652
    const-string v3, "audio"

    invoke-virtual {v1, v3}, Lcom/mediatek/simservs/client/policy/Conditions;->addMedia(Ljava/lang/String;)V

    .line 4653
    const-string v3, "video"

    invoke-virtual {v1, v3}, Lcom/mediatek/simservs/client/policy/Conditions;->addMedia(Ljava/lang/String;)V

    goto :goto_0

    .line 4658
    :cond_5
    const/4 v3, 0x2

    if-ne p3, v3, :cond_6

    .line 4659
    invoke-virtual {v1}, Lcom/mediatek/simservs/client/policy/Conditions;->addNoAnswer()V

    goto :goto_1

    .line 4660
    :cond_6
    const/4 v3, 0x3

    if-ne p3, v3, :cond_7

    .line 4661
    invoke-virtual {v1}, Lcom/mediatek/simservs/client/policy/Conditions;->addNotReachable()V

    goto :goto_1

    .line 4662
    :cond_7
    const/4 v3, 0x6

    if-ne p3, v3, :cond_8

    .line 4663
    invoke-virtual {v1}, Lcom/mediatek/simservs/client/policy/Conditions;->addNotRegistered()V

    goto :goto_1

    .line 4664
    :cond_8
    if-nez p3, :cond_1

    goto :goto_1

    .line 4671
    :cond_9
    const/4 v3, 0x1

    invoke-virtual {v0, p6, v3}, Lcom/mediatek/simservs/client/policy/Actions;->setFowardTo(Ljava/lang/String;Z)V

    goto :goto_2
.end method

.method public handleCreateNewRuleForExistingCB(Lcom/mediatek/simservs/client/SimservType;Lcom/mediatek/simservs/client/policy/RuleSet;Lcom/mediatek/simservs/client/policy/Rule;Ljava/lang/String;IILjava/lang/String;ZII)Z
    .locals 15
    .param p1, "ssType"    # Lcom/mediatek/simservs/client/SimservType;
    .param p2, "newRuleSet"    # Lcom/mediatek/simservs/client/policy/RuleSet;
    .param p3, "r"    # Lcom/mediatek/simservs/client/policy/Rule;
    .param p4, "facility"    # Ljava/lang/String;
    .param p5, "lockState"    # I
    .param p6, "setCBServiceClass"    # I
    .param p7, "RuleID"    # Ljava/lang/String;
    .param p8, "updateSingleRule"    # Z
    .param p9, "num_of_expansion"    # I
    .param p10, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mediatek/simservs/xcap/XcapException;
        }
    .end annotation

    .prologue
    .line 2115
    invoke-virtual/range {p3 .. p3}, Lcom/mediatek/simservs/client/policy/Rule;->getConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v8

    .line 2116
    .local v8, "cond":Lcom/mediatek/simservs/client/policy/Conditions;
    invoke-virtual/range {p3 .. p3}, Lcom/mediatek/simservs/client/policy/Rule;->getActions()Lcom/mediatek/simservs/client/policy/Actions;

    move-result-object v2

    .line 2117
    .local v2, "action":Lcom/mediatek/simservs/client/policy/Actions;
    const/4 v5, 0x1

    .line 2118
    .local v5, "cbAllow":Z
    const/4 v3, 0x0

    .line 2121
    .local v3, "addRuleDeactivatedNode":Z
    const-string v12, "persist.radio.ss.xrdm"

    const/4 v13, 0x2

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 2122
    .local v11, "sDisableRuleMode":Ljava/lang/String;
    const-string v12, "MMTelSS"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "handleCreateNewRuleForExistingCB():sDisableRuleMode="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2123
    iget-object v12, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    iput v13, v12, Lcom/android/internal/telephony/MMTelSSTransport;->mDisableRuleMode:I

    .line 2125
    const/4 v12, 0x1

    move/from16 v0, p5

    if-ne v0, v12, :cond_5

    .line 2127
    const/4 v5, 0x0

    .line 2145
    :cond_0
    :goto_0
    move-object/from16 v0, p2

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Lcom/mediatek/simservs/client/policy/RuleSet;->createNewRule(Ljava/lang/String;)Lcom/mediatek/simservs/client/policy/Rule;

    move-result-object v7

    .line 2146
    .local v7, "cbRule":Lcom/mediatek/simservs/client/policy/Rule;
    invoke-virtual {v7}, Lcom/mediatek/simservs/client/policy/Rule;->createConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v6

    .line 2147
    .local v6, "cbCond":Lcom/mediatek/simservs/client/policy/Conditions;
    invoke-virtual {v7}, Lcom/mediatek/simservs/client/policy/Rule;->createActions()Lcom/mediatek/simservs/client/policy/Actions;

    move-result-object v4

    .line 2150
    .local v4, "cbAction":Lcom/mediatek/simservs/client/policy/Actions;
    invoke-static/range {p10 .. p10}, Lcom/android/internal/telephony/MMTelSSUtils;->isOp06IccCard(I)Z

    move-result v12

    if-nez v12, :cond_1

    invoke-static/range {p10 .. p10}, Lcom/android/internal/telephony/MMTelSSUtils;->isOp07IccCard(I)Z

    move-result v12

    if-nez v12, :cond_1

    .line 2152
    const/4 v12, 0x1

    move/from16 v0, p6

    if-ne v0, v12, :cond_9

    .line 2153
    const-string v12, "audio"

    invoke-virtual {v6, v12}, Lcom/mediatek/simservs/client/policy/Conditions;->addMedia(Ljava/lang/String;)V

    .line 2163
    :cond_1
    :goto_1
    iget-object v12, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget v12, v12, Lcom/android/internal/telephony/MMTelSSTransport;->mDisableRuleMode:I

    const/4 v13, 0x2

    if-ne v12, v13, :cond_2

    const/4 v12, 0x1

    if-ne v3, v12, :cond_2

    .line 2164
    invoke-virtual {v6}, Lcom/mediatek/simservs/client/policy/Conditions;->addRuleDeactivated()V

    .line 2167
    :cond_2
    const-string v12, "IR"

    move-object/from16 v0, p4

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_b

    .line 2168
    invoke-virtual {v6}, Lcom/mediatek/simservs/client/policy/Conditions;->addRoaming()V

    .line 2169
    invoke-virtual {v4, v5}, Lcom/mediatek/simservs/client/policy/Actions;->setAllow(Z)V

    .line 2184
    :cond_3
    :goto_2
    if-eqz p8, :cond_4

    const/4 v12, 0x1

    move/from16 v0, p9

    if-ne v12, v0, :cond_4

    .line 2185
    move-object/from16 v0, p1

    instance-of v12, v0, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;

    if-eqz v12, :cond_f

    move-object/from16 v10, p1

    .line 2186
    check-cast v10, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;

    .line 2187
    .local v10, "ocb":Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;
    move-object/from16 v0, p7

    invoke-virtual {v10, v0}, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;->saveRule(Ljava/lang/String;)V

    .line 2194
    .end local v10    # "ocb":Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;
    :cond_4
    :goto_3
    const/4 v12, 0x1

    .end local v4    # "cbAction":Lcom/mediatek/simservs/client/policy/Actions;
    .end local v6    # "cbCond":Lcom/mediatek/simservs/client/policy/Conditions;
    .end local v7    # "cbRule":Lcom/mediatek/simservs/client/policy/Rule;
    :goto_4
    return v12

    .line 2130
    :cond_5
    iget-object v12, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget v12, v12, Lcom/android/internal/telephony/MMTelSSTransport;->mDisableRuleMode:I

    const/4 v13, 0x1

    if-ne v12, v13, :cond_7

    .line 2131
    const-string v12, "MMTelSS"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Disable CB for serviceClass="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p6

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " ,not create new rule for it to put in the new rule set"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2132
    if-eqz p8, :cond_6

    .line 2133
    const-string v12, "MMTelSS"

    const-string v13, "handleCreateNewRuleForExistingCB(): ERROR: DISABLE_MODE_DELETE_RULE but updateSingleRule"

    invoke-static {v12, v13}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2135
    :cond_6
    const/4 v12, 0x0

    goto :goto_4

    .line 2136
    :cond_7
    iget-object v12, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget v12, v12, Lcom/android/internal/telephony/MMTelSSTransport;->mDisableRuleMode:I

    const/4 v13, 0x2

    if-ne v12, v13, :cond_8

    .line 2138
    const/4 v3, 0x1

    .line 2139
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 2140
    :cond_8
    iget-object v12, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget v12, v12, Lcom/android/internal/telephony/MMTelSSTransport;->mDisableRuleMode:I

    const/4 v13, 0x3

    if-ne v12, v13, :cond_0

    .line 2141
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 2154
    .restart local v4    # "cbAction":Lcom/mediatek/simservs/client/policy/Actions;
    .restart local v6    # "cbCond":Lcom/mediatek/simservs/client/policy/Conditions;
    .restart local v7    # "cbRule":Lcom/mediatek/simservs/client/policy/Rule;
    :cond_9
    const/16 v12, 0x200

    move/from16 v0, p6

    if-ne v0, v12, :cond_a

    .line 2155
    const-string v12, "video"

    invoke-virtual {v6, v12}, Lcom/mediatek/simservs/client/policy/Conditions;->addMedia(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2156
    :cond_a
    if-nez p6, :cond_1

    .line 2157
    const-string v12, "audio"

    invoke-virtual {v6, v12}, Lcom/mediatek/simservs/client/policy/Conditions;->addMedia(Ljava/lang/String;)V

    .line 2158
    const-string v12, "video"

    invoke-virtual {v6, v12}, Lcom/mediatek/simservs/client/policy/Conditions;->addMedia(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2170
    :cond_b
    const-string v12, "AI"

    move-object/from16 v0, p4

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_c

    .line 2172
    invoke-virtual {v4, v5}, Lcom/mediatek/simservs/client/policy/Actions;->setAllow(Z)V

    goto/16 :goto_2

    .line 2173
    :cond_c
    const-string v12, "OI"

    move-object/from16 v0, p4

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_d

    .line 2174
    invoke-virtual {v6}, Lcom/mediatek/simservs/client/policy/Conditions;->addInternational()V

    .line 2175
    invoke-virtual {v4, v5}, Lcom/mediatek/simservs/client/policy/Actions;->setAllow(Z)V

    goto/16 :goto_2

    .line 2176
    :cond_d
    const-string v12, "OX"

    move-object/from16 v0, p4

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_e

    .line 2177
    invoke-virtual {v6}, Lcom/mediatek/simservs/client/policy/Conditions;->addInternationalExHc()V

    .line 2178
    invoke-virtual {v4, v5}, Lcom/mediatek/simservs/client/policy/Actions;->setAllow(Z)V

    goto/16 :goto_2

    .line 2179
    :cond_e
    const-string v12, "AO"

    move-object/from16 v0, p4

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 2181
    invoke-virtual {v4, v5}, Lcom/mediatek/simservs/client/policy/Actions;->setAllow(Z)V

    goto/16 :goto_2

    .line 2188
    :cond_f
    move-object/from16 v0, p1

    instance-of v12, v0, Lcom/mediatek/simservs/client/IncomingCommunicationBarring;

    if-eqz v12, :cond_4

    move-object/from16 v9, p1

    .line 2189
    check-cast v9, Lcom/mediatek/simservs/client/IncomingCommunicationBarring;

    .line 2190
    .local v9, "icb":Lcom/mediatek/simservs/client/IncomingCommunicationBarring;
    move-object/from16 v0, p7

    invoke-virtual {v9, v0}, Lcom/mediatek/simservs/client/IncomingCommunicationBarring;->saveRule(Ljava/lang/String;)V

    goto/16 :goto_3
.end method

.method public handleCreateNewRuleForExistingCF(Lcom/mediatek/simservs/client/CommunicationDiversion;Lcom/mediatek/simservs/client/policy/RuleSet;Lcom/mediatek/simservs/client/policy/Rule;IIILjava/lang/String;ILjava/lang/String;ZII)Z
    .locals 20
    .param p1, "cd"    # Lcom/mediatek/simservs/client/CommunicationDiversion;
    .param p2, "newRuleSet"    # Lcom/mediatek/simservs/client/policy/RuleSet;
    .param p3, "r"    # Lcom/mediatek/simservs/client/policy/Rule;
    .param p4, "setCFReason"    # I
    .param p5, "setCFAction"    # I
    .param p6, "setCFServiceClass"    # I
    .param p7, "setCFNumber"    # Ljava/lang/String;
    .param p8, "setCFTimeSeconds"    # I
    .param p9, "ruleID"    # Ljava/lang/String;
    .param p10, "updateSingleRule"    # Z
    .param p11, "numExpansion"    # I
    .param p12, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mediatek/simservs/xcap/XcapException;
        }
    .end annotation

    .prologue
    .line 1984
    invoke-virtual/range {p3 .. p3}, Lcom/mediatek/simservs/client/policy/Rule;->getConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v16

    .line 1985
    .local v16, "cond":Lcom/mediatek/simservs/client/policy/Conditions;
    invoke-virtual/range {p3 .. p3}, Lcom/mediatek/simservs/client/policy/Rule;->getActions()Lcom/mediatek/simservs/client/policy/Actions;

    move-result-object v12

    .line 1988
    .local v12, "action":Lcom/mediatek/simservs/client/policy/Actions;
    const-string v5, "persist.radio.ss.xrdm"

    const/4 v6, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 1989
    .local v19, "sDisableRuleMode":Ljava/lang/String;
    const-string v5, "MMTelSS"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleCreateNewRuleForExistingCF():sDisableRuleMode="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1990
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v5, Lcom/android/internal/telephony/MMTelSSTransport;->mDisableRuleMode:I

    .line 1993
    const/4 v5, 0x1

    move/from16 v0, p5

    if-eq v0, v5, :cond_0

    const/4 v5, 0x3

    move/from16 v0, p5

    if-ne v0, v5, :cond_d

    .line 1995
    :cond_0
    move-object/from16 v0, p2

    move-object/from16 v1, p9

    invoke-virtual {v0, v1}, Lcom/mediatek/simservs/client/policy/RuleSet;->createNewRule(Ljava/lang/String;)Lcom/mediatek/simservs/client/policy/Rule;

    move-result-object v15

    .line 1996
    .local v15, "cfRule":Lcom/mediatek/simservs/client/policy/Rule;
    invoke-virtual {v15}, Lcom/mediatek/simservs/client/policy/Rule;->createConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v14

    .line 1997
    .local v14, "cfCond":Lcom/mediatek/simservs/client/policy/Conditions;
    invoke-virtual {v15}, Lcom/mediatek/simservs/client/policy/Rule;->createActions()Lcom/mediatek/simservs/client/policy/Actions;

    move-result-object v13

    .line 1998
    .local v13, "cfAction":Lcom/mediatek/simservs/client/policy/Actions;
    const-string v5, "MMTelSS"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleCreateNewRuleForExistingCF():Enable CF with reason="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p4

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",serviceClass="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",number="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p7

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",cfTime="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p8

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2000
    invoke-static/range {p12 .. p12}, Lcom/android/internal/telephony/MMTelSSUtils;->isOp06IccCard(I)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-static/range {p12 .. p12}, Lcom/android/internal/telephony/MMTelSSUtils;->isOp07IccCard(I)Z

    move-result v5

    if-nez v5, :cond_1

    .line 2002
    const/4 v5, 0x1

    move/from16 v0, p6

    if-ne v0, v5, :cond_6

    .line 2003
    const-string v5, "audio"

    invoke-virtual {v14, v5}, Lcom/mediatek/simservs/client/policy/Conditions;->addMedia(Ljava/lang/String;)V

    .line 2012
    :cond_1
    :goto_0
    const/4 v5, 0x1

    move/from16 v0, p4

    if-ne v0, v5, :cond_8

    .line 2013
    invoke-virtual {v14}, Lcom/mediatek/simservs/client/policy/Conditions;->addBusy()V

    .line 2025
    :cond_2
    :goto_1
    if-eqz p7, :cond_3

    invoke-virtual/range {p7 .. p7}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2026
    :cond_3
    invoke-virtual {v12}, Lcom/mediatek/simservs/client/policy/Actions;->getFowardTo()Lcom/mediatek/simservs/client/policy/ForwardTo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mediatek/simservs/client/policy/ForwardTo;->getTarget()Ljava/lang/String;

    move-result-object p7

    .line 2027
    const-string v5, "MMTelSS"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Reason: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p4

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", setCFNumber is empty or null, so update to: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p7

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2032
    :cond_4
    invoke-static/range {p12 .. p12}, Lcom/android/internal/telephony/MMTelSSUtils;->isOp01IccCard(I)Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-static {}, Lcom/android/internal/telephony/MMTelSSUtils;->isNotifyCallerTest()Z

    move-result v5

    if-eqz v5, :cond_c

    .line 2033
    const/4 v5, 0x0

    move-object/from16 v0, p7

    invoke-virtual {v13, v0, v5}, Lcom/mediatek/simservs/client/policy/Actions;->setFowardTo(Ljava/lang/String;Z)V

    .line 2037
    :goto_2
    invoke-virtual {v13}, Lcom/mediatek/simservs/client/policy/Actions;->getFowardTo()Lcom/mediatek/simservs/client/policy/ForwardTo;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/mediatek/simservs/client/policy/ForwardTo;->setRevealIdentityToCaller(Z)V

    .line 2038
    invoke-virtual {v13}, Lcom/mediatek/simservs/client/policy/Actions;->getFowardTo()Lcom/mediatek/simservs/client/policy/ForwardTo;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/mediatek/simservs/client/policy/ForwardTo;->setRevealIdentityToTarget(Z)V

    .line 2039
    if-eqz p10, :cond_5

    const/4 v5, 0x1

    move/from16 v0, p11

    if-ne v5, v0, :cond_5

    .line 2040
    move-object/from16 v0, p1

    move-object/from16 v1, p9

    invoke-virtual {v0, v1}, Lcom/mediatek/simservs/client/CommunicationDiversion;->saveRule(Ljava/lang/String;)V

    .line 2042
    :cond_5
    const/4 v5, 0x1

    .line 2104
    .end local v13    # "cfAction":Lcom/mediatek/simservs/client/policy/Actions;
    .end local v14    # "cfCond":Lcom/mediatek/simservs/client/policy/Conditions;
    .end local v15    # "cfRule":Lcom/mediatek/simservs/client/policy/Rule;
    :goto_3
    return v5

    .line 2004
    .restart local v13    # "cfAction":Lcom/mediatek/simservs/client/policy/Actions;
    .restart local v14    # "cfCond":Lcom/mediatek/simservs/client/policy/Conditions;
    .restart local v15    # "cfRule":Lcom/mediatek/simservs/client/policy/Rule;
    :cond_6
    const/16 v5, 0x200

    move/from16 v0, p6

    if-ne v0, v5, :cond_7

    .line 2005
    const-string v5, "video"

    invoke-virtual {v14, v5}, Lcom/mediatek/simservs/client/policy/Conditions;->addMedia(Ljava/lang/String;)V

    goto :goto_0

    .line 2006
    :cond_7
    if-nez p6, :cond_1

    .line 2007
    const-string v5, "audio"

    invoke-virtual {v14, v5}, Lcom/mediatek/simservs/client/policy/Conditions;->addMedia(Ljava/lang/String;)V

    .line 2008
    const-string v5, "video"

    invoke-virtual {v14, v5}, Lcom/mediatek/simservs/client/policy/Conditions;->addMedia(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2014
    :cond_8
    const/4 v5, 0x2

    move/from16 v0, p4

    if-ne v0, v5, :cond_9

    .line 2015
    invoke-virtual {v14}, Lcom/mediatek/simservs/client/policy/Conditions;->addNoAnswer()V

    goto/16 :goto_1

    .line 2016
    :cond_9
    const/4 v5, 0x3

    move/from16 v0, p4

    if-ne v0, v5, :cond_a

    .line 2017
    invoke-virtual {v14}, Lcom/mediatek/simservs/client/policy/Conditions;->addNotReachable()V

    goto/16 :goto_1

    .line 2018
    :cond_a
    const/4 v5, 0x6

    move/from16 v0, p4

    if-ne v0, v5, :cond_b

    .line 2019
    invoke-virtual {v14}, Lcom/mediatek/simservs/client/policy/Conditions;->addNotRegistered()V

    goto/16 :goto_1

    .line 2020
    :cond_b
    if-nez p4, :cond_2

    goto/16 :goto_1

    .line 2035
    :cond_c
    const/4 v5, 0x1

    move-object/from16 v0, p7

    invoke-virtual {v13, v0, v5}, Lcom/mediatek/simservs/client/policy/Actions;->setFowardTo(Ljava/lang/String;Z)V

    goto :goto_2

    .line 2045
    .end local v13    # "cfAction":Lcom/mediatek/simservs/client/policy/Actions;
    .end local v14    # "cfCond":Lcom/mediatek/simservs/client/policy/Conditions;
    .end local v15    # "cfRule":Lcom/mediatek/simservs/client/policy/Rule;
    :cond_d
    if-nez p6, :cond_11

    .line 2046
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget v5, v5, Lcom/android/internal/telephony/MMTelSSTransport;->mDisableRuleMode:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_f

    .line 2047
    const-string v5, "MMTelSS"

    const-string v6, "Disable CF for serviceClass=0 (all media types):neither create new rule nor copy old rule to new rule set"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2048
    if-eqz p10, :cond_e

    .line 2049
    const-string v5, "MMTelSS"

    const-string v6, "handleCreateNewRuleForExistingCF(): ERROR: DISABLE_MODE_DELETE_RULE but updateSingleRule"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2051
    :cond_e
    const/4 v5, 0x0

    goto :goto_3

    .line 2052
    :cond_f
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget v5, v5, Lcom/android/internal/telephony/MMTelSSTransport;->mDisableRuleMode:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_19

    .line 2053
    const-string v5, "MMTelSS"

    const-string v6, "Disable CF for serviceClass=0 (all media types):copy old rule with <rule-deactivated> into new rule set"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2054
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p2

    move/from16 v3, p5

    move/from16 v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->copyOldRuleToNewRuleSet(Lcom/mediatek/simservs/client/policy/Rule;Lcom/mediatek/simservs/client/policy/RuleSet;II)Lcom/mediatek/simservs/client/policy/Rule;

    move-result-object v18

    .line 2055
    .local v18, "nr":Lcom/mediatek/simservs/client/policy/Rule;
    invoke-virtual/range {v18 .. v18}, Lcom/mediatek/simservs/client/policy/Rule;->getConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mediatek/simservs/client/policy/Conditions;->addRuleDeactivated()V

    .line 2056
    if-eqz p10, :cond_10

    const/4 v5, 0x1

    move/from16 v0, p11

    if-ne v5, v0, :cond_10

    .line 2057
    move-object/from16 v0, v18

    iget-object v5, v0, Lcom/mediatek/simservs/client/policy/Rule;->mId:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/mediatek/simservs/client/CommunicationDiversion;->saveRule(Ljava/lang/String;)V

    .line 2059
    :cond_10
    const/4 v5, 0x1

    goto/16 :goto_3

    .line 2061
    .end local v18    # "nr":Lcom/mediatek/simservs/client/policy/Rule;
    :cond_11
    invoke-virtual/range {v16 .. v16}, Lcom/mediatek/simservs/client/policy/Conditions;->getMedias()Ljava/util/List;

    move-result-object v5

    move-object/from16 v0, p0

    move/from16 v1, p6

    invoke-virtual {v0, v5, v1}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->hasExtraMedia(Ljava/util/List;I)Z

    move-result v5

    if-eqz v5, :cond_15

    .line 2062
    if-eqz p10, :cond_13

    const/4 v5, 0x1

    move/from16 v0, p11

    if-ne v5, v0, :cond_13

    move-object/from16 v5, p0

    move-object/from16 v6, p3

    move-object/from16 v7, p2

    move/from16 v8, p6

    move/from16 v9, p12

    move/from16 v10, p5

    move/from16 v11, p4

    .line 2064
    invoke-virtual/range {v5 .. v11}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->copyOldRuleToNewRuleSetExceptSpecificMedia(Lcom/mediatek/simservs/client/policy/Rule;Lcom/mediatek/simservs/client/policy/RuleSet;IIII)Lcom/mediatek/simservs/client/policy/Rule;

    move-result-object v17

    .line 2066
    .local v17, "newRule":Lcom/mediatek/simservs/client/policy/Rule;
    if-eqz v17, :cond_12

    .line 2067
    move-object/from16 v0, v17

    iget-object v5, v0, Lcom/mediatek/simservs/client/policy/Rule;->mId:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/mediatek/simservs/client/CommunicationDiversion;->saveRule(Ljava/lang/String;)V

    .line 2069
    :cond_12
    const/4 v5, 0x1

    goto/16 :goto_3

    .line 2071
    .end local v17    # "newRule":Lcom/mediatek/simservs/client/policy/Rule;
    :cond_13
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget v5, v5, Lcom/android/internal/telephony/MMTelSSTransport;->mDisableRuleMode:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_14

    .line 2072
    const-string v5, "MMTelSS"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Disable "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p9

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":copy old rule with "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "<rule-deactivated> for this media types to new rule set"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2074
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p2

    move/from16 v3, p5

    move/from16 v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->copyOldRuleToNewRuleSet(Lcom/mediatek/simservs/client/policy/Rule;Lcom/mediatek/simservs/client/policy/RuleSet;II)Lcom/mediatek/simservs/client/policy/Rule;

    move-result-object v18

    .line 2075
    .restart local v18    # "nr":Lcom/mediatek/simservs/client/policy/Rule;
    invoke-virtual/range {v18 .. v18}, Lcom/mediatek/simservs/client/policy/Rule;->getConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mediatek/simservs/client/policy/Conditions;->addRuleDeactivated()V

    .line 2078
    .end local v18    # "nr":Lcom/mediatek/simservs/client/policy/Rule;
    :cond_14
    const-string v5, "MMTelSS"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Disable "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p9

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":copy old rule for remaining media types to new rule set"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v5, p0

    move-object/from16 v6, p3

    move-object/from16 v7, p2

    move/from16 v8, p6

    move/from16 v9, p12

    move/from16 v10, p5

    move/from16 v11, p4

    .line 2081
    invoke-virtual/range {v5 .. v11}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->copyOldRuleToNewRuleSetExceptSpecificMedia(Lcom/mediatek/simservs/client/policy/Rule;Lcom/mediatek/simservs/client/policy/RuleSet;IIII)Lcom/mediatek/simservs/client/policy/Rule;

    .line 2083
    const/4 v5, 0x1

    goto/16 :goto_3

    .line 2086
    :cond_15
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget v5, v5, Lcom/android/internal/telephony/MMTelSSTransport;->mDisableRuleMode:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_17

    .line 2087
    const-string v5, "MMTelSS"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Disable "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p9

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":not copy old rule to new rule set"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2089
    if-eqz p10, :cond_16

    .line 2090
    const-string v5, "MMTelSS"

    const-string v6, "handleCreateNewRuleForExistingCF(): ERROR: DISABLE_MODE_DELETE_RULE but updateSingleRule"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2092
    :cond_16
    const/4 v5, 0x0

    goto/16 :goto_3

    .line 2093
    :cond_17
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget v5, v5, Lcom/android/internal/telephony/MMTelSSTransport;->mDisableRuleMode:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_19

    .line 2094
    const-string v5, "MMTelSS"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Disable "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p9

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":copy old rule with <rule-deactivated> to new rule set"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2096
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p2

    move/from16 v3, p5

    move/from16 v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->copyOldRuleToNewRuleSet(Lcom/mediatek/simservs/client/policy/Rule;Lcom/mediatek/simservs/client/policy/RuleSet;II)Lcom/mediatek/simservs/client/policy/Rule;

    move-result-object v18

    .line 2097
    .restart local v18    # "nr":Lcom/mediatek/simservs/client/policy/Rule;
    invoke-virtual/range {v18 .. v18}, Lcom/mediatek/simservs/client/policy/Rule;->getConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mediatek/simservs/client/policy/Conditions;->addRuleDeactivated()V

    .line 2098
    if-eqz p10, :cond_18

    const/4 v5, 0x1

    move/from16 v0, p11

    if-ne v5, v0, :cond_18

    .line 2099
    move-object/from16 v0, v18

    iget-object v5, v0, Lcom/mediatek/simservs/client/policy/Rule;->mId:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/mediatek/simservs/client/CommunicationDiversion;->saveRule(Ljava/lang/String;)V

    .line 2101
    :cond_18
    const/4 v5, 0x1

    goto/16 :goto_3

    .line 2104
    .end local v18    # "nr":Lcom/mediatek/simservs/client/policy/Rule;
    :cond_19
    const/4 v5, 0x0

    goto/16 :goto_3
.end method

.method public handleCreateNewRuleForReqCB(Lcom/mediatek/simservs/client/SimservType;Lcom/mediatek/simservs/client/policy/RuleSet;Ljava/lang/String;IILjava/lang/String;ZII)Z
    .locals 9
    .param p1, "ssType"    # Lcom/mediatek/simservs/client/SimservType;
    .param p2, "newRuleSet"    # Lcom/mediatek/simservs/client/policy/RuleSet;
    .param p3, "facility"    # Ljava/lang/String;
    .param p4, "lockState"    # I
    .param p5, "setCBServiceClass"    # I
    .param p6, "RuleID"    # Ljava/lang/String;
    .param p7, "updateSingleRule"    # Z
    .param p8, "num_of_expansion"    # I
    .param p9, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mediatek/simservs/xcap/XcapException;
        }
    .end annotation

    .prologue
    .line 2202
    const/4 v2, 0x1

    .line 2204
    .local v2, "cbAllow":Z
    const/4 v7, 0x1

    if-ne p4, v7, :cond_3

    .line 2206
    const/4 v2, 0x0

    .line 2216
    invoke-virtual {p2, p6}, Lcom/mediatek/simservs/client/policy/RuleSet;->createNewRule(Ljava/lang/String;)Lcom/mediatek/simservs/client/policy/Rule;

    move-result-object v4

    .line 2217
    .local v4, "cbRule":Lcom/mediatek/simservs/client/policy/Rule;
    invoke-virtual {v4}, Lcom/mediatek/simservs/client/policy/Rule;->createConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v3

    .line 2218
    .local v3, "cbCond":Lcom/mediatek/simservs/client/policy/Conditions;
    invoke-virtual {v4}, Lcom/mediatek/simservs/client/policy/Rule;->createActions()Lcom/mediatek/simservs/client/policy/Actions;

    move-result-object v1

    .line 2221
    .local v1, "cbAction":Lcom/mediatek/simservs/client/policy/Actions;
    invoke-static/range {p9 .. p9}, Lcom/android/internal/telephony/MMTelSSUtils;->isOp06IccCard(I)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-static/range {p9 .. p9}, Lcom/android/internal/telephony/MMTelSSUtils;->isOp07IccCard(I)Z

    move-result v7

    if-nez v7, :cond_0

    .line 2223
    const/4 v7, 0x1

    if-ne p5, v7, :cond_4

    .line 2224
    const-string v7, "audio"

    invoke-virtual {v3, v7}, Lcom/mediatek/simservs/client/policy/Conditions;->addMedia(Ljava/lang/String;)V

    .line 2233
    :cond_0
    :goto_0
    const-string v7, "IR"

    invoke-virtual {p3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 2234
    invoke-virtual {v3}, Lcom/mediatek/simservs/client/policy/Conditions;->addRoaming()V

    .line 2235
    invoke-virtual {v1, v2}, Lcom/mediatek/simservs/client/policy/Actions;->setAllow(Z)V

    .line 2250
    :cond_1
    :goto_1
    if-eqz p7, :cond_2

    const/4 v7, 0x1

    move/from16 v0, p8

    if-ne v7, v0, :cond_2

    .line 2251
    instance-of v7, p1, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;

    if-eqz v7, :cond_a

    move-object v6, p1

    .line 2252
    check-cast v6, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;

    .line 2253
    .local v6, "ocb":Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;
    invoke-virtual {v6, p6}, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;->saveRule(Ljava/lang/String;)V

    .line 2260
    .end local v6    # "ocb":Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;
    :cond_2
    :goto_2
    const/4 v7, 0x1

    .end local v1    # "cbAction":Lcom/mediatek/simservs/client/policy/Actions;
    .end local v3    # "cbCond":Lcom/mediatek/simservs/client/policy/Conditions;
    .end local v4    # "cbRule":Lcom/mediatek/simservs/client/policy/Rule;
    :goto_3
    return v7

    .line 2211
    :cond_3
    const/4 v2, 0x1

    .line 2212
    const-string v7, "MMTelSS"

    const-string v8, "Disable one non-existed rule!Return from handleCreateNewRuleForReqCB() directly!"

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2213
    const/4 v7, 0x0

    goto :goto_3

    .line 2225
    .restart local v1    # "cbAction":Lcom/mediatek/simservs/client/policy/Actions;
    .restart local v3    # "cbCond":Lcom/mediatek/simservs/client/policy/Conditions;
    .restart local v4    # "cbRule":Lcom/mediatek/simservs/client/policy/Rule;
    :cond_4
    const/16 v7, 0x200

    if-ne p5, v7, :cond_5

    .line 2226
    const-string v7, "video"

    invoke-virtual {v3, v7}, Lcom/mediatek/simservs/client/policy/Conditions;->addMedia(Ljava/lang/String;)V

    goto :goto_0

    .line 2227
    :cond_5
    if-nez p5, :cond_0

    .line 2228
    const-string v7, "audio"

    invoke-virtual {v3, v7}, Lcom/mediatek/simservs/client/policy/Conditions;->addMedia(Ljava/lang/String;)V

    .line 2229
    const-string v7, "video"

    invoke-virtual {v3, v7}, Lcom/mediatek/simservs/client/policy/Conditions;->addMedia(Ljava/lang/String;)V

    goto :goto_0

    .line 2236
    :cond_6
    const-string v7, "AI"

    invoke-virtual {p3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 2238
    invoke-virtual {v1, v2}, Lcom/mediatek/simservs/client/policy/Actions;->setAllow(Z)V

    goto :goto_1

    .line 2239
    :cond_7
    const-string v7, "OI"

    invoke-virtual {p3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 2240
    invoke-virtual {v3}, Lcom/mediatek/simservs/client/policy/Conditions;->addInternational()V

    .line 2241
    invoke-virtual {v1, v2}, Lcom/mediatek/simservs/client/policy/Actions;->setAllow(Z)V

    goto :goto_1

    .line 2242
    :cond_8
    const-string v7, "OX"

    invoke-virtual {p3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 2243
    invoke-virtual {v3}, Lcom/mediatek/simservs/client/policy/Conditions;->addInternationalExHc()V

    .line 2244
    invoke-virtual {v1, v2}, Lcom/mediatek/simservs/client/policy/Actions;->setAllow(Z)V

    goto :goto_1

    .line 2245
    :cond_9
    const-string v7, "AO"

    invoke-virtual {p3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 2247
    invoke-virtual {v1, v2}, Lcom/mediatek/simservs/client/policy/Actions;->setAllow(Z)V

    goto :goto_1

    .line 2254
    :cond_a
    instance-of v7, p1, Lcom/mediatek/simservs/client/IncomingCommunicationBarring;

    if-eqz v7, :cond_2

    move-object v5, p1

    .line 2255
    check-cast v5, Lcom/mediatek/simservs/client/IncomingCommunicationBarring;

    .line 2256
    .local v5, "icb":Lcom/mediatek/simservs/client/IncomingCommunicationBarring;
    invoke-virtual {v5, p6}, Lcom/mediatek/simservs/client/IncomingCommunicationBarring;->saveRule(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public handleGetCB(Lcom/android/internal/telephony/MMTelSSRequest;)V
    .locals 31
    .param p1, "rr"    # Lcom/android/internal/telephony/MMTelSSRequest;

    .prologue
    .line 1228
    const/16 v25, -0x1

    .line 1229
    .local v25, "reqNo":I
    const/16 v28, -0x1

    .line 1230
    .local v28, "serialNo":I
    const/4 v11, -0x1

    .line 1232
    .local v11, "cbServiceClass":I
    const-string v10, ""

    .line 1233
    .local v10, "cBFacility":Ljava/lang/String;
    const/4 v2, 0x1

    new-array v0, v2, [I

    move-object/from16 v17, v0

    .line 1235
    .local v17, "get_cb_response":[I
    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v3, v17, v2

    .line 1238
    :try_start_0
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 1239
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v25

    .line 1240
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v28

    .line 1241
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 1242
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 1243
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 1244
    .local v8, "phoneId":I
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Read GET_CB Facility="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",serviceClass="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1246
    invoke-static {v8}, Lcom/android/internal/telephony/MMTelSSUtils;->isPreferXcap(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1247
    const-string v2, "MMTelSS"

    const-string v3, "handleGetCB(): !isPreferXcap()"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1248
    new-instance v2, Ljava/net/UnknownHostException;

    invoke-direct {v2}, Ljava/net/UnknownHostException;-><init>()V

    throw v2
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/mediatek/simservs/xcap/XcapException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 1510
    .end local v8    # "phoneId":I
    :catch_0
    move-exception v29

    .line 1511
    .local v29, "unknownHostException":Ljava/net/UnknownHostException;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    const/4 v3, 0x0

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mOcbCache:Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;
    invoke-static {v2, v3}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1002(Lcom/android/internal/telephony/MMTelSSTransport;Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;)Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;

    .line 1512
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    const/4 v3, -0x1

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mOcbCachePhoneId:I
    invoke-static {v2, v3}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1202(Lcom/android/internal/telephony/MMTelSSTransport;I)I

    .line 1513
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    const-wide/16 v4, 0x0

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mOcbCacheLastQueried:J
    invoke-static {v2, v4, v5}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1102(Lcom/android/internal/telephony/MMTelSSTransport;J)J

    .line 1514
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    const/4 v3, 0x0

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mIcbCache:Lcom/mediatek/simservs/client/IncomingCommunicationBarring;
    invoke-static {v2, v3}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1302(Lcom/android/internal/telephony/MMTelSSTransport;Lcom/mediatek/simservs/client/IncomingCommunicationBarring;)Lcom/mediatek/simservs/client/IncomingCommunicationBarring;

    .line 1515
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    const/4 v3, -0x1

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mIcbCachePhoneId:I
    invoke-static {v2, v3}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1502(Lcom/android/internal/telephony/MMTelSSTransport;I)I

    .line 1516
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    const-wide/16 v4, 0x0

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mIcbCacheLastQueried:J
    invoke-static {v2, v4, v5}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1402(Lcom/android/internal/telephony/MMTelSSTransport;J)J

    .line 1518
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v2, :cond_15

    .line 1519
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v3, 0x0

    move-object/from16 v0, v29

    invoke-static {v2, v3, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1520
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 1521
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1522
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->releaseNetwork()V

    .line 1598
    .end local v29    # "unknownHostException":Ljava/net/UnknownHostException;
    :cond_0
    :goto_0
    return-void

    .line 1251
    .restart local v8    # "phoneId":I
    :cond_1
    const/16 v22, 0x0

    .line 1254
    .local v22, "num_of_comparision":I
    const/16 v2, 0x210

    if-ne v11, v2, :cond_2

    .line 1255
    const/16 v11, 0x200

    .line 1258
    :cond_2
    if-nez v11, :cond_6

    .line 1259
    const/4 v11, 0x1

    .line 1261
    const/16 v22, 0x2

    .line 1262
    :try_start_1
    const-string v2, "MMTelSS"

    const-string v3, "cbServiceClass==0, try to 1st match by using SERVICE_CLASS_VOICE"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1270
    :goto_1
    const-string v2, "AO"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "OI"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "OX"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 1274
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 1275
    .local v14, "curTime":J
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleGetCB(): mOcbCache = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mOcbCache:Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;
    invoke-static {v4}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1000(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", curTime = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mOcbCacheLastQueried = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mOcbCacheLastQueried:J
    invoke-static {v4}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1100(Lcom/android/internal/telephony/MMTelSSTransport;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1277
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mOcbCache:Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1000(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;

    move-result-object v2

    if-eqz v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mOcbCachePhoneId:I
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1200(Lcom/android/internal/telephony/MMTelSSTransport;)I

    move-result v2

    if-ne v8, v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mOcbCache:Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1000(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;->isSupportEtag()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1279
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleGetCB(): using ETAG mOcbCache: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mOcbCache:Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;
    invoke-static {v4}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1000(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1280
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # invokes: Lcom/android/internal/telephony/MMTelSSTransport;->requestXcapNetwork(I)V
    invoke-static {v2, v8}, Lcom/android/internal/telephony/MMTelSSTransport;->access$300(Lcom/android/internal/telephony/MMTelSSTransport;I)V

    .line 1281
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mOcbCache:Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1000(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;

    move-result-object v23

    .line 1282
    .local v23, "ocb":Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mNetwork:Landroid/net/Network;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$400(Lcom/android/internal/telephony/MMTelSSTransport;)Landroid/net/Network;

    move-result-object v2

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;->setNetwork(Landroid/net/Network;)V

    .line 1283
    invoke-virtual/range {v23 .. v23}, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;->refresh()V

    .line 1284
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mOcbCacheLastQueried:J
    invoke-static {v2, v14, v15}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1102(Lcom/android/internal/telephony/MMTelSSTransport;J)J

    .line 1313
    :goto_2
    invoke-virtual/range {v23 .. v23}, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;->getRuleSet()Lcom/mediatek/simservs/client/policy/RuleSet;

    move-result-object v27

    .line 1314
    .local v27, "ruleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    const/16 v26, 0x0

    .line 1316
    .local v26, "ruleList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    if-eqz v27, :cond_b

    .line 1317
    invoke-virtual/range {v27 .. v27}, Lcom/mediatek/simservs/client/policy/RuleSet;->getRules()Ljava/util/List;

    move-result-object v26

    .line 1318
    if-nez v26, :cond_a

    .line 1319
    const-string v2, "MMTelSS"

    const-string v3, "Dump Get MO CB XML: ruleset with empty rules"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1328
    :goto_3
    if-eqz v26, :cond_14

    .line 1329
    const/16 v20, 0x0

    .local v20, "it":I
    :goto_4
    move/from16 v0, v20

    move/from16 v1, v22

    if-ge v0, v1, :cond_15

    .line 1330
    const/4 v2, 0x1

    move/from16 v0, v20

    if-ne v0, v2, :cond_4

    const/4 v2, 0x1

    if-ne v11, v2, :cond_4

    .line 1332
    const/16 v11, 0x200

    .line 1333
    const-string v2, "MMTelSS"

    const-string v3, "cbServiceClass==0, try to 2nd match by using SERVICE_CLASS_VIDEO"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1336
    :cond_4
    const/16 v18, 0x0

    .local v18, "i":I
    :goto_5
    invoke-interface/range {v26 .. v26}, Ljava/util/List;->size()I

    move-result v2

    move/from16 v0, v18

    if-ge v0, v2, :cond_5

    .line 1337
    move-object/from16 v0, v26

    move/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/mediatek/simservs/client/policy/Rule;

    .line 1338
    .local v24, "r":Lcom/mediatek/simservs/client/policy/Rule;
    invoke-virtual/range {v24 .. v24}, Lcom/mediatek/simservs/client/policy/Rule;->getConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v13

    .line 1339
    .local v13, "cond":Lcom/mediatek/simservs/client/policy/Conditions;
    invoke-virtual/range {v24 .. v24}, Lcom/mediatek/simservs/client/policy/Rule;->getActions()Lcom/mediatek/simservs/client/policy/Actions;

    move-result-object v9

    .line 1340
    .local v9, "action":Lcom/mediatek/simservs/client/policy/Actions;
    const/16 v21, 0x0

    .line 1342
    .local v21, "mediaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleGetCB():MO-facility="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",action="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v9}, Lcom/mediatek/simservs/client/policy/Actions;->isAllow()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1343
    if-eqz v13, :cond_c

    .line 1344
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleGetCB():MO-international="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v13}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendInternational()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",roaming="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v13}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendRoaming()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1345
    invoke-virtual {v13}, Lcom/mediatek/simservs/client/policy/Conditions;->getMedias()Ljava/util/List;

    move-result-object v21

    .line 1350
    :goto_6
    if-eqz v13, :cond_e

    invoke-virtual {v13}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendInternational()Z

    move-result v2

    if-eqz v2, :cond_e

    const-string v2, "OI"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v11}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->containSpecificMedia(Ljava/util/List;I)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 1353
    invoke-virtual {v9}, Lcom/mediatek/simservs/client/policy/Actions;->isAllow()Z

    move-result v2

    if-nez v2, :cond_d

    if-eqz v13, :cond_d

    invoke-virtual {v13}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendRuleDeactivated()Z

    move-result v2

    if-nez v2, :cond_d

    .line 1355
    const/4 v2, 0x0

    aget v3, v17, v2

    or-int/2addr v3, v11

    aput v3, v17, v2

    .line 1329
    .end local v9    # "action":Lcom/mediatek/simservs/client/policy/Actions;
    .end local v13    # "cond":Lcom/mediatek/simservs/client/policy/Conditions;
    .end local v21    # "mediaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v24    # "r":Lcom/mediatek/simservs/client/policy/Rule;
    :cond_5
    :goto_7
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_4

    .line 1265
    .end local v14    # "curTime":J
    .end local v18    # "i":I
    .end local v20    # "it":I
    .end local v23    # "ocb":Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;
    .end local v26    # "ruleList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    .end local v27    # "ruleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    :cond_6
    const/16 v22, 0x1

    goto/16 :goto_1

    .line 1285
    .restart local v14    # "curTime":J
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mOcbCache:Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1000(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;

    move-result-object v2

    if-eqz v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mOcbCachePhoneId:I
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1200(Lcom/android/internal/telephony/MMTelSSTransport;)I

    move-result v2

    if-ne v8, v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mOcbCacheLastQueried:J
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1100(Lcom/android/internal/telephony/MMTelSSTransport;)J

    move-result-wide v2

    cmp-long v2, v14, v2

    if-ltz v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mOcbCacheLastQueried:J
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1100(Lcom/android/internal/telephony/MMTelSSTransport;)J

    move-result-wide v2

    sub-long v2, v14, v2

    const-wide/32 v4, 0x1d4c0

    cmp-long v2, v2, v4

    if-gez v2, :cond_8

    .line 1288
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleGetCB(): using mOcbCache: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mOcbCache:Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;
    invoke-static {v4}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1000(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1289
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mOcbCache:Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1000(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;

    move-result-object v23

    .restart local v23    # "ocb":Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;
    goto/16 :goto_2

    .line 1291
    .end local v23    # "ocb":Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # invokes: Lcom/android/internal/telephony/MMTelSSTransport;->requestXcapNetwork(I)V
    invoke-static {v2, v8}, Lcom/android/internal/telephony/MMTelSSTransport;->access$300(Lcom/android/internal/telephony/MMTelSSTransport;I)V

    .line 1293
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-static {v8}, Lcom/android/internal/telephony/MMTelSSUtils;->getXui(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/telephony/MMTelSSTransport;->mXui:Ljava/lang/String;

    .line 1294
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-static {v8}, Lcom/android/internal/telephony/MMTelSSUtils;->getXcapRootUri(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/telephony/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    .line 1295
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-static {v8}, Lcom/android/internal/telephony/MMTelSSUtils;->getXIntendedId(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/telephony/MMTelSSTransport;->mXIntendedId:Ljava/lang/String;

    .line 1297
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v2, v2, Lcom/android/internal/telephony/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1298
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleGetCB(): XcapRoot = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v4, v4, Lcom/android/internal/telephony/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1299
    new-instance v2, Ljava/net/UnknownHostException;

    invoke-direct {v2}, Ljava/net/UnknownHostException;-><init>()V

    throw v2
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/mediatek/simservs/xcap/XcapException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 1526
    .end local v8    # "phoneId":I
    .end local v14    # "curTime":J
    .end local v22    # "num_of_comparision":I
    :catch_1
    move-exception v30

    .line 1527
    .local v30, "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    const-string v2, "MMTelSS"

    const-string v3, "handleGetCB(): XcapException"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1528
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    const/4 v3, 0x0

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mOcbCache:Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;
    invoke-static {v2, v3}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1002(Lcom/android/internal/telephony/MMTelSSTransport;Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;)Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;

    .line 1529
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    const/4 v3, -0x1

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mOcbCachePhoneId:I
    invoke-static {v2, v3}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1202(Lcom/android/internal/telephony/MMTelSSTransport;I)I

    .line 1530
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    const-wide/16 v4, 0x0

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mOcbCacheLastQueried:J
    invoke-static {v2, v4, v5}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1102(Lcom/android/internal/telephony/MMTelSSTransport;J)J

    .line 1531
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    const/4 v3, 0x0

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mIcbCache:Lcom/mediatek/simservs/client/IncomingCommunicationBarring;
    invoke-static {v2, v3}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1302(Lcom/android/internal/telephony/MMTelSSTransport;Lcom/mediatek/simservs/client/IncomingCommunicationBarring;)Lcom/mediatek/simservs/client/IncomingCommunicationBarring;

    .line 1532
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    const/4 v3, -0x1

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mIcbCachePhoneId:I
    invoke-static {v2, v3}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1502(Lcom/android/internal/telephony/MMTelSSTransport;I)I

    .line 1533
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    const-wide/16 v4, 0x0

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mIcbCacheLastQueried:J
    invoke-static {v2, v4, v5}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1402(Lcom/android/internal/telephony/MMTelSSTransport;J)J

    .line 1535
    invoke-virtual/range {v30 .. v30}, Lcom/mediatek/simservs/xcap/XcapException;->printStackTrace()V

    .line 1536
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v2, :cond_15

    .line 1537
    invoke-virtual/range {v30 .. v30}, Lcom/mediatek/simservs/xcap/XcapException;->isConnectionError()Z

    move-result v2

    if-eqz v2, :cond_28

    .line 1538
    const-string v2, "MMTelSS"

    const-string v3, "handleGetCB(): xcapException.isConnectionError()"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1539
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v3, 0x0

    new-instance v4, Ljava/net/UnknownHostException;

    invoke-direct {v4}, Ljava/net/UnknownHostException;-><init>()V

    invoke-static {v2, v3, v4}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1543
    :goto_8
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 1544
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1545
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->releaseNetwork()V

    goto/16 :goto_0

    .line 1302
    .end local v30    # "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    .restart local v8    # "phoneId":I
    .restart local v14    # "curTime":J
    .restart local v22    # "num_of_comparision":I
    :cond_9
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v3, v3, Lcom/android/internal/telephony/MMTelSSTransport;->mXui:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v4, v4, Lcom/android/internal/telephony/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v5, v5, Lcom/android/internal/telephony/MMTelSSTransport;->mXIntendedId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v6, v6, Lcom/android/internal/telephony/MMTelSSTransport;->mUserName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v7, v7, Lcom/android/internal/telephony/MMTelSSTransport;->mPassword:Ljava/lang/String;

    invoke-virtual/range {v2 .. v8}, Lcom/android/internal/telephony/MMTelSSTransport;->setSimservsInitParameters(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1305
    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mSimservs:Lcom/mediatek/simservs/client/SimServs;
    invoke-static {}, Lcom/android/internal/telephony/MMTelSSTransport;->access$500()Lcom/mediatek/simservs/client/SimServs;

    move-result-object v2

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mNetwork:Landroid/net/Network;
    invoke-static {v4}, Lcom/android/internal/telephony/MMTelSSTransport;->access$400(Lcom/android/internal/telephony/MMTelSSTransport;)Landroid/net/Network;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/mediatek/simservs/client/SimServs;->getOutgoingCommunicationBarring(ZLandroid/net/Network;)Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;

    move-result-object v23

    .line 1306
    .restart local v23    # "ocb":Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    move-object/from16 v0, v23

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mOcbCache:Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;
    invoke-static {v2, v0}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1002(Lcom/android/internal/telephony/MMTelSSTransport;Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;)Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;

    .line 1307
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mOcbCachePhoneId:I
    invoke-static {v2, v8}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1202(Lcom/android/internal/telephony/MMTelSSTransport;I)I

    .line 1308
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mOcbCacheLastQueried:J
    invoke-static {v2, v14, v15}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1102(Lcom/android/internal/telephony/MMTelSSTransport;J)J

    .line 1309
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleGetCB(): new mOcbCache = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mOcbCache:Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;
    invoke-static {v4}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1000(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", curTime = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/mediatek/simservs/xcap/XcapException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_2

    .line 1549
    .end local v8    # "phoneId":I
    .end local v14    # "curTime":J
    .end local v22    # "num_of_comparision":I
    .end local v23    # "ocb":Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;
    :catch_2
    move-exception v16

    .line 1550
    .local v16, "e":Ljava/lang/Exception;
    const-string v2, "MMTelSS"

    const-string v3, "handleGetCB():Start to Print Stack Trace"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1551
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    const/4 v3, 0x0

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mOcbCache:Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;
    invoke-static {v2, v3}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1002(Lcom/android/internal/telephony/MMTelSSTransport;Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;)Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;

    .line 1552
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    const/4 v3, -0x1

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mOcbCachePhoneId:I
    invoke-static {v2, v3}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1202(Lcom/android/internal/telephony/MMTelSSTransport;I)I

    .line 1553
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    const-wide/16 v4, 0x0

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mOcbCacheLastQueried:J
    invoke-static {v2, v4, v5}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1102(Lcom/android/internal/telephony/MMTelSSTransport;J)J

    .line 1554
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    const/4 v3, 0x0

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mIcbCache:Lcom/mediatek/simservs/client/IncomingCommunicationBarring;
    invoke-static {v2, v3}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1302(Lcom/android/internal/telephony/MMTelSSTransport;Lcom/mediatek/simservs/client/IncomingCommunicationBarring;)Lcom/mediatek/simservs/client/IncomingCommunicationBarring;

    .line 1555
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    const/4 v3, -0x1

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mIcbCachePhoneId:I
    invoke-static {v2, v3}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1502(Lcom/android/internal/telephony/MMTelSSTransport;I)I

    .line 1556
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    const-wide/16 v4, 0x0

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mIcbCacheLastQueried:J
    invoke-static {v2, v4, v5}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1402(Lcom/android/internal/telephony/MMTelSSTransport;J)J

    .line 1558
    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v3, v17, v2

    .line 1559
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Exception;->printStackTrace()V

    .line 1560
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v2, :cond_15

    .line 1561
    const/4 v2, 0x2

    invoke-static {v2}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v12

    .line 1562
    .local v12, "ce":Lcom/android/internal/telephony/CommandException;
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v3, 0x0

    invoke-static {v2, v3, v12}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1563
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 1564
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1565
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->releaseNetwork()V

    goto/16 :goto_0

    .line 1321
    .end local v12    # "ce":Lcom/android/internal/telephony/CommandException;
    .end local v16    # "e":Ljava/lang/Exception;
    .restart local v8    # "phoneId":I
    .restart local v14    # "curTime":J
    .restart local v22    # "num_of_comparision":I
    .restart local v23    # "ocb":Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;
    .restart local v26    # "ruleList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    .restart local v27    # "ruleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    :cond_a
    :try_start_3
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Dump Get MO CB XML:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v27 .. v27}, Lcom/mediatek/simservs/client/policy/RuleSet;->toXmlString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 1324
    :cond_b
    const-string v2, "MMTelSS"

    const-string v3, "No MO related CB rules in remote server"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 1347
    .restart local v9    # "action":Lcom/mediatek/simservs/client/policy/Actions;
    .restart local v13    # "cond":Lcom/mediatek/simservs/client/policy/Conditions;
    .restart local v18    # "i":I
    .restart local v20    # "it":I
    .restart local v21    # "mediaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v24    # "r":Lcom/mediatek/simservs/client/policy/Rule;
    :cond_c
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleGetCB():Empty MO cond (cond==null) for this rule="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 1357
    :cond_d
    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v3, v17, v2

    goto/16 :goto_7

    .line 1360
    :cond_e
    if-eqz v13, :cond_11

    invoke-virtual {v13}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendInternationalExHc()Z

    move-result v2

    if-eqz v2, :cond_11

    const-string v2, "OX"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v11}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->containSpecificMedia(Ljava/util/List;I)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 1363
    invoke-virtual {v9}, Lcom/mediatek/simservs/client/policy/Actions;->isAllow()Z

    move-result v2

    if-nez v2, :cond_10

    if-eqz v13, :cond_10

    invoke-virtual {v13}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendRuleDeactivated()Z

    move-result v2

    if-nez v2, :cond_10

    .line 1365
    const/4 v2, 0x0

    aget v3, v17, v2

    or-int/2addr v3, v11

    aput v3, v17, v2

    .line 1336
    :cond_f
    :goto_9
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_5

    .line 1367
    :cond_10
    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v3, v17, v2

    goto :goto_9

    .line 1369
    :cond_11
    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v11}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->isBAOC(Lcom/mediatek/simservs/client/policy/Conditions;I)Z

    move-result v2

    if-eqz v2, :cond_f

    const-string v2, "AO"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 1373
    invoke-virtual {v9}, Lcom/mediatek/simservs/client/policy/Actions;->isAllow()Z

    move-result v2

    if-nez v2, :cond_13

    if-eqz v13, :cond_12

    if-eqz v13, :cond_13

    invoke-virtual {v13}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendRuleDeactivated()Z

    move-result v2

    if-nez v2, :cond_13

    .line 1375
    :cond_12
    const/4 v2, 0x0

    aget v3, v17, v2

    or-int/2addr v3, v11

    aput v3, v17, v2

    goto/16 :goto_7

    .line 1377
    :cond_13
    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v3, v17, v2

    goto/16 :goto_7

    .line 1385
    .end local v9    # "action":Lcom/mediatek/simservs/client/policy/Actions;
    .end local v13    # "cond":Lcom/mediatek/simservs/client/policy/Conditions;
    .end local v18    # "i":I
    .end local v20    # "it":I
    .end local v21    # "mediaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v24    # "r":Lcom/mediatek/simservs/client/policy/Rule;
    :cond_14
    const-string v2, "MMTelSS"

    const-string v3, "ruleList is null, MO CB is disabled"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1386
    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v3, v17, v2
    :try_end_3
    .catch Ljava/net/UnknownHostException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lcom/mediatek/simservs/xcap/XcapException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 1573
    .end local v8    # "phoneId":I
    .end local v14    # "curTime":J
    .end local v22    # "num_of_comparision":I
    .end local v23    # "ocb":Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;
    .end local v26    # "ruleList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    .end local v27    # "ruleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    :cond_15
    :goto_a
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v2, :cond_16

    .line 1591
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v3, 0x0

    move-object/from16 v0, v17

    invoke-static {v2, v0, v3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1592
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 1595
    :cond_16
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1596
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->releaseNetwork()V

    goto/16 :goto_0

    .line 1389
    .restart local v8    # "phoneId":I
    .restart local v22    # "num_of_comparision":I
    :cond_17
    :try_start_4
    const-string v2, "AI"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_18

    const-string v2, "IR"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 1392
    :cond_18
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 1393
    .restart local v14    # "curTime":J
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleGetCB(): mIcbCache = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mIcbCache:Lcom/mediatek/simservs/client/IncomingCommunicationBarring;
    invoke-static {v4}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1300(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/mediatek/simservs/client/IncomingCommunicationBarring;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", curTime = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mIcbCacheLastQueried = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mIcbCacheLastQueried:J
    invoke-static {v4}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1400(Lcom/android/internal/telephony/MMTelSSTransport;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1395
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mIcbCache:Lcom/mediatek/simservs/client/IncomingCommunicationBarring;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1300(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/mediatek/simservs/client/IncomingCommunicationBarring;

    move-result-object v2

    if-eqz v2, :cond_1b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mIcbCachePhoneId:I
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1500(Lcom/android/internal/telephony/MMTelSSTransport;)I

    move-result v2

    if-ne v8, v2, :cond_1b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mIcbCache:Lcom/mediatek/simservs/client/IncomingCommunicationBarring;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1300(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/mediatek/simservs/client/IncomingCommunicationBarring;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/simservs/client/IncomingCommunicationBarring;->isSupportEtag()Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 1397
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleGetCB(): using ETAG mIcbCache: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mIcbCache:Lcom/mediatek/simservs/client/IncomingCommunicationBarring;
    invoke-static {v4}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1300(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/mediatek/simservs/client/IncomingCommunicationBarring;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1398
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # invokes: Lcom/android/internal/telephony/MMTelSSTransport;->requestXcapNetwork(I)V
    invoke-static {v2, v8}, Lcom/android/internal/telephony/MMTelSSTransport;->access$300(Lcom/android/internal/telephony/MMTelSSTransport;I)V

    .line 1399
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mIcbCache:Lcom/mediatek/simservs/client/IncomingCommunicationBarring;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1300(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/mediatek/simservs/client/IncomingCommunicationBarring;

    move-result-object v19

    .line 1400
    .local v19, "icb":Lcom/mediatek/simservs/client/IncomingCommunicationBarring;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mNetwork:Landroid/net/Network;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$400(Lcom/android/internal/telephony/MMTelSSTransport;)Landroid/net/Network;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lcom/mediatek/simservs/client/IncomingCommunicationBarring;->setNetwork(Landroid/net/Network;)V

    .line 1401
    invoke-virtual/range {v19 .. v19}, Lcom/mediatek/simservs/client/IncomingCommunicationBarring;->refresh()V

    .line 1402
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mIcbCacheLastQueried:J
    invoke-static {v2, v14, v15}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1402(Lcom/android/internal/telephony/MMTelSSTransport;J)J

    .line 1431
    :goto_b
    invoke-virtual/range {v19 .. v19}, Lcom/mediatek/simservs/client/IncomingCommunicationBarring;->getRuleSet()Lcom/mediatek/simservs/client/policy/RuleSet;

    move-result-object v27

    .line 1432
    .restart local v27    # "ruleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    const/16 v26, 0x0

    .line 1434
    .restart local v26    # "ruleList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    if-eqz v27, :cond_1f

    .line 1435
    invoke-virtual/range {v27 .. v27}, Lcom/mediatek/simservs/client/policy/RuleSet;->getRules()Ljava/util/List;

    move-result-object v26

    .line 1436
    if-nez v26, :cond_1e

    .line 1437
    const-string v2, "MMTelSS"

    const-string v3, "Dump Get MT CB XML: ruleset with empty rules"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1446
    :goto_c
    if-eqz v26, :cond_26

    .line 1447
    const/16 v20, 0x0

    .restart local v20    # "it":I
    :goto_d
    move/from16 v0, v20

    move/from16 v1, v22

    if-ge v0, v1, :cond_15

    .line 1448
    const/4 v2, 0x1

    move/from16 v0, v20

    if-ne v0, v2, :cond_19

    const/4 v2, 0x1

    if-ne v11, v2, :cond_19

    .line 1450
    const/16 v11, 0x200

    .line 1451
    const-string v2, "MMTelSS"

    const-string v3, "cbServiceClass==0, try to 2nd match by using SERVICE_CLASS_VIDEO"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1453
    :cond_19
    const/16 v18, 0x0

    .restart local v18    # "i":I
    :goto_e
    invoke-interface/range {v26 .. v26}, Ljava/util/List;->size()I

    move-result v2

    move/from16 v0, v18

    if-ge v0, v2, :cond_25

    .line 1454
    move-object/from16 v0, v26

    move/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/mediatek/simservs/client/policy/Rule;

    .line 1455
    .restart local v24    # "r":Lcom/mediatek/simservs/client/policy/Rule;
    invoke-virtual/range {v24 .. v24}, Lcom/mediatek/simservs/client/policy/Rule;->getConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v13

    .line 1456
    .restart local v13    # "cond":Lcom/mediatek/simservs/client/policy/Conditions;
    invoke-virtual/range {v24 .. v24}, Lcom/mediatek/simservs/client/policy/Rule;->getActions()Lcom/mediatek/simservs/client/policy/Actions;

    move-result-object v9

    .line 1457
    .restart local v9    # "action":Lcom/mediatek/simservs/client/policy/Actions;
    const/16 v21, 0x0

    .line 1459
    .restart local v21    # "mediaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleGetCB():MT-facility="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",action="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v9}, Lcom/mediatek/simservs/client/policy/Actions;->isAllow()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1460
    if-eqz v13, :cond_20

    .line 1461
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleGetCB():MT-international="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v13}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendInternational()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",roaming="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v13}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendRoaming()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",anonymous="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v13}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendAnonymous()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1462
    invoke-virtual {v13}, Lcom/mediatek/simservs/client/policy/Conditions;->getMedias()Ljava/util/List;

    move-result-object v21

    .line 1467
    :goto_f
    if-eqz v13, :cond_22

    invoke-virtual {v13}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendRoaming()Z

    move-result v2

    if-eqz v2, :cond_22

    const-string v2, "IR"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v11}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->containSpecificMedia(Ljava/util/List;I)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 1470
    invoke-virtual {v9}, Lcom/mediatek/simservs/client/policy/Actions;->isAllow()Z

    move-result v2

    if-nez v2, :cond_21

    if-eqz v13, :cond_21

    invoke-virtual {v13}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendRuleDeactivated()Z

    move-result v2

    if-nez v2, :cond_21

    .line 1472
    const/4 v2, 0x0

    aget v3, v17, v2

    or-int/2addr v3, v11

    aput v3, v17, v2

    .line 1453
    :cond_1a
    :goto_10
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_e

    .line 1403
    .end local v9    # "action":Lcom/mediatek/simservs/client/policy/Actions;
    .end local v13    # "cond":Lcom/mediatek/simservs/client/policy/Conditions;
    .end local v18    # "i":I
    .end local v19    # "icb":Lcom/mediatek/simservs/client/IncomingCommunicationBarring;
    .end local v20    # "it":I
    .end local v21    # "mediaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v24    # "r":Lcom/mediatek/simservs/client/policy/Rule;
    .end local v26    # "ruleList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    .end local v27    # "ruleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    :cond_1b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mIcbCache:Lcom/mediatek/simservs/client/IncomingCommunicationBarring;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1300(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/mediatek/simservs/client/IncomingCommunicationBarring;

    move-result-object v2

    if-eqz v2, :cond_1c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mIcbCachePhoneId:I
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1500(Lcom/android/internal/telephony/MMTelSSTransport;)I

    move-result v2

    if-ne v8, v2, :cond_1c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mIcbCacheLastQueried:J
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1400(Lcom/android/internal/telephony/MMTelSSTransport;)J

    move-result-wide v2

    cmp-long v2, v14, v2

    if-ltz v2, :cond_1c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mIcbCacheLastQueried:J
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1400(Lcom/android/internal/telephony/MMTelSSTransport;)J

    move-result-wide v2

    sub-long v2, v14, v2

    const-wide/32 v4, 0x1d4c0

    cmp-long v2, v2, v4

    if-gez v2, :cond_1c

    .line 1406
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleGetCB(): using mIcbCache: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mIcbCache:Lcom/mediatek/simservs/client/IncomingCommunicationBarring;
    invoke-static {v4}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1300(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/mediatek/simservs/client/IncomingCommunicationBarring;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1407
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mIcbCache:Lcom/mediatek/simservs/client/IncomingCommunicationBarring;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1300(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/mediatek/simservs/client/IncomingCommunicationBarring;

    move-result-object v19

    .restart local v19    # "icb":Lcom/mediatek/simservs/client/IncomingCommunicationBarring;
    goto/16 :goto_b

    .line 1409
    .end local v19    # "icb":Lcom/mediatek/simservs/client/IncomingCommunicationBarring;
    :cond_1c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # invokes: Lcom/android/internal/telephony/MMTelSSTransport;->requestXcapNetwork(I)V
    invoke-static {v2, v8}, Lcom/android/internal/telephony/MMTelSSTransport;->access$300(Lcom/android/internal/telephony/MMTelSSTransport;I)V

    .line 1411
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-static {v8}, Lcom/android/internal/telephony/MMTelSSUtils;->getXui(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/telephony/MMTelSSTransport;->mXui:Ljava/lang/String;

    .line 1412
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-static {v8}, Lcom/android/internal/telephony/MMTelSSUtils;->getXcapRootUri(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/telephony/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    .line 1413
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-static {v8}, Lcom/android/internal/telephony/MMTelSSUtils;->getXIntendedId(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/telephony/MMTelSSTransport;->mXIntendedId:Ljava/lang/String;

    .line 1415
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v2, v2, Lcom/android/internal/telephony/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 1416
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleGetCB(): XcapRoot = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v4, v4, Lcom/android/internal/telephony/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1417
    new-instance v2, Ljava/net/UnknownHostException;

    invoke-direct {v2}, Ljava/net/UnknownHostException;-><init>()V

    throw v2

    .line 1420
    :cond_1d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v3, v3, Lcom/android/internal/telephony/MMTelSSTransport;->mXui:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v4, v4, Lcom/android/internal/telephony/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v5, v5, Lcom/android/internal/telephony/MMTelSSTransport;->mXIntendedId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v6, v6, Lcom/android/internal/telephony/MMTelSSTransport;->mUserName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v7, v7, Lcom/android/internal/telephony/MMTelSSTransport;->mPassword:Ljava/lang/String;

    invoke-virtual/range {v2 .. v8}, Lcom/android/internal/telephony/MMTelSSTransport;->setSimservsInitParameters(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1423
    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mSimservs:Lcom/mediatek/simservs/client/SimServs;
    invoke-static {}, Lcom/android/internal/telephony/MMTelSSTransport;->access$500()Lcom/mediatek/simservs/client/SimServs;

    move-result-object v2

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mNetwork:Landroid/net/Network;
    invoke-static {v4}, Lcom/android/internal/telephony/MMTelSSTransport;->access$400(Lcom/android/internal/telephony/MMTelSSTransport;)Landroid/net/Network;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/mediatek/simservs/client/SimServs;->getIncomingCommunicationBarring(ZLandroid/net/Network;)Lcom/mediatek/simservs/client/IncomingCommunicationBarring;

    move-result-object v19

    .line 1424
    .restart local v19    # "icb":Lcom/mediatek/simservs/client/IncomingCommunicationBarring;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    move-object/from16 v0, v19

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mIcbCache:Lcom/mediatek/simservs/client/IncomingCommunicationBarring;
    invoke-static {v2, v0}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1302(Lcom/android/internal/telephony/MMTelSSTransport;Lcom/mediatek/simservs/client/IncomingCommunicationBarring;)Lcom/mediatek/simservs/client/IncomingCommunicationBarring;

    .line 1425
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mIcbCachePhoneId:I
    invoke-static {v2, v8}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1502(Lcom/android/internal/telephony/MMTelSSTransport;I)I

    .line 1426
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mIcbCacheLastQueried:J
    invoke-static {v2, v14, v15}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1402(Lcom/android/internal/telephony/MMTelSSTransport;J)J

    .line 1427
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleGetCB(): new mIcbCache = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mIcbCache:Lcom/mediatek/simservs/client/IncomingCommunicationBarring;
    invoke-static {v4}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1300(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/mediatek/simservs/client/IncomingCommunicationBarring;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", curTime = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    .line 1439
    .restart local v26    # "ruleList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    .restart local v27    # "ruleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    :cond_1e
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Dump Get MT CB XML:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v27 .. v27}, Lcom/mediatek/simservs/client/policy/RuleSet;->toXmlString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c

    .line 1442
    :cond_1f
    const-string v2, "MMTelSS"

    const-string v3, "No MT related CB rules in remote server"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c

    .line 1464
    .restart local v9    # "action":Lcom/mediatek/simservs/client/policy/Actions;
    .restart local v13    # "cond":Lcom/mediatek/simservs/client/policy/Conditions;
    .restart local v18    # "i":I
    .restart local v20    # "it":I
    .restart local v21    # "mediaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v24    # "r":Lcom/mediatek/simservs/client/policy/Rule;
    :cond_20
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleGetCB():Empty MT cond (cond==null) for this rule="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_f

    .line 1474
    :cond_21
    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v3, v17, v2

    goto/16 :goto_10

    .line 1476
    :cond_22
    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v11}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->isBAIC(Lcom/mediatek/simservs/client/policy/Conditions;I)Z

    move-result v2

    if-eqz v2, :cond_1a

    const-string v2, "AI"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 1480
    invoke-virtual {v9}, Lcom/mediatek/simservs/client/policy/Actions;->isAllow()Z

    move-result v2

    if-nez v2, :cond_24

    if-eqz v13, :cond_23

    if-eqz v13, :cond_24

    invoke-virtual {v13}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendRuleDeactivated()Z

    move-result v2

    if-nez v2, :cond_24

    .line 1482
    :cond_23
    const/4 v2, 0x0

    aget v3, v17, v2

    or-int/2addr v3, v11

    aput v3, v17, v2

    goto/16 :goto_10

    .line 1484
    :cond_24
    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v3, v17, v2

    goto/16 :goto_10

    .line 1447
    .end local v9    # "action":Lcom/mediatek/simservs/client/policy/Actions;
    .end local v13    # "cond":Lcom/mediatek/simservs/client/policy/Conditions;
    .end local v21    # "mediaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v24    # "r":Lcom/mediatek/simservs/client/policy/Rule;
    :cond_25
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_d

    .line 1492
    .end local v18    # "i":I
    .end local v20    # "it":I
    :cond_26
    const-string v2, "MMTelSS"

    const-string v3, "ruleList is null, MT CB is disabled"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1493
    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v3, v17, v2

    goto/16 :goto_a

    .line 1507
    .end local v14    # "curTime":J
    .end local v19    # "icb":Lcom/mediatek/simservs/client/IncomingCommunicationBarring;
    .end local v26    # "ruleList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    .end local v27    # "ruleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    :cond_27
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleGetCB(): Not support query for CB Facility="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/net/UnknownHostException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lcom/mediatek/simservs/xcap/XcapException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_a

    .line 1541
    .end local v8    # "phoneId":I
    .end local v22    # "num_of_comparision":I
    .restart local v30    # "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    :cond_28
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v3, 0x0

    move-object/from16 v0, v30

    invoke-static {v2, v3, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    goto/16 :goto_8
.end method

.method public handleGetCF(Lcom/android/internal/telephony/MMTelSSRequest;)V
    .locals 45
    .param p1, "rr"    # Lcom/android/internal/telephony/MMTelSSRequest;

    .prologue
    .line 1601
    const/16 v38, -0x1

    .line 1602
    .local v38, "reqNo":I
    const/16 v41, -0x1

    .line 1603
    .local v41, "serialNo":I
    const/16 v29, 0x1

    .line 1604
    .local v29, "numInfos":I
    const/16 v22, 0x0

    .line 1606
    .local v22, "infos":[Lcom/android/internal/telephony/CallForwardInfo;
    new-instance v33, Ljava/util/ArrayList;

    invoke-direct/range {v33 .. v33}, Ljava/util/ArrayList;-><init>()V

    .line 1608
    .local v33, "queriedCallForwardInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/CallForwardInfo;>;"
    const/4 v15, -0x1

    .line 1609
    .local v15, "cfAction":I
    const/16 v37, -0x1

    .line 1610
    .local v37, "reason":I
    const/16 v42, -0x1

    .line 1611
    .local v42, "serviceClass":I
    const/16 v32, -0x1

    .line 1612
    .local v32, "orgServiceClass":I
    const-string v16, ""

    .line 1613
    .local v16, "cfNumber":Ljava/lang/String;
    const-string v11, ""

    .line 1614
    .local v11, "CFPhoneNum":Ljava/lang/String;
    const/16 v35, 0x0

    .line 1615
    .local v35, "queryStatus":I
    const/16 v28, 0x14

    .line 1633
    .local v28, "noReplyTimer":I
    :try_start_0
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 1634
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    move-result v38

    .line 1635
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    move-result v41

    .line 1636
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 1637
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    move-result v37

    .line 1638
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    move-result v42

    .line 1639
    move/from16 v32, v42

    .line 1640
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v4}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 1641
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 1643
    .local v10, "phoneId":I
    invoke-static {v10}, Lcom/android/internal/telephony/MMTelSSUtils;->isPreferXcap(I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1644
    const-string v4, "MMTelSS"

    const-string v5, "handleGetCF(): !isPreferXcap()"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1645
    new-instance v4, Ljava/net/UnknownHostException;

    invoke-direct {v4}, Ljava/net/UnknownHostException;-><init>()V

    throw v4
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/mediatek/simservs/xcap/XcapException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 1885
    .end local v10    # "phoneId":I
    :catch_0
    move-exception v43

    .line 1886
    .local v43, "unknownHostException":Ljava/net/UnknownHostException;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    const/4 v5, 0x0

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCdCache:Lcom/mediatek/simservs/client/CommunicationDiversion;
    invoke-static {v4, v5}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1602(Lcom/android/internal/telephony/MMTelSSTransport;Lcom/mediatek/simservs/client/CommunicationDiversion;)Lcom/mediatek/simservs/client/CommunicationDiversion;

    .line 1887
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    const/4 v5, -0x1

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCdCachePhoneId:I
    invoke-static {v4, v5}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1802(Lcom/android/internal/telephony/MMTelSSTransport;I)I

    .line 1888
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    const-wide/16 v6, 0x0

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCdCacheLastQueried:J
    invoke-static {v4, v6, v7}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1702(Lcom/android/internal/telephony/MMTelSSTransport;J)J

    .line 1890
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v4, :cond_21

    .line 1891
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v5, 0x0

    move-object/from16 v0, v43

    invoke-static {v4, v5, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1892
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 1893
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v4}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1894
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v4}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->releaseNetwork()V

    .line 1974
    .end local v43    # "unknownHostException":Ljava/net/UnknownHostException;
    :cond_0
    :goto_0
    return-void

    .line 1648
    .restart local v10    # "phoneId":I
    :cond_1
    :try_start_1
    const-string v4, "MMTelSS"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Read from CF parcel:req="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static/range {v38 .. v38}, Lcom/android/internal/telephony/MMTelSSTransport;->requestToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",cfAction="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",reason="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v37

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",serviceClass="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v42

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",number="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1651
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    .line 1652
    .local v18, "curTime":J
    const-string v4, "MMTelSS"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleGetCF(): mCdCache = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCdCache:Lcom/mediatek/simservs/client/CommunicationDiversion;
    invoke-static {v6}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/mediatek/simservs/client/CommunicationDiversion;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", curTime = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v18

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mCdCacheLastQueried = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCdCacheLastQueried:J
    invoke-static {v6}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1700(Lcom/android/internal/telephony/MMTelSSTransport;)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1654
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCdCache:Lcom/mediatek/simservs/client/CommunicationDiversion;
    invoke-static {v4}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/mediatek/simservs/client/CommunicationDiversion;

    move-result-object v4

    if-eqz v4, :cond_a

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCdCachePhoneId:I
    invoke-static {v4}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1800(Lcom/android/internal/telephony/MMTelSSTransport;)I

    move-result v4

    if-ne v10, v4, :cond_a

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCdCache:Lcom/mediatek/simservs/client/CommunicationDiversion;
    invoke-static {v4}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/mediatek/simservs/client/CommunicationDiversion;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mediatek/simservs/client/CommunicationDiversion;->isSupportEtag()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 1656
    const-string v4, "MMTelSS"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleGetCF(): using ETAG mCdCache: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCdCache:Lcom/mediatek/simservs/client/CommunicationDiversion;
    invoke-static {v6}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/mediatek/simservs/client/CommunicationDiversion;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1657
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # invokes: Lcom/android/internal/telephony/MMTelSSTransport;->requestXcapNetwork(I)V
    invoke-static {v4, v10}, Lcom/android/internal/telephony/MMTelSSTransport;->access$300(Lcom/android/internal/telephony/MMTelSSTransport;I)V

    .line 1658
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCdCache:Lcom/mediatek/simservs/client/CommunicationDiversion;
    invoke-static {v4}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/mediatek/simservs/client/CommunicationDiversion;

    move-result-object v13

    .line 1659
    .local v13, "cd":Lcom/mediatek/simservs/client/CommunicationDiversion;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mNetwork:Landroid/net/Network;
    invoke-static {v4}, Lcom/android/internal/telephony/MMTelSSTransport;->access$400(Lcom/android/internal/telephony/MMTelSSTransport;)Landroid/net/Network;

    move-result-object v4

    invoke-virtual {v13, v4}, Lcom/mediatek/simservs/client/CommunicationDiversion;->setNetwork(Landroid/net/Network;)V

    .line 1660
    invoke-virtual {v13}, Lcom/mediatek/simservs/client/CommunicationDiversion;->refresh()V

    .line 1661
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    move-wide/from16 v0, v18

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCdCacheLastQueried:J
    invoke-static {v4, v0, v1}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1702(Lcom/android/internal/telephony/MMTelSSTransport;J)J

    .line 1697
    :goto_1
    const-string v4, "MMTelSS"

    const-string v5, "handleGetCF():GetRuleSet from cd"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1699
    invoke-virtual {v13}, Lcom/mediatek/simservs/client/CommunicationDiversion;->getRuleSet()Lcom/mediatek/simservs/client/policy/RuleSet;

    move-result-object v40

    .line 1701
    .local v40, "ruleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    const/16 v39, 0x0

    .line 1703
    .local v39, "ruleList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    if-eqz v40, :cond_d

    .line 1704
    invoke-virtual/range {v40 .. v40}, Lcom/mediatek/simservs/client/policy/RuleSet;->getRules()Ljava/util/List;

    move-result-object v39

    .line 1710
    :goto_2
    if-eqz v39, :cond_20

    .line 1712
    const/16 v31, 0x1

    .line 1713
    .local v31, "num_of_expansion":I
    const/4 v4, 0x5

    move/from16 v0, v37

    if-ne v0, v4, :cond_e

    .line 1716
    const/16 v31, 0x4

    .line 1723
    :cond_2
    :goto_3
    const/16 v27, 0x0

    .local v27, "n":I
    :goto_4
    move/from16 v0, v27

    move/from16 v1, v31

    if-ge v0, v1, :cond_1f

    .line 1724
    const/4 v4, 0x1

    move/from16 v0, v31

    if-eq v0, v4, :cond_3

    .line 1725
    if-nez v27, :cond_f

    const/16 v37, 0x1

    .line 1732
    :cond_3
    :goto_5
    const-string v4, "MMTelSS"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "num_of_expansion="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v31

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": with round="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v6, v27, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",with reason="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v37

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1735
    const/16 v4, 0x210

    move/from16 v0, v32

    if-ne v0, v4, :cond_4

    .line 1736
    const/16 v42, 0x200

    .line 1741
    :cond_4
    const/16 v30, 0x0

    .line 1743
    .local v30, "num_of_comparision":I
    if-nez v32, :cond_13

    .line 1744
    const/16 v42, 0x1

    .line 1746
    const/16 v30, 0x2

    .line 1747
    const-string v4, "MMTelSS"

    const-string v5, "serviceClass==0, try to 1st match by using SERVICE_CLASS_VOICE"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1753
    :goto_6
    const/16 v24, 0x0

    .local v24, "it":I
    :goto_7
    move/from16 v0, v24

    move/from16 v1, v30

    if-ge v0, v1, :cond_1e

    .line 1755
    const/4 v4, 0x1

    move/from16 v0, v24

    if-ne v0, v4, :cond_5

    const/4 v4, 0x1

    move/from16 v0, v42

    if-ne v0, v4, :cond_5

    .line 1757
    const/16 v42, 0x200

    .line 1758
    const-string v4, "MMTelSS"

    const-string v5, "serviceClass==0, try to 2nd match by using SERVICE_CLASS_VIDEO"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1761
    :cond_5
    const-string v4, "MMTelSS"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "num_of_comparision="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v30

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": with round="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v6, v24, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",with service class="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v42

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1764
    const/16 v21, 0x0

    .local v21, "i":I
    :goto_8
    invoke-interface/range {v39 .. v39}, Ljava/util/List;->size()I

    move-result v4

    move/from16 v0, v21

    if-ge v0, v4, :cond_9

    .line 1765
    move-object/from16 v0, v39

    move/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Lcom/mediatek/simservs/client/policy/Rule;

    .line 1766
    .local v36, "r":Lcom/mediatek/simservs/client/policy/Rule;
    invoke-virtual/range {v36 .. v36}, Lcom/mediatek/simservs/client/policy/Rule;->getConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v17

    .line 1767
    .local v17, "cond":Lcom/mediatek/simservs/client/policy/Conditions;
    invoke-virtual/range {v36 .. v36}, Lcom/mediatek/simservs/client/policy/Rule;->getActions()Lcom/mediatek/simservs/client/policy/Actions;

    move-result-object v12

    .line 1768
    .local v12, "action":Lcom/mediatek/simservs/client/policy/Actions;
    const/16 v26, 0x0

    .line 1770
    .local v26, "mediaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v17, :cond_14

    .line 1771
    const-string v4, "MMTelSS"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleGetCF():busy="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v17 .. v17}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendBusy()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",NoAnswer="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v17 .. v17}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendNoAnswer()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",NoReachable="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v17 .. v17}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendNotReachable()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",NotRegistered="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v17 .. v17}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendNotRegistered()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1772
    invoke-virtual/range {v17 .. v17}, Lcom/mediatek/simservs/client/policy/Conditions;->getMedias()Ljava/util/List;

    move-result-object v26

    .line 1778
    :goto_9
    const/4 v4, 0x2

    if-ne v15, v4, :cond_15

    if-nez v37, :cond_15

    if-eqz v17, :cond_6

    invoke-virtual/range {v17 .. v17}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendBusy()Z

    move-result v4

    if-nez v4, :cond_6

    invoke-virtual/range {v17 .. v17}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendNoAnswer()Z

    move-result v4

    if-nez v4, :cond_6

    invoke-virtual/range {v17 .. v17}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendNotRegistered()Z

    move-result v4

    if-nez v4, :cond_6

    invoke-virtual/range {v17 .. v17}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendNotReachable()Z

    move-result v4

    if-nez v4, :cond_6

    invoke-virtual/range {v17 .. v17}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendRuleDeactivated()Z

    move-result v4

    if-eqz v4, :cond_7

    :cond_6
    if-nez v17, :cond_15

    :cond_7
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->containSpecificMedia(Ljava/util/List;I)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 1785
    const-string v4, "MMTelSS"

    const-string v5, "handleGetCF():CFU is enabled on server"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1787
    const/16 v35, 0x1

    .line 1788
    invoke-virtual {v12}, Lcom/mediatek/simservs/client/policy/Actions;->getFowardTo()Lcom/mediatek/simservs/client/policy/ForwardTo;

    move-result-object v4

    if-eqz v4, :cond_8

    .line 1789
    invoke-virtual {v12}, Lcom/mediatek/simservs/client/policy/Actions;->getFowardTo()Lcom/mediatek/simservs/client/policy/ForwardTo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mediatek/simservs/client/policy/ForwardTo;->getTarget()Ljava/lang/String;

    move-result-object v11

    .line 1792
    :cond_8
    invoke-virtual {v13}, Lcom/mediatek/simservs/client/CommunicationDiversion;->getNoReplyTimer()I

    move-result v28

    .line 1850
    .end local v12    # "action":Lcom/mediatek/simservs/client/policy/Actions;
    .end local v17    # "cond":Lcom/mediatek/simservs/client/policy/Conditions;
    .end local v26    # "mediaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v36    # "r":Lcom/mediatek/simservs/client/policy/Rule;
    :cond_9
    :goto_a
    new-instance v25, Lcom/android/internal/telephony/CallForwardInfo;

    invoke-direct/range {v25 .. v25}, Lcom/android/internal/telephony/CallForwardInfo;-><init>()V

    .line 1851
    .local v25, "item":Lcom/android/internal/telephony/CallForwardInfo;
    move/from16 v0, v35

    move-object/from16 v1, v25

    iput v0, v1, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    .line 1852
    move/from16 v0, v37

    move-object/from16 v1, v25

    iput v0, v1, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    .line 1853
    move/from16 v0, v42

    move-object/from16 v1, v25

    iput v0, v1, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    .line 1854
    const/4 v4, 0x0

    move-object/from16 v0, v25

    iput v4, v0, Lcom/android/internal/telephony/CallForwardInfo;->toa:I

    .line 1855
    move-object/from16 v0, v25

    iput-object v11, v0, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    .line 1856
    move/from16 v0, v28

    move-object/from16 v1, v25

    iput v0, v1, Lcom/android/internal/telephony/CallForwardInfo;->timeSeconds:I

    .line 1857
    const-string v4, "MMTelSS"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleGetCF():add one record with reason="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v37

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",serviceClass="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v42

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",queryStatus="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v35

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1858
    move-object/from16 v0, v33

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1861
    const/16 v35, 0x0

    .line 1862
    const-string v11, ""

    .line 1863
    const/16 v28, 0x14

    .line 1753
    add-int/lit8 v24, v24, 0x1

    goto/16 :goto_7

    .line 1662
    .end local v13    # "cd":Lcom/mediatek/simservs/client/CommunicationDiversion;
    .end local v21    # "i":I
    .end local v24    # "it":I
    .end local v25    # "item":Lcom/android/internal/telephony/CallForwardInfo;
    .end local v27    # "n":I
    .end local v30    # "num_of_comparision":I
    .end local v31    # "num_of_expansion":I
    .end local v39    # "ruleList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    .end local v40    # "ruleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    :cond_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCdCache:Lcom/mediatek/simservs/client/CommunicationDiversion;
    invoke-static {v4}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/mediatek/simservs/client/CommunicationDiversion;

    move-result-object v4

    if-eqz v4, :cond_b

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCdCachePhoneId:I
    invoke-static {v4}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1800(Lcom/android/internal/telephony/MMTelSSTransport;)I

    move-result v4

    if-ne v10, v4, :cond_b

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCdCacheLastQueried:J
    invoke-static {v4}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1700(Lcom/android/internal/telephony/MMTelSSTransport;)J

    move-result-wide v4

    cmp-long v4, v18, v4

    if-ltz v4, :cond_b

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCdCacheLastQueried:J
    invoke-static {v4}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1700(Lcom/android/internal/telephony/MMTelSSTransport;)J

    move-result-wide v4

    sub-long v4, v18, v4

    const-wide/32 v6, 0x1d4c0

    cmp-long v4, v4, v6

    if-gez v4, :cond_b

    .line 1665
    const-string v4, "MMTelSS"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleGetCF(): using mCdCache: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCdCache:Lcom/mediatek/simservs/client/CommunicationDiversion;
    invoke-static {v6}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/mediatek/simservs/client/CommunicationDiversion;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1666
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCdCache:Lcom/mediatek/simservs/client/CommunicationDiversion;
    invoke-static {v4}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/mediatek/simservs/client/CommunicationDiversion;

    move-result-object v13

    .restart local v13    # "cd":Lcom/mediatek/simservs/client/CommunicationDiversion;
    goto/16 :goto_1

    .line 1668
    .end local v13    # "cd":Lcom/mediatek/simservs/client/CommunicationDiversion;
    :cond_b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # invokes: Lcom/android/internal/telephony/MMTelSSTransport;->requestXcapNetwork(I)V
    invoke-static {v4, v10}, Lcom/android/internal/telephony/MMTelSSTransport;->access$300(Lcom/android/internal/telephony/MMTelSSTransport;I)V

    .line 1670
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-static {v10}, Lcom/android/internal/telephony/MMTelSSUtils;->getXui(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/android/internal/telephony/MMTelSSTransport;->mXui:Ljava/lang/String;

    .line 1671
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-static {v10}, Lcom/android/internal/telephony/MMTelSSUtils;->getXcapRootUri(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/android/internal/telephony/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    .line 1672
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-static {v10}, Lcom/android/internal/telephony/MMTelSSUtils;->getXIntendedId(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/android/internal/telephony/MMTelSSTransport;->mXIntendedId:Ljava/lang/String;

    .line 1674
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v4, v4, Lcom/android/internal/telephony/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 1675
    const-string v4, "MMTelSS"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleGetCF(): XcapRoot = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v6, v6, Lcom/android/internal/telephony/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1676
    new-instance v4, Ljava/net/UnknownHostException;

    invoke-direct {v4}, Ljava/net/UnknownHostException;-><init>()V

    throw v4
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/mediatek/simservs/xcap/XcapException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 1898
    .end local v10    # "phoneId":I
    .end local v18    # "curTime":J
    :catch_1
    move-exception v44

    .line 1899
    .local v44, "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    const-string v4, "MMTelSS"

    const-string v5, "handleGetCF(): XcapException"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1900
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    const/4 v5, 0x0

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCdCache:Lcom/mediatek/simservs/client/CommunicationDiversion;
    invoke-static {v4, v5}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1602(Lcom/android/internal/telephony/MMTelSSTransport;Lcom/mediatek/simservs/client/CommunicationDiversion;)Lcom/mediatek/simservs/client/CommunicationDiversion;

    .line 1901
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    const/4 v5, -0x1

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCdCachePhoneId:I
    invoke-static {v4, v5}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1802(Lcom/android/internal/telephony/MMTelSSTransport;I)I

    .line 1902
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    const-wide/16 v6, 0x0

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCdCacheLastQueried:J
    invoke-static {v4, v6, v7}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1702(Lcom/android/internal/telephony/MMTelSSTransport;J)J

    .line 1904
    invoke-virtual/range {v44 .. v44}, Lcom/mediatek/simservs/xcap/XcapException;->printStackTrace()V

    .line 1905
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v4, :cond_21

    .line 1906
    invoke-virtual/range {v44 .. v44}, Lcom/mediatek/simservs/xcap/XcapException;->isConnectionError()Z

    move-result v4

    if-eqz v4, :cond_23

    .line 1907
    const-string v4, "MMTelSS"

    const-string v5, "handleGetCF(): xcapException.isConnectionError()"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1908
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v5, 0x0

    new-instance v6, Ljava/net/UnknownHostException;

    invoke-direct {v6}, Ljava/net/UnknownHostException;-><init>()V

    invoke-static {v4, v5, v6}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1912
    :goto_b
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 1913
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v4}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1914
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v4}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->releaseNetwork()V

    goto/16 :goto_0

    .line 1679
    .end local v44    # "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    .restart local v10    # "phoneId":I
    .restart local v18    # "curTime":J
    :cond_c
    :try_start_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v5, v5, Lcom/android/internal/telephony/MMTelSSTransport;->mXui:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v6, v6, Lcom/android/internal/telephony/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v7, v7, Lcom/android/internal/telephony/MMTelSSTransport;->mXIntendedId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v8, v8, Lcom/android/internal/telephony/MMTelSSTransport;->mUserName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v9, v9, Lcom/android/internal/telephony/MMTelSSTransport;->mPassword:Ljava/lang/String;

    invoke-virtual/range {v4 .. v10}, Lcom/android/internal/telephony/MMTelSSTransport;->setSimservsInitParameters(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1682
    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mSimservs:Lcom/mediatek/simservs/client/SimServs;
    invoke-static {}, Lcom/android/internal/telephony/MMTelSSTransport;->access$500()Lcom/mediatek/simservs/client/SimServs;

    move-result-object v4

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mNetwork:Landroid/net/Network;
    invoke-static {v6}, Lcom/android/internal/telephony/MMTelSSTransport;->access$400(Lcom/android/internal/telephony/MMTelSSTransport;)Landroid/net/Network;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/mediatek/simservs/client/SimServs;->getCommunicationDiversion(ZLandroid/net/Network;)Lcom/mediatek/simservs/client/CommunicationDiversion;

    move-result-object v13

    .line 1683
    .restart local v13    # "cd":Lcom/mediatek/simservs/client/CommunicationDiversion;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCdCache:Lcom/mediatek/simservs/client/CommunicationDiversion;
    invoke-static {v4, v13}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1602(Lcom/android/internal/telephony/MMTelSSTransport;Lcom/mediatek/simservs/client/CommunicationDiversion;)Lcom/mediatek/simservs/client/CommunicationDiversion;

    .line 1684
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCdCachePhoneId:I
    invoke-static {v4, v10}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1802(Lcom/android/internal/telephony/MMTelSSTransport;I)I

    .line 1685
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    move-wide/from16 v0, v18

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCdCacheLastQueried:J
    invoke-static {v4, v0, v1}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1702(Lcom/android/internal/telephony/MMTelSSTransport;J)J

    .line 1686
    const-string v4, "MMTelSS"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleGetCF(): new mCdCache = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCdCache:Lcom/mediatek/simservs/client/CommunicationDiversion;
    invoke-static {v6}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/mediatek/simservs/client/CommunicationDiversion;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", curTime = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v18

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/mediatek/simservs/xcap/XcapException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_1

    .line 1918
    .end local v10    # "phoneId":I
    .end local v13    # "cd":Lcom/mediatek/simservs/client/CommunicationDiversion;
    .end local v18    # "curTime":J
    :catch_2
    move-exception v20

    .line 1919
    .local v20, "e":Ljava/lang/Exception;
    const-string v4, "MMTelSS"

    const-string v5, "handleGetCF():Start to Print Stack Trace"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1920
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    const/4 v5, 0x0

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCdCache:Lcom/mediatek/simservs/client/CommunicationDiversion;
    invoke-static {v4, v5}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1602(Lcom/android/internal/telephony/MMTelSSTransport;Lcom/mediatek/simservs/client/CommunicationDiversion;)Lcom/mediatek/simservs/client/CommunicationDiversion;

    .line 1921
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    const/4 v5, -0x1

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCdCachePhoneId:I
    invoke-static {v4, v5}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1802(Lcom/android/internal/telephony/MMTelSSTransport;I)I

    .line 1922
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    const-wide/16 v6, 0x0

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCdCacheLastQueried:J
    invoke-static {v4, v6, v7}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1702(Lcom/android/internal/telephony/MMTelSSTransport;J)J

    .line 1924
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Exception;->printStackTrace()V

    .line 1928
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v4, :cond_21

    .line 1929
    const/4 v4, 0x2

    invoke-static {v4}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v14

    .line 1930
    .local v14, "ce":Lcom/android/internal/telephony/CommandException;
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v5, 0x0

    invoke-static {v4, v5, v14}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1931
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 1932
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v4}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1933
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v4}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->releaseNetwork()V

    goto/16 :goto_0

    .line 1706
    .end local v14    # "ce":Lcom/android/internal/telephony/CommandException;
    .end local v20    # "e":Ljava/lang/Exception;
    .restart local v10    # "phoneId":I
    .restart local v13    # "cd":Lcom/mediatek/simservs/client/CommunicationDiversion;
    .restart local v18    # "curTime":J
    .restart local v39    # "ruleList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    .restart local v40    # "ruleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    :cond_d
    :try_start_3
    const-string v4, "MMTelSS"

    const-string v5, "No CF related rules in remote server"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1717
    .restart local v31    # "num_of_expansion":I
    :cond_e
    const/4 v4, 0x4

    move/from16 v0, v37

    if-ne v0, v4, :cond_2

    .line 1720
    const/16 v31, 0x5

    goto/16 :goto_3

    .line 1726
    .restart local v27    # "n":I
    :cond_f
    const/4 v4, 0x1

    move/from16 v0, v27

    if-ne v0, v4, :cond_10

    const/16 v37, 0x2

    goto/16 :goto_5

    .line 1727
    :cond_10
    const/4 v4, 0x2

    move/from16 v0, v27

    if-ne v0, v4, :cond_11

    const/16 v37, 0x3

    goto/16 :goto_5

    .line 1728
    :cond_11
    const/4 v4, 0x3

    move/from16 v0, v27

    if-ne v0, v4, :cond_12

    const/16 v37, 0x6

    goto/16 :goto_5

    .line 1729
    :cond_12
    const/4 v4, 0x4

    move/from16 v0, v27

    if-ne v0, v4, :cond_3

    const/16 v37, 0x0

    goto/16 :goto_5

    .line 1750
    .restart local v30    # "num_of_comparision":I
    :cond_13
    const/16 v30, 0x1

    goto/16 :goto_6

    .line 1774
    .restart local v12    # "action":Lcom/mediatek/simservs/client/policy/Actions;
    .restart local v17    # "cond":Lcom/mediatek/simservs/client/policy/Conditions;
    .restart local v21    # "i":I
    .restart local v24    # "it":I
    .restart local v26    # "mediaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v36    # "r":Lcom/mediatek/simservs/client/policy/Rule;
    :cond_14
    const-string v4, "MMTelSS"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleGetCF():Empty cond (cond==null) for this rule="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v36

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    .line 1795
    :cond_15
    const/4 v4, 0x2

    if-ne v15, v4, :cond_17

    const/4 v4, 0x1

    move/from16 v0, v37

    if-ne v0, v4, :cond_17

    if-eqz v17, :cond_17

    invoke-virtual/range {v17 .. v17}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendBusy()Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_17

    invoke-virtual/range {v17 .. v17}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendRuleDeactivated()Z

    move-result v4

    if-nez v4, :cond_17

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->containSpecificMedia(Ljava/util/List;I)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 1798
    const-string v4, "MMTelSS"

    const-string v5, "handleGetCF():CFB is enabled on server"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1800
    const/16 v35, 0x1

    .line 1801
    invoke-virtual {v12}, Lcom/mediatek/simservs/client/policy/Actions;->getFowardTo()Lcom/mediatek/simservs/client/policy/ForwardTo;

    move-result-object v4

    if-eqz v4, :cond_16

    .line 1802
    invoke-virtual {v12}, Lcom/mediatek/simservs/client/policy/Actions;->getFowardTo()Lcom/mediatek/simservs/client/policy/ForwardTo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mediatek/simservs/client/policy/ForwardTo;->getTarget()Ljava/lang/String;

    move-result-object v11

    .line 1804
    :cond_16
    invoke-virtual {v13}, Lcom/mediatek/simservs/client/CommunicationDiversion;->getNoReplyTimer()I

    move-result v28

    .line 1805
    goto/16 :goto_a

    .line 1807
    :cond_17
    const/4 v4, 0x2

    if-ne v15, v4, :cond_19

    const/4 v4, 0x2

    move/from16 v0, v37

    if-ne v0, v4, :cond_19

    if-eqz v17, :cond_19

    invoke-virtual/range {v17 .. v17}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendNoAnswer()Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_19

    invoke-virtual/range {v17 .. v17}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendRuleDeactivated()Z

    move-result v4

    if-nez v4, :cond_19

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->containSpecificMedia(Ljava/util/List;I)Z

    move-result v4

    if-eqz v4, :cond_19

    .line 1810
    const-string v4, "MMTelSS"

    const-string v5, "handleGetCF():CFNoAnswer is enabled on server"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1812
    const/16 v35, 0x1

    .line 1813
    invoke-virtual {v12}, Lcom/mediatek/simservs/client/policy/Actions;->getFowardTo()Lcom/mediatek/simservs/client/policy/ForwardTo;

    move-result-object v4

    if-eqz v4, :cond_18

    .line 1814
    invoke-virtual {v12}, Lcom/mediatek/simservs/client/policy/Actions;->getFowardTo()Lcom/mediatek/simservs/client/policy/ForwardTo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mediatek/simservs/client/policy/ForwardTo;->getTarget()Ljava/lang/String;

    move-result-object v11

    .line 1816
    :cond_18
    invoke-virtual {v13}, Lcom/mediatek/simservs/client/CommunicationDiversion;->getNoReplyTimer()I

    move-result v28

    .line 1817
    goto/16 :goto_a

    .line 1819
    :cond_19
    const/4 v4, 0x2

    if-ne v15, v4, :cond_1b

    const/4 v4, 0x3

    move/from16 v0, v37

    if-ne v0, v4, :cond_1b

    if-eqz v17, :cond_1b

    invoke-virtual/range {v17 .. v17}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendNotReachable()Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1b

    invoke-virtual/range {v17 .. v17}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendRuleDeactivated()Z

    move-result v4

    if-nez v4, :cond_1b

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->containSpecificMedia(Ljava/util/List;I)Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 1822
    const-string v4, "MMTelSS"

    const-string v5, "handleGetCF():CFNotReachable is enabled on server"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1824
    const/16 v35, 0x1

    .line 1825
    invoke-virtual {v12}, Lcom/mediatek/simservs/client/policy/Actions;->getFowardTo()Lcom/mediatek/simservs/client/policy/ForwardTo;

    move-result-object v4

    if-eqz v4, :cond_1a

    .line 1826
    invoke-virtual {v12}, Lcom/mediatek/simservs/client/policy/Actions;->getFowardTo()Lcom/mediatek/simservs/client/policy/ForwardTo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mediatek/simservs/client/policy/ForwardTo;->getTarget()Ljava/lang/String;

    move-result-object v11

    .line 1828
    :cond_1a
    invoke-virtual {v13}, Lcom/mediatek/simservs/client/CommunicationDiversion;->getNoReplyTimer()I

    move-result v28

    .line 1829
    goto/16 :goto_a

    .line 1831
    :cond_1b
    const/4 v4, 0x2

    if-ne v15, v4, :cond_1d

    const/4 v4, 0x6

    move/from16 v0, v37

    if-ne v0, v4, :cond_1d

    if-eqz v17, :cond_1d

    invoke-virtual/range {v17 .. v17}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendNotRegistered()Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1d

    invoke-virtual/range {v17 .. v17}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendRuleDeactivated()Z

    move-result v4

    if-nez v4, :cond_1d

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->containSpecificMedia(Ljava/util/List;I)Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 1834
    const-string v4, "MMTelSS"

    const-string v5, "handleGetCF():CFNotRegistered is enabled on server"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1836
    const/16 v35, 0x1

    .line 1837
    invoke-virtual {v12}, Lcom/mediatek/simservs/client/policy/Actions;->getFowardTo()Lcom/mediatek/simservs/client/policy/ForwardTo;

    move-result-object v4

    if-eqz v4, :cond_1c

    .line 1838
    invoke-virtual {v12}, Lcom/mediatek/simservs/client/policy/Actions;->getFowardTo()Lcom/mediatek/simservs/client/policy/ForwardTo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mediatek/simservs/client/policy/ForwardTo;->getTarget()Ljava/lang/String;

    move-result-object v11

    .line 1840
    :cond_1c
    invoke-virtual {v13}, Lcom/mediatek/simservs/client/CommunicationDiversion;->getNoReplyTimer()I

    move-result v28

    .line 1841
    goto/16 :goto_a

    .line 1845
    :cond_1d
    const-string v4, "MMTelSS"

    const-string v5, "handleGetCF()from xcap:Not matched this rule!"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1764
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_8

    .line 1723
    .end local v12    # "action":Lcom/mediatek/simservs/client/policy/Actions;
    .end local v17    # "cond":Lcom/mediatek/simservs/client/policy/Conditions;
    .end local v21    # "i":I
    .end local v26    # "mediaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v36    # "r":Lcom/mediatek/simservs/client/policy/Rule;
    :cond_1e
    add-int/lit8 v27, v27, 0x1

    goto/16 :goto_4

    .line 1871
    .end local v24    # "it":I
    .end local v30    # "num_of_comparision":I
    :cond_1f
    invoke-virtual/range {v33 .. v33}, Ljava/util/ArrayList;->size()I

    move-result v34

    .line 1873
    .local v34, "queriedSize":I
    move/from16 v0, v34

    new-array v0, v0, [Lcom/android/internal/telephony/CallForwardInfo;

    move-object/from16 v22, v0

    .line 1874
    const/16 v23, 0x0

    .local v23, "inx":I
    :goto_c
    move/from16 v0, v23

    move/from16 v1, v34

    if-ge v0, v1, :cond_21

    .line 1875
    move-object/from16 v0, v33

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/CallForwardInfo;

    aput-object v4, v22, v23

    .line 1874
    add-int/lit8 v23, v23, 0x1

    goto :goto_c

    .line 1880
    .end local v23    # "inx":I
    .end local v27    # "n":I
    .end local v31    # "num_of_expansion":I
    .end local v34    # "queriedSize":I
    :cond_20
    const-string v4, "MMTelSS"

    const-string v5, "handleGetCF():get null ruleList"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1881
    const/4 v4, 0x0

    new-array v0, v4, [Lcom/android/internal/telephony/CallForwardInfo;

    move-object/from16 v22, v0
    :try_end_3
    .catch Ljava/net/UnknownHostException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lcom/mediatek/simservs/xcap/XcapException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 1882
    const/16 v35, 0x0

    .line 1956
    .end local v10    # "phoneId":I
    .end local v13    # "cd":Lcom/mediatek/simservs/client/CommunicationDiversion;
    .end local v18    # "curTime":J
    .end local v39    # "ruleList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    .end local v40    # "ruleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    :cond_21
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v4, :cond_22

    .line 1967
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v5, 0x0

    move-object/from16 v0, v22

    invoke-static {v4, v0, v5}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1968
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 1971
    :cond_22
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v4}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1972
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v4}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->releaseNetwork()V

    goto/16 :goto_0

    .line 1910
    .restart local v44    # "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    :cond_23
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v5, 0x0

    move-object/from16 v0, v44

    invoke-static {v4, v5, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    goto/16 :goto_b
.end method

.method public handleGetCFInTimeSlot(Lcom/android/internal/telephony/MMTelSSRequest;)V
    .locals 41
    .param p1, "rr"    # Lcom/android/internal/telephony/MMTelSSRequest;

    .prologue
    .line 4101
    const/16 v33, -0x1

    .line 4102
    .local v33, "reqNo":I
    const/16 v36, -0x1

    .line 4103
    .local v36, "serialNo":I
    const/16 v20, 0x0

    .line 4104
    .local v20, "infos":[Lcom/android/internal/telephony/CallForwardInfoEx;
    new-instance v28, Ljava/util/ArrayList;

    invoke-direct/range {v28 .. v28}, Ljava/util/ArrayList;-><init>()V

    .line 4107
    .local v28, "queriedCallForwardInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/CallForwardInfoEx;>;"
    const/16 v32, -0x1

    .line 4108
    .local v32, "reason":I
    const/16 v37, -0x1

    .line 4109
    .local v37, "serviceClass":I
    const/16 v27, -0x1

    .line 4110
    .local v27, "orgServiceClass":I
    const-string v14, ""

    .line 4111
    .local v14, "cfPhoneNum":Ljava/lang/String;
    const/16 v30, 0x0

    .line 4112
    .local v30, "queryStatus":I
    const/16 v25, 0x14

    .line 4113
    .local v25, "noReplyTimer":I
    const/16 v38, 0x0

    .line 4114
    .local v38, "timeSlot":[J
    const/4 v10, 0x0

    .line 4117
    .local v10, "phoneId":I
    :try_start_0
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 4118
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    move-result v33

    .line 4119
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    move-result v36

    .line 4120
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    move-result v32

    .line 4121
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    move-result v37

    .line 4122
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 4123
    move/from16 v27, v37

    .line 4125
    const-string v4, "MMTelSS"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Read from CF parcel: req = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static/range {v33 .. v33}, Lcom/android/internal/telephony/MMTelSSTransport;->requestToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", reason = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v32

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", serviceClass = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v37

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4128
    invoke-static {v10}, Lcom/android/internal/telephony/MMTelSSUtils;->isPreferXcap(I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 4129
    const-string v4, "MMTelSS"

    const-string v5, "handleGetCFInTimeSlot(): !isPreferXcap()"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4130
    new-instance v4, Ljava/net/UnknownHostException;

    invoke-direct {v4}, Ljava/net/UnknownHostException;-><init>()V

    throw v4
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/mediatek/simservs/xcap/XcapException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 4302
    :catch_0
    move-exception v39

    .line 4303
    .local v39, "unknownHostException":Ljava/net/UnknownHostException;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    const/4 v5, 0x0

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCdCache:Lcom/mediatek/simservs/client/CommunicationDiversion;
    invoke-static {v4, v5}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1602(Lcom/android/internal/telephony/MMTelSSTransport;Lcom/mediatek/simservs/client/CommunicationDiversion;)Lcom/mediatek/simservs/client/CommunicationDiversion;

    .line 4304
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    const/4 v5, -0x1

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCdCachePhoneId:I
    invoke-static {v4, v5}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1802(Lcom/android/internal/telephony/MMTelSSTransport;I)I

    .line 4305
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    const-wide/16 v6, 0x0

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCdCacheLastQueried:J
    invoke-static {v4, v6, v7}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1702(Lcom/android/internal/telephony/MMTelSSTransport;J)J

    .line 4307
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v4, :cond_11

    .line 4308
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v5, 0x0

    move-object/from16 v0, v39

    invoke-static {v4, v5, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 4309
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 4310
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v4}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 4311
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v4}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->releaseNetwork()V

    .line 4361
    .end local v39    # "unknownHostException":Ljava/net/UnknownHostException;
    :cond_0
    :goto_0
    return-void

    .line 4134
    :cond_1
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 4135
    .local v16, "curTime":J
    const-string v4, "MMTelSS"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleGetCFInTimeSlot(): mCdCache = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCdCache:Lcom/mediatek/simservs/client/CommunicationDiversion;
    invoke-static {v6}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/mediatek/simservs/client/CommunicationDiversion;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", curTime = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v16

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mCdCacheLastQueried = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCdCacheLastQueried:J
    invoke-static {v6}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1700(Lcom/android/internal/telephony/MMTelSSTransport;)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4137
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCdCache:Lcom/mediatek/simservs/client/CommunicationDiversion;
    invoke-static {v4}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/mediatek/simservs/client/CommunicationDiversion;

    move-result-object v4

    if-eqz v4, :cond_8

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCdCachePhoneId:I
    invoke-static {v4}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1800(Lcom/android/internal/telephony/MMTelSSTransport;)I

    move-result v4

    if-ne v10, v4, :cond_8

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCdCache:Lcom/mediatek/simservs/client/CommunicationDiversion;
    invoke-static {v4}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/mediatek/simservs/client/CommunicationDiversion;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mediatek/simservs/client/CommunicationDiversion;->isSupportEtag()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 4139
    const-string v4, "MMTelSS"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleGetCFInTimeSlot(): using ETAG mCdCache: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCdCache:Lcom/mediatek/simservs/client/CommunicationDiversion;
    invoke-static {v6}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/mediatek/simservs/client/CommunicationDiversion;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4140
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # invokes: Lcom/android/internal/telephony/MMTelSSTransport;->requestXcapNetwork(I)V
    invoke-static {v4, v10}, Lcom/android/internal/telephony/MMTelSSTransport;->access$300(Lcom/android/internal/telephony/MMTelSSTransport;I)V

    .line 4141
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCdCache:Lcom/mediatek/simservs/client/CommunicationDiversion;
    invoke-static {v4}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/mediatek/simservs/client/CommunicationDiversion;

    move-result-object v12

    .line 4142
    .local v12, "cd":Lcom/mediatek/simservs/client/CommunicationDiversion;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mNetwork:Landroid/net/Network;
    invoke-static {v4}, Lcom/android/internal/telephony/MMTelSSTransport;->access$400(Lcom/android/internal/telephony/MMTelSSTransport;)Landroid/net/Network;

    move-result-object v4

    invoke-virtual {v12, v4}, Lcom/mediatek/simservs/client/CommunicationDiversion;->setNetwork(Landroid/net/Network;)V

    .line 4143
    invoke-virtual {v12}, Lcom/mediatek/simservs/client/CommunicationDiversion;->refresh()V

    .line 4144
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    move-wide/from16 v0, v16

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCdCacheLastQueried:J
    invoke-static {v4, v0, v1}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1702(Lcom/android/internal/telephony/MMTelSSTransport;J)J

    .line 4173
    :goto_1
    const-string v4, "MMTelSS"

    const-string v5, "handleGetCFInTimeSlot(): GetRuleSet from cd"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4175
    invoke-virtual {v12}, Lcom/mediatek/simservs/client/CommunicationDiversion;->getRuleSet()Lcom/mediatek/simservs/client/policy/RuleSet;

    move-result-object v35

    .line 4178
    .local v35, "ruleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    const/16 v34, 0x0

    .line 4180
    .local v34, "ruleList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    if-eqz v35, :cond_b

    .line 4181
    invoke-virtual/range {v35 .. v35}, Lcom/mediatek/simservs/client/policy/RuleSet;->getRules()Ljava/util/List;

    move-result-object v34

    .line 4188
    :goto_2
    if-eqz v34, :cond_10

    .line 4190
    const/16 v4, 0x210

    move/from16 v0, v27

    if-ne v0, v4, :cond_2

    .line 4192
    const/16 v37, 0x200

    .line 4195
    :cond_2
    const/16 v26, 0x0

    .line 4197
    .local v26, "numOfComparision":I
    if-nez v27, :cond_c

    .line 4198
    const/16 v37, 0x1

    .line 4201
    const/16 v26, 0x2

    .line 4202
    const-string v4, "MMTelSS"

    const-string v5, "serviceClass == 0, try to 1st match by using SERVICE_CLASS_VOICE"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4210
    :goto_3
    const/16 v22, 0x0

    .local v22, "it":I
    :goto_4
    move/from16 v0, v22

    move/from16 v1, v26

    if-ge v0, v1, :cond_f

    .line 4211
    const/4 v4, 0x1

    move/from16 v0, v22

    if-ne v0, v4, :cond_3

    const/4 v4, 0x1

    move/from16 v0, v37

    if-ne v0, v4, :cond_3

    .line 4213
    const/16 v37, 0x200

    .line 4214
    const-string v4, "MMTelSS"

    const-string v5, "serviceClass == 0, try to 2nd match by using SERVICE_CLASS_VIDEO"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4218
    :cond_3
    const-string v4, "MMTelSS"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "numOfComparision = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": with round = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v6, v22, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", with service class = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v37

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4223
    const/16 v19, 0x0

    .local v19, "i":I
    :goto_5
    invoke-interface/range {v34 .. v34}, Ljava/util/List;->size()I

    move-result v4

    move/from16 v0, v19

    if-ge v0, v4, :cond_7

    .line 4224
    move-object/from16 v0, v34

    move/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcom/mediatek/simservs/client/policy/Rule;

    .line 4225
    .local v31, "r":Lcom/mediatek/simservs/client/policy/Rule;
    invoke-virtual/range {v31 .. v31}, Lcom/mediatek/simservs/client/policy/Rule;->getConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v15

    .line 4226
    .local v15, "cond":Lcom/mediatek/simservs/client/policy/Conditions;
    invoke-virtual/range {v31 .. v31}, Lcom/mediatek/simservs/client/policy/Rule;->getActions()Lcom/mediatek/simservs/client/policy/Actions;

    move-result-object v11

    .line 4227
    .local v11, "action":Lcom/mediatek/simservs/client/policy/Actions;
    const/16 v24, 0x0

    .line 4229
    .local v24, "mediaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v15, :cond_d

    .line 4230
    const-string v4, "MMTelSS"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleGetCFInTimeSlot(): busy = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v15}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendBusy()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", NoAnswer = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v15}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendNoAnswer()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", NoReachable = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v15}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendNotReachable()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", NotRegistered = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v15}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendNotRegistered()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4235
    invoke-virtual {v15}, Lcom/mediatek/simservs/client/policy/Conditions;->getMedias()Ljava/util/List;

    move-result-object v24

    .line 4241
    :goto_6
    if-nez v32, :cond_e

    if-eqz v15, :cond_4

    invoke-virtual {v15}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendBusy()Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {v15}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendNoAnswer()Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {v15}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendNotRegistered()Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {v15}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendNotReachable()Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {v15}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendRuleDeactivated()Z

    move-result v4

    if-eqz v4, :cond_5

    :cond_4
    if-nez v15, :cond_e

    :cond_5
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->containSpecificMedia(Ljava/util/List;I)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 4248
    const-string v4, "MMTelSS"

    const-string v5, "handleGetCFInTimeSlot(): CFU is enabled on server"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4251
    const/16 v30, 0x1

    .line 4252
    invoke-virtual {v11}, Lcom/mediatek/simservs/client/policy/Actions;->getFowardTo()Lcom/mediatek/simservs/client/policy/ForwardTo;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 4253
    invoke-virtual {v11}, Lcom/mediatek/simservs/client/policy/Actions;->getFowardTo()Lcom/mediatek/simservs/client/policy/ForwardTo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mediatek/simservs/client/policy/ForwardTo;->getTarget()Ljava/lang/String;

    move-result-object v14

    .line 4257
    :cond_6
    invoke-virtual {v12}, Lcom/mediatek/simservs/client/CommunicationDiversion;->getNoReplyTimer()I

    move-result v25

    .line 4258
    if-eqz v15, :cond_7

    .line 4259
    invoke-virtual {v15}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendTime()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->convertToLocalTime(Ljava/lang/String;)[J

    move-result-object v38

    .line 4267
    .end local v11    # "action":Lcom/mediatek/simservs/client/policy/Actions;
    .end local v15    # "cond":Lcom/mediatek/simservs/client/policy/Conditions;
    .end local v24    # "mediaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v31    # "r":Lcom/mediatek/simservs/client/policy/Rule;
    :cond_7
    new-instance v23, Lcom/android/internal/telephony/CallForwardInfoEx;

    invoke-direct/range {v23 .. v23}, Lcom/android/internal/telephony/CallForwardInfoEx;-><init>()V

    .line 4268
    .local v23, "item":Lcom/android/internal/telephony/CallForwardInfoEx;
    move/from16 v0, v30

    move-object/from16 v1, v23

    iput v0, v1, Lcom/android/internal/telephony/CallForwardInfoEx;->status:I

    .line 4269
    move/from16 v0, v32

    move-object/from16 v1, v23

    iput v0, v1, Lcom/android/internal/telephony/CallForwardInfoEx;->reason:I

    .line 4270
    move/from16 v0, v37

    move-object/from16 v1, v23

    iput v0, v1, Lcom/android/internal/telephony/CallForwardInfoEx;->serviceClass:I

    .line 4271
    const/4 v4, 0x0

    move-object/from16 v0, v23

    iput v4, v0, Lcom/android/internal/telephony/CallForwardInfoEx;->toa:I

    .line 4272
    move-object/from16 v0, v23

    iput-object v14, v0, Lcom/android/internal/telephony/CallForwardInfoEx;->number:Ljava/lang/String;

    .line 4273
    move/from16 v0, v25

    move-object/from16 v1, v23

    iput v0, v1, Lcom/android/internal/telephony/CallForwardInfoEx;->timeSeconds:I

    .line 4274
    move-object/from16 v0, v38

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/android/internal/telephony/CallForwardInfoEx;->timeSlot:[J

    .line 4275
    const-string v4, "MMTelSS"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleGetCFInTimeSlot(): add one record with reason = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v32

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", serviceClass = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v37

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", queryStatus = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v30

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", timeSlot = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static/range {v38 .. v38}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4280
    move-object/from16 v0, v28

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4283
    const/16 v30, 0x0

    .line 4284
    const-string v14, ""

    .line 4285
    const/16 v25, 0x14

    .line 4286
    const/16 v38, 0x0

    .line 4210
    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_4

    .line 4145
    .end local v12    # "cd":Lcom/mediatek/simservs/client/CommunicationDiversion;
    .end local v19    # "i":I
    .end local v22    # "it":I
    .end local v23    # "item":Lcom/android/internal/telephony/CallForwardInfoEx;
    .end local v26    # "numOfComparision":I
    .end local v34    # "ruleList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    .end local v35    # "ruleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    :cond_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCdCache:Lcom/mediatek/simservs/client/CommunicationDiversion;
    invoke-static {v4}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/mediatek/simservs/client/CommunicationDiversion;

    move-result-object v4

    if-eqz v4, :cond_9

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCdCachePhoneId:I
    invoke-static {v4}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1800(Lcom/android/internal/telephony/MMTelSSTransport;)I

    move-result v4

    if-ne v10, v4, :cond_9

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCdCacheLastQueried:J
    invoke-static {v4}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1700(Lcom/android/internal/telephony/MMTelSSTransport;)J

    move-result-wide v4

    cmp-long v4, v16, v4

    if-ltz v4, :cond_9

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCdCacheLastQueried:J
    invoke-static {v4}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1700(Lcom/android/internal/telephony/MMTelSSTransport;)J

    move-result-wide v4

    sub-long v4, v16, v4

    const-wide/32 v6, 0x1d4c0

    cmp-long v4, v4, v6

    if-gez v4, :cond_9

    .line 4148
    const-string v4, "MMTelSS"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleGetCFInTimeSlot(): using mCdCache: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCdCache:Lcom/mediatek/simservs/client/CommunicationDiversion;
    invoke-static {v6}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/mediatek/simservs/client/CommunicationDiversion;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4149
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCdCache:Lcom/mediatek/simservs/client/CommunicationDiversion;
    invoke-static {v4}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/mediatek/simservs/client/CommunicationDiversion;

    move-result-object v12

    .restart local v12    # "cd":Lcom/mediatek/simservs/client/CommunicationDiversion;
    goto/16 :goto_1

    .line 4151
    .end local v12    # "cd":Lcom/mediatek/simservs/client/CommunicationDiversion;
    :cond_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # invokes: Lcom/android/internal/telephony/MMTelSSTransport;->requestXcapNetwork(I)V
    invoke-static {v4, v10}, Lcom/android/internal/telephony/MMTelSSTransport;->access$300(Lcom/android/internal/telephony/MMTelSSTransport;I)V

    .line 4153
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-static {v10}, Lcom/android/internal/telephony/MMTelSSUtils;->getXui(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/android/internal/telephony/MMTelSSTransport;->mXui:Ljava/lang/String;

    .line 4154
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-static {v10}, Lcom/android/internal/telephony/MMTelSSUtils;->getXcapRootUri(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/android/internal/telephony/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    .line 4155
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-static {v10}, Lcom/android/internal/telephony/MMTelSSUtils;->getXIntendedId(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/android/internal/telephony/MMTelSSTransport;->mXIntendedId:Ljava/lang/String;

    .line 4157
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v4, v4, Lcom/android/internal/telephony/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 4158
    const-string v4, "MMTelSS"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleGetCFInTimeSlot(): XcapRoot = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v6, v6, Lcom/android/internal/telephony/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4159
    new-instance v4, Ljava/net/UnknownHostException;

    invoke-direct {v4}, Ljava/net/UnknownHostException;-><init>()V

    throw v4
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/mediatek/simservs/xcap/XcapException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 4315
    .end local v16    # "curTime":J
    :catch_1
    move-exception v40

    .line 4316
    .local v40, "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    const-string v4, "MMTelSS"

    const-string v5, "handleGetCFInTimeSlot(): XcapException"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4317
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    const/4 v5, 0x0

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCdCache:Lcom/mediatek/simservs/client/CommunicationDiversion;
    invoke-static {v4, v5}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1602(Lcom/android/internal/telephony/MMTelSSTransport;Lcom/mediatek/simservs/client/CommunicationDiversion;)Lcom/mediatek/simservs/client/CommunicationDiversion;

    .line 4318
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    const/4 v5, -0x1

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCdCachePhoneId:I
    invoke-static {v4, v5}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1802(Lcom/android/internal/telephony/MMTelSSTransport;I)I

    .line 4319
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    const-wide/16 v6, 0x0

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCdCacheLastQueried:J
    invoke-static {v4, v6, v7}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1702(Lcom/android/internal/telephony/MMTelSSTransport;J)J

    .line 4321
    invoke-virtual/range {v40 .. v40}, Lcom/mediatek/simservs/xcap/XcapException;->printStackTrace()V

    .line 4322
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v4, :cond_11

    .line 4323
    invoke-virtual/range {v40 .. v40}, Lcom/mediatek/simservs/xcap/XcapException;->isConnectionError()Z

    move-result v4

    if-eqz v4, :cond_13

    .line 4324
    const-string v4, "MMTelSS"

    const-string v5, "handleGetCFInTimeSlot(): isConnectionError()"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4325
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v5, 0x0

    new-instance v6, Ljava/net/UnknownHostException;

    invoke-direct {v6}, Ljava/net/UnknownHostException;-><init>()V

    invoke-static {v4, v5, v6}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 4329
    :goto_7
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 4330
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v4}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 4331
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v4}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->releaseNetwork()V

    goto/16 :goto_0

    .line 4162
    .end local v40    # "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    .restart local v16    # "curTime":J
    :cond_a
    :try_start_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v5, v5, Lcom/android/internal/telephony/MMTelSSTransport;->mXui:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v6, v6, Lcom/android/internal/telephony/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v7, v7, Lcom/android/internal/telephony/MMTelSSTransport;->mXIntendedId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v8, v8, Lcom/android/internal/telephony/MMTelSSTransport;->mUserName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v9, v9, Lcom/android/internal/telephony/MMTelSSTransport;->mPassword:Ljava/lang/String;

    invoke-virtual/range {v4 .. v10}, Lcom/android/internal/telephony/MMTelSSTransport;->setSimservsInitParameters(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 4165
    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mSimservs:Lcom/mediatek/simservs/client/SimServs;
    invoke-static {}, Lcom/android/internal/telephony/MMTelSSTransport;->access$500()Lcom/mediatek/simservs/client/SimServs;

    move-result-object v4

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mNetwork:Landroid/net/Network;
    invoke-static {v6}, Lcom/android/internal/telephony/MMTelSSTransport;->access$400(Lcom/android/internal/telephony/MMTelSSTransport;)Landroid/net/Network;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/mediatek/simservs/client/SimServs;->getCommunicationDiversion(ZLandroid/net/Network;)Lcom/mediatek/simservs/client/CommunicationDiversion;

    move-result-object v12

    .line 4166
    .restart local v12    # "cd":Lcom/mediatek/simservs/client/CommunicationDiversion;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCdCache:Lcom/mediatek/simservs/client/CommunicationDiversion;
    invoke-static {v4, v12}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1602(Lcom/android/internal/telephony/MMTelSSTransport;Lcom/mediatek/simservs/client/CommunicationDiversion;)Lcom/mediatek/simservs/client/CommunicationDiversion;

    .line 4167
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCdCachePhoneId:I
    invoke-static {v4, v10}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1802(Lcom/android/internal/telephony/MMTelSSTransport;I)I

    .line 4168
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    move-wide/from16 v0, v16

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCdCacheLastQueried:J
    invoke-static {v4, v0, v1}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1702(Lcom/android/internal/telephony/MMTelSSTransport;J)J

    .line 4169
    const-string v4, "MMTelSS"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleGetCFInTimeSlot(): new mCdCache = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCdCache:Lcom/mediatek/simservs/client/CommunicationDiversion;
    invoke-static {v6}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/mediatek/simservs/client/CommunicationDiversion;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", curTime = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v16

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/mediatek/simservs/xcap/XcapException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_1

    .line 4335
    .end local v12    # "cd":Lcom/mediatek/simservs/client/CommunicationDiversion;
    .end local v16    # "curTime":J
    :catch_2
    move-exception v18

    .line 4336
    .local v18, "e":Ljava/lang/Exception;
    const-string v4, "MMTelSS"

    const-string v5, "handleGetCFInTimeSlot(): Start to Print Stack Trace"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4337
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    const/4 v5, 0x0

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCdCache:Lcom/mediatek/simservs/client/CommunicationDiversion;
    invoke-static {v4, v5}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1602(Lcom/android/internal/telephony/MMTelSSTransport;Lcom/mediatek/simservs/client/CommunicationDiversion;)Lcom/mediatek/simservs/client/CommunicationDiversion;

    .line 4338
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    const/4 v5, -0x1

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCdCachePhoneId:I
    invoke-static {v4, v5}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1802(Lcom/android/internal/telephony/MMTelSSTransport;I)I

    .line 4339
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    const-wide/16 v6, 0x0

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCdCacheLastQueried:J
    invoke-static {v4, v6, v7}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1702(Lcom/android/internal/telephony/MMTelSSTransport;J)J

    .line 4341
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Exception;->printStackTrace()V

    .line 4342
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v4, :cond_11

    .line 4343
    const/4 v4, 0x2

    invoke-static {v4}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v13

    .line 4345
    .local v13, "ce":Lcom/android/internal/telephony/CommandException;
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v5, 0x0

    invoke-static {v4, v5, v13}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 4346
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 4347
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v4}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 4348
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v4}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->releaseNetwork()V

    goto/16 :goto_0

    .line 4183
    .end local v13    # "ce":Lcom/android/internal/telephony/CommandException;
    .end local v18    # "e":Ljava/lang/Exception;
    .restart local v12    # "cd":Lcom/mediatek/simservs/client/CommunicationDiversion;
    .restart local v16    # "curTime":J
    .restart local v34    # "ruleList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    .restart local v35    # "ruleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    :cond_b
    :try_start_3
    const-string v4, "MMTelSS"

    const-string v5, "No CF related rules in remote server"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 4207
    .restart local v26    # "numOfComparision":I
    :cond_c
    const/16 v26, 0x1

    goto/16 :goto_3

    .line 4237
    .restart local v11    # "action":Lcom/mediatek/simservs/client/policy/Actions;
    .restart local v15    # "cond":Lcom/mediatek/simservs/client/policy/Conditions;
    .restart local v19    # "i":I
    .restart local v22    # "it":I
    .restart local v24    # "mediaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v31    # "r":Lcom/mediatek/simservs/client/policy/Rule;
    :cond_d
    const-string v4, "MMTelSS"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleGetCFInTimeSlot(): Empty cond (cond==null) for this rule="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v31

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 4263
    :cond_e
    const-string v4, "MMTelSS"

    const-string v5, "handleGetCFInTimeSlot()from xcap: Not matched this rule!"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4223
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_5

    .line 4290
    .end local v11    # "action":Lcom/mediatek/simservs/client/policy/Actions;
    .end local v15    # "cond":Lcom/mediatek/simservs/client/policy/Conditions;
    .end local v19    # "i":I
    .end local v24    # "mediaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v31    # "r":Lcom/mediatek/simservs/client/policy/Rule;
    :cond_f
    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->size()I

    move-result v29

    .line 4292
    .local v29, "queriedSize":I
    move/from16 v0, v29

    new-array v0, v0, [Lcom/android/internal/telephony/CallForwardInfoEx;

    move-object/from16 v20, v0

    .line 4293
    const/16 v21, 0x0

    .local v21, "inx":I
    :goto_8
    move/from16 v0, v21

    move/from16 v1, v29

    if-ge v0, v1, :cond_11

    .line 4294
    move-object/from16 v0, v28

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/CallForwardInfoEx;

    aput-object v4, v20, v21

    .line 4293
    add-int/lit8 v21, v21, 0x1

    goto :goto_8

    .line 4298
    .end local v21    # "inx":I
    .end local v22    # "it":I
    .end local v26    # "numOfComparision":I
    .end local v29    # "queriedSize":I
    :cond_10
    const-string v4, "MMTelSS"

    const-string v5, "handleGetCFInTimeSlot():get null ruleList"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4299
    const/4 v4, 0x0

    new-array v0, v4, [Lcom/android/internal/telephony/CallForwardInfoEx;

    move-object/from16 v20, v0
    :try_end_3
    .catch Ljava/net/UnknownHostException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lcom/mediatek/simservs/xcap/XcapException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 4300
    const/16 v30, 0x0

    .line 4354
    .end local v12    # "cd":Lcom/mediatek/simservs/client/CommunicationDiversion;
    .end local v16    # "curTime":J
    .end local v34    # "ruleList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    .end local v35    # "ruleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    :cond_11
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v4, :cond_12

    .line 4355
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v5, 0x0

    move-object/from16 v0, v20

    invoke-static {v4, v0, v5}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 4356
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 4358
    :cond_12
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v4}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 4359
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v4}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->releaseNetwork()V

    goto/16 :goto_0

    .line 4327
    .restart local v40    # "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    :cond_13
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v5, 0x0

    move-object/from16 v0, v40

    invoke-static {v4, v5, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    goto/16 :goto_7
.end method

.method public handleGetCLIP(Lcom/android/internal/telephony/MMTelSSRequest;)V
    .locals 16
    .param p1, "rr"    # Lcom/android/internal/telephony/MMTelSSRequest;

    .prologue
    .line 794
    const/4 v13, -0x1

    .line 795
    .local v13, "reqNo":I
    const/4 v14, -0x1

    .line 796
    .local v14, "serialNo":I
    const/4 v11, 0x0

    .line 797
    .local v11, "get_clip_result":I
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 799
    .local v7, "phoneId":I
    invoke-static {v7}, Lcom/android/internal/telephony/MMTelSSUtils;->isPreferXcap(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 800
    const-string v1, "MMTelSS"

    const-string v2, "handleGetCLIP(): !isPreferXcap()"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 801
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v1, :cond_0

    .line 802
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v2, 0x0

    new-instance v3, Ljava/net/UnknownHostException;

    invoke-direct {v3}, Ljava/net/UnknownHostException;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 803
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 876
    :cond_0
    :goto_0
    return-void

    .line 809
    :cond_1
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-static {v7}, Lcom/android/internal/telephony/MMTelSSUtils;->getXui(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/telephony/MMTelSSTransport;->mXui:Ljava/lang/String;

    .line 810
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-static {v7}, Lcom/android/internal/telephony/MMTelSSUtils;->getXcapRootUri(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/telephony/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    .line 811
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-static {v7}, Lcom/android/internal/telephony/MMTelSSUtils;->getXIntendedId(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/telephony/MMTelSSTransport;->mXIntendedId:Ljava/lang/String;

    .line 813
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v1, v1, Lcom/android/internal/telephony/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 814
    const-string v1, "MMTelSS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleGetCLIP(): XcapRoot = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v3, v3, Lcom/android/internal/telephony/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 815
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v1, :cond_0

    .line 816
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v2, 0x0

    new-instance v3, Ljava/net/UnknownHostException;

    invoke-direct {v3}, Ljava/net/UnknownHostException;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 817
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catch Lcom/mediatek/simservs/xcap/XcapException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 835
    :catch_0
    move-exception v15

    .line 836
    .local v15, "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    const-string v1, "MMTelSS"

    const-string v2, "handleGetCLIP(): XcapException"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 837
    invoke-virtual {v15}, Lcom/mediatek/simservs/xcap/XcapException;->printStackTrace()V

    .line 838
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v1, :cond_3

    .line 839
    invoke-virtual {v15}, Lcom/mediatek/simservs/xcap/XcapException;->isConnectionError()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 840
    const-string v1, "MMTelSS"

    const-string v2, "handleGetCLIP(): xcapException.isConnectionError()"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 841
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v2, 0x0

    new-instance v3, Ljava/net/UnknownHostException;

    invoke-direct {v3}, Ljava/net/UnknownHostException;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 845
    :goto_1
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 846
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v1}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 847
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v1}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->releaseNetwork()V

    goto/16 :goto_0

    .line 822
    .end local v15    # "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # invokes: Lcom/android/internal/telephony/MMTelSSTransport;->requestXcapNetwork(I)V
    invoke-static {v1, v7}, Lcom/android/internal/telephony/MMTelSSTransport;->access$300(Lcom/android/internal/telephony/MMTelSSTransport;I)V

    .line 824
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v2, v2, Lcom/android/internal/telephony/MMTelSSTransport;->mXui:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v3, v3, Lcom/android/internal/telephony/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v4, v4, Lcom/android/internal/telephony/MMTelSSTransport;->mXIntendedId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v5, v5, Lcom/android/internal/telephony/MMTelSSTransport;->mUserName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v6, v6, Lcom/android/internal/telephony/MMTelSSTransport;->mPassword:Ljava/lang/String;

    invoke-virtual/range {v1 .. v7}, Lcom/android/internal/telephony/MMTelSSTransport;->setSimservsInitParameters(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 826
    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mSimservs:Lcom/mediatek/simservs/client/SimServs;
    invoke-static {}, Lcom/android/internal/telephony/MMTelSSTransport;->access$500()Lcom/mediatek/simservs/client/SimServs;

    move-result-object v1

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mNetwork:Landroid/net/Network;
    invoke-static {v3}, Lcom/android/internal/telephony/MMTelSSTransport;->access$400(Lcom/android/internal/telephony/MMTelSSTransport;)Landroid/net/Network;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/mediatek/simservs/client/SimServs;->getOriginatingIdentityPresentation(ZLandroid/net/Network;)Lcom/mediatek/simservs/client/OriginatingIdentityPresentation;

    move-result-object v12

    .line 828
    .local v12, "oip":Lcom/mediatek/simservs/client/OriginatingIdentityPresentation;
    const-string v1, "MMTelSS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleGetCLIP():active="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v12}, Lcom/mediatek/simservs/client/OriginatingIdentityPresentation;->isActive()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 829
    invoke-virtual {v12}, Lcom/mediatek/simservs/client/OriginatingIdentityPresentation;->isActive()Z
    :try_end_1
    .catch Lcom/mediatek/simservs/xcap/XcapException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    if-eqz v1, :cond_5

    .line 830
    const/4 v11, 0x1

    .line 866
    .end local v12    # "oip":Lcom/mediatek/simservs/client/OriginatingIdentityPresentation;
    :cond_3
    :goto_2
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v1, :cond_4

    .line 867
    const/4 v1, 0x1

    new-array v10, v1, [I

    .line 868
    .local v10, "get_clip_response":[I
    const/4 v1, 0x0

    aput v11, v10, v1

    .line 869
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v2, 0x0

    invoke-static {v1, v10, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 870
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 873
    .end local v10    # "get_clip_response":[I
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v1}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 874
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v1}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->releaseNetwork()V

    goto/16 :goto_0

    .line 832
    .restart local v12    # "oip":Lcom/mediatek/simservs/client/OriginatingIdentityPresentation;
    :cond_5
    const/4 v11, 0x0

    goto :goto_2

    .line 843
    .end local v12    # "oip":Lcom/mediatek/simservs/client/OriginatingIdentityPresentation;
    .restart local v15    # "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    :cond_6
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v2, 0x0

    invoke-static {v1, v2, v15}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    goto/16 :goto_1

    .line 851
    .end local v15    # "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    :catch_1
    move-exception v9

    .line 852
    .local v9, "e":Ljava/lang/Exception;
    const-string v1, "MMTelSS"

    const-string v2, "handleGetCLIP():Start to Print Stack Trace"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 853
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    .line 854
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v1, :cond_3

    .line 855
    const/4 v1, 0x2

    invoke-static {v1}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v8

    .line 856
    .local v8, "ce":Lcom/android/internal/telephony/CommandException;
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v2, 0x0

    invoke-static {v1, v2, v8}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 857
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 858
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v1}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 859
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v1}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->releaseNetwork()V

    goto/16 :goto_0
.end method

.method public handleGetCLIR(Lcom/android/internal/telephony/MMTelSSRequest;)V
    .locals 19
    .param p1, "rr"    # Lcom/android/internal/telephony/MMTelSSRequest;

    .prologue
    .line 665
    const/16 v16, 0x1

    .line 666
    .local v16, "presentation_mode":I
    const/4 v14, 0x0

    .line 667
    .local v14, "get_clir_result":I
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 669
    .local v8, "phoneId":I
    invoke-static {v8}, Lcom/android/internal/telephony/MMTelSSUtils;->isPreferXcap(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 670
    const-string v2, "MMTelSS"

    const-string v3, "handleGetCLIR(): !isPreferXcap()"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v2, :cond_0

    .line 672
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v3, 0x0

    new-instance v4, Ljava/net/UnknownHostException;

    invoke-direct {v4}, Ljava/net/UnknownHostException;-><init>()V

    invoke-static {v2, v3, v4}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 673
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 790
    :cond_0
    :goto_0
    return-void

    .line 681
    :cond_1
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 682
    .local v10, "curTime":J
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleGetCLIR(): mOirCache = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mOirCache:Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;
    invoke-static {v4}, Lcom/android/internal/telephony/MMTelSSTransport;->access$000(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", curTime = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mOirCacheLastQueried = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mOirCacheLastQueried:J
    invoke-static {v4}, Lcom/android/internal/telephony/MMTelSSTransport;->access$100(Lcom/android/internal/telephony/MMTelSSTransport;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 684
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mOirCache:Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$000(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;

    move-result-object v2

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mOirCachePhoneId:I
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$200(Lcom/android/internal/telephony/MMTelSSTransport;)I

    move-result v2

    if-ne v8, v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mOirCache:Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$000(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;->isSupportEtag()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 686
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleGetCLIR(): using ETAG mOirCache: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mOirCache:Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;
    invoke-static {v4}, Lcom/android/internal/telephony/MMTelSSTransport;->access$000(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 687
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # invokes: Lcom/android/internal/telephony/MMTelSSTransport;->requestXcapNetwork(I)V
    invoke-static {v2, v8}, Lcom/android/internal/telephony/MMTelSSTransport;->access$300(Lcom/android/internal/telephony/MMTelSSTransport;I)V

    .line 688
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mOirCache:Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$000(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;

    move-result-object v15

    .line 689
    .local v15, "oir":Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mNetwork:Landroid/net/Network;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$400(Lcom/android/internal/telephony/MMTelSSTransport;)Landroid/net/Network;

    move-result-object v2

    invoke-virtual {v15, v2}, Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;->setNetwork(Landroid/net/Network;)V

    .line 690
    invoke-virtual {v15}, Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;->refresh()V

    .line 691
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mOirCacheLastQueried:J
    invoke-static {v2, v10, v11}, Lcom/android/internal/telephony/MMTelSSTransport;->access$102(Lcom/android/internal/telephony/MMTelSSTransport;J)J

    .line 723
    :goto_1
    invoke-virtual {v15}, Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;->isDefaultPresentationRestricted()Z
    :try_end_0
    .catch Lcom/mediatek/simservs/xcap/XcapException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v17

    .line 724
    .local v17, "restricted":Z
    const/4 v2, 0x1

    move/from16 v0, v17

    if-ne v0, v2, :cond_7

    .line 726
    const/16 v16, 0x3

    .line 727
    const/4 v14, 0x1

    .line 779
    .end local v10    # "curTime":J
    .end local v15    # "oir":Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;
    .end local v17    # "restricted":Z
    :cond_2
    :goto_2
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v2, :cond_3

    .line 780
    const/4 v2, 0x2

    new-array v13, v2, [I

    .line 781
    .local v13, "get_clir_response":[I
    const/4 v2, 0x0

    aput v14, v13, v2

    .line 782
    const/4 v2, 0x1

    aput v16, v13, v2

    .line 783
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v3, 0x0

    invoke-static {v2, v13, v3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 784
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 787
    .end local v13    # "get_clir_response":[I
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 788
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->releaseNetwork()V

    goto/16 :goto_0

    .line 692
    .restart local v10    # "curTime":J
    :cond_4
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mOirCache:Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$000(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;

    move-result-object v2

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mOirCachePhoneId:I
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$200(Lcom/android/internal/telephony/MMTelSSTransport;)I

    move-result v2

    if-ne v8, v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mOirCacheLastQueried:J
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$100(Lcom/android/internal/telephony/MMTelSSTransport;)J

    move-result-wide v2

    cmp-long v2, v10, v2

    if-ltz v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mOirCacheLastQueried:J
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$100(Lcom/android/internal/telephony/MMTelSSTransport;)J

    move-result-wide v2

    sub-long v2, v10, v2

    const-wide/32 v4, 0x1d4c0

    cmp-long v2, v2, v4

    if-gez v2, :cond_5

    .line 695
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleGetCLIR(): using mOirCache: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mOirCache:Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;
    invoke-static {v4}, Lcom/android/internal/telephony/MMTelSSTransport;->access$000(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mOirCache:Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$000(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;

    move-result-object v15

    .restart local v15    # "oir":Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;
    goto/16 :goto_1

    .line 698
    .end local v15    # "oir":Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-static {v8}, Lcom/android/internal/telephony/MMTelSSUtils;->getXui(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/telephony/MMTelSSTransport;->mXui:Ljava/lang/String;

    .line 699
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-static {v8}, Lcom/android/internal/telephony/MMTelSSUtils;->getXcapRootUri(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/telephony/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    .line 700
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-static {v8}, Lcom/android/internal/telephony/MMTelSSUtils;->getXIntendedId(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/telephony/MMTelSSTransport;->mXIntendedId:Ljava/lang/String;

    .line 702
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v2, v2, Lcom/android/internal/telephony/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 703
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleGetCLIR(): XcapRoot = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v4, v4, Lcom/android/internal/telephony/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v2, :cond_0

    .line 705
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v3, 0x0

    new-instance v4, Ljava/net/UnknownHostException;

    invoke-direct {v4}, Ljava/net/UnknownHostException;-><init>()V

    invoke-static {v2, v3, v4}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 706
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V
    :try_end_1
    .catch Lcom/mediatek/simservs/xcap/XcapException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 734
    .end local v10    # "curTime":J
    :catch_0
    move-exception v18

    .line 735
    .local v18, "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    const-string v2, "MMTelSS"

    const-string v3, "handleGetCLIR(): XcapException"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    const/4 v3, 0x0

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mOirCache:Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;
    invoke-static {v2, v3}, Lcom/android/internal/telephony/MMTelSSTransport;->access$002(Lcom/android/internal/telephony/MMTelSSTransport;Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;)Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;

    .line 737
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    const/4 v3, -0x1

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mOirCachePhoneId:I
    invoke-static {v2, v3}, Lcom/android/internal/telephony/MMTelSSTransport;->access$202(Lcom/android/internal/telephony/MMTelSSTransport;I)I

    .line 738
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    const-wide/16 v4, 0x0

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mOirCacheLastQueried:J
    invoke-static {v2, v4, v5}, Lcom/android/internal/telephony/MMTelSSTransport;->access$102(Lcom/android/internal/telephony/MMTelSSTransport;J)J

    .line 740
    invoke-virtual/range {v18 .. v18}, Lcom/mediatek/simservs/xcap/XcapException;->printStackTrace()V

    .line 741
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v2, :cond_2

    .line 742
    invoke-virtual/range {v18 .. v18}, Lcom/mediatek/simservs/xcap/XcapException;->isConnectionError()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 743
    const-string v2, "MMTelSS"

    const-string v3, "handleGetCLIR(): xcapException.isConnectionError()"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 744
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v3, 0x0

    new-instance v4, Ljava/net/UnknownHostException;

    invoke-direct {v4}, Ljava/net/UnknownHostException;-><init>()V

    invoke-static {v2, v3, v4}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 748
    :goto_3
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 749
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 750
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->releaseNetwork()V

    goto/16 :goto_0

    .line 711
    .end local v18    # "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    .restart local v10    # "curTime":J
    :cond_6
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # invokes: Lcom/android/internal/telephony/MMTelSSTransport;->requestXcapNetwork(I)V
    invoke-static {v2, v8}, Lcom/android/internal/telephony/MMTelSSTransport;->access$300(Lcom/android/internal/telephony/MMTelSSTransport;I)V

    .line 713
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v3, v3, Lcom/android/internal/telephony/MMTelSSTransport;->mXui:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v4, v4, Lcom/android/internal/telephony/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v5, v5, Lcom/android/internal/telephony/MMTelSSTransport;->mXIntendedId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v6, v6, Lcom/android/internal/telephony/MMTelSSTransport;->mUserName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v7, v7, Lcom/android/internal/telephony/MMTelSSTransport;->mPassword:Ljava/lang/String;

    invoke-virtual/range {v2 .. v8}, Lcom/android/internal/telephony/MMTelSSTransport;->setSimservsInitParameters(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 715
    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mSimservs:Lcom/mediatek/simservs/client/SimServs;
    invoke-static {}, Lcom/android/internal/telephony/MMTelSSTransport;->access$500()Lcom/mediatek/simservs/client/SimServs;

    move-result-object v2

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mNetwork:Landroid/net/Network;
    invoke-static {v4}, Lcom/android/internal/telephony/MMTelSSTransport;->access$400(Lcom/android/internal/telephony/MMTelSSTransport;)Landroid/net/Network;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/mediatek/simservs/client/SimServs;->getOriginatingIdentityPresentationRestriction(ZLandroid/net/Network;)Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;

    move-result-object v15

    .line 716
    .restart local v15    # "oir":Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mOirCache:Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;
    invoke-static {v2, v15}, Lcom/android/internal/telephony/MMTelSSTransport;->access$002(Lcom/android/internal/telephony/MMTelSSTransport;Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;)Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;

    .line 717
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mOirCachePhoneId:I
    invoke-static {v2, v8}, Lcom/android/internal/telephony/MMTelSSTransport;->access$202(Lcom/android/internal/telephony/MMTelSSTransport;I)I

    .line 718
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mOirCacheLastQueried:J
    invoke-static {v2, v10, v11}, Lcom/android/internal/telephony/MMTelSSTransport;->access$102(Lcom/android/internal/telephony/MMTelSSTransport;J)J

    .line 719
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleGetCLIR(): new mOirCache = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mOirCache:Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;
    invoke-static {v4}, Lcom/android/internal/telephony/MMTelSSTransport;->access$000(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", curTime = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Lcom/mediatek/simservs/xcap/XcapException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1

    .line 754
    .end local v10    # "curTime":J
    .end local v15    # "oir":Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;
    :catch_1
    move-exception v12

    .line 756
    .local v12, "e":Ljava/lang/Exception;
    const-string v2, "MMTelSS"

    const-string v3, "handleGetCLIR():Start to Print Stack Trace"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 757
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    const/4 v3, 0x0

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mOirCache:Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;
    invoke-static {v2, v3}, Lcom/android/internal/telephony/MMTelSSTransport;->access$002(Lcom/android/internal/telephony/MMTelSSTransport;Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;)Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;

    .line 758
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    const/4 v3, -0x1

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mOirCachePhoneId:I
    invoke-static {v2, v3}, Lcom/android/internal/telephony/MMTelSSTransport;->access$202(Lcom/android/internal/telephony/MMTelSSTransport;I)I

    .line 759
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    const-wide/16 v4, 0x0

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mOirCacheLastQueried:J
    invoke-static {v2, v4, v5}, Lcom/android/internal/telephony/MMTelSSTransport;->access$102(Lcom/android/internal/telephony/MMTelSSTransport;J)J

    .line 761
    const/16 v16, 0x2

    .line 762
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V

    .line 763
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v2, :cond_2

    .line 764
    const/4 v2, 0x2

    invoke-static {v2}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v9

    .line 765
    .local v9, "ce":Lcom/android/internal/telephony/CommandException;
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v3, 0x0

    invoke-static {v2, v3, v9}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 766
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 767
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 768
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->releaseNetwork()V

    goto/16 :goto_0

    .line 730
    .end local v9    # "ce":Lcom/android/internal/telephony/CommandException;
    .end local v12    # "e":Ljava/lang/Exception;
    .restart local v10    # "curTime":J
    .restart local v15    # "oir":Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;
    .restart local v17    # "restricted":Z
    :cond_7
    const/16 v16, 0x4

    .line 731
    const/4 v14, 0x2

    goto/16 :goto_2

    .line 746
    .end local v10    # "curTime":J
    .end local v15    # "oir":Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;
    .end local v17    # "restricted":Z
    .restart local v18    # "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    :cond_8
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v3, 0x0

    move-object/from16 v0, v18

    invoke-static {v2, v3, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    goto/16 :goto_3
.end method

.method public handleGetCOLP(Lcom/android/internal/telephony/MMTelSSRequest;)V
    .locals 14
    .param p1, "rr"    # Lcom/android/internal/telephony/MMTelSSRequest;

    .prologue
    .line 884
    const/4 v10, -0x1

    .line 885
    .local v10, "reqNo":I
    const/4 v11, -0x1

    .line 886
    .local v11, "serialNo":I
    const/4 v0, 0x2

    new-array v9, v0, [I

    .line 887
    .local v9, "get_colp_response":[I
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 889
    .local v6, "phoneId":I
    invoke-static {v6}, Lcom/android/internal/telephony/MMTelSSUtils;->isPreferXcap(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 890
    const-string v0, "MMTelSS"

    const-string v1, "handleGetCOLP(): !isPreferXcap()"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 891
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v0, :cond_0

    .line 892
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v1, 0x0

    new-instance v2, Ljava/net/UnknownHostException;

    invoke-direct {v2}, Ljava/net/UnknownHostException;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 893
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 969
    :cond_0
    :goto_0
    return-void

    .line 899
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-static {v6}, Lcom/android/internal/telephony/MMTelSSUtils;->getXui(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/MMTelSSTransport;->mXui:Ljava/lang/String;

    .line 900
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-static {v6}, Lcom/android/internal/telephony/MMTelSSUtils;->getXcapRootUri(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    .line 901
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-static {v6}, Lcom/android/internal/telephony/MMTelSSUtils;->getXIntendedId(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/MMTelSSTransport;->mXIntendedId:Ljava/lang/String;

    .line 903
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v0, v0, Lcom/android/internal/telephony/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 904
    const-string v0, "MMTelSS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleGetCOLP(): XcapRoot = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v2, v2, Lcom/android/internal/telephony/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 905
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v0, :cond_0

    .line 906
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v1, 0x0

    new-instance v2, Ljava/net/UnknownHostException;

    invoke-direct {v2}, Ljava/net/UnknownHostException;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 907
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catch Lcom/mediatek/simservs/xcap/XcapException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 928
    :catch_0
    move-exception v13

    .line 929
    .local v13, "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    const-string v0, "MMTelSS"

    const-string v1, "handleGetCOLP(): XcapException"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 930
    invoke-virtual {v13}, Lcom/mediatek/simservs/xcap/XcapException;->printStackTrace()V

    .line 931
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v0, :cond_3

    .line 932
    invoke-virtual {v13}, Lcom/mediatek/simservs/xcap/XcapException;->isConnectionError()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 933
    const-string v0, "MMTelSS"

    const-string v1, "handleGetCOLP(): xcapException.isConnectionError()"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 934
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v1, 0x0

    new-instance v2, Ljava/net/UnknownHostException;

    invoke-direct {v2}, Ljava/net/UnknownHostException;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 938
    :goto_1
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 939
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v0}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 940
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v0}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->releaseNetwork()V

    goto/16 :goto_0

    .line 912
    .end local v13    # "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # invokes: Lcom/android/internal/telephony/MMTelSSTransport;->requestXcapNetwork(I)V
    invoke-static {v0, v6}, Lcom/android/internal/telephony/MMTelSSTransport;->access$300(Lcom/android/internal/telephony/MMTelSSTransport;I)V

    .line 914
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v1, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v1, v1, Lcom/android/internal/telephony/MMTelSSTransport;->mXui:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v2, v2, Lcom/android/internal/telephony/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v3, v3, Lcom/android/internal/telephony/MMTelSSTransport;->mXIntendedId:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v4, v4, Lcom/android/internal/telephony/MMTelSSTransport;->mUserName:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v5, v5, Lcom/android/internal/telephony/MMTelSSTransport;->mPassword:Ljava/lang/String;

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/MMTelSSTransport;->setSimservsInitParameters(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 916
    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mSimservs:Lcom/mediatek/simservs/client/SimServs;
    invoke-static {}, Lcom/android/internal/telephony/MMTelSSTransport;->access$500()Lcom/mediatek/simservs/client/SimServs;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mNetwork:Landroid/net/Network;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$400(Lcom/android/internal/telephony/MMTelSSTransport;)Landroid/net/Network;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/simservs/client/SimServs;->getTerminatingIdentityPresentation(ZLandroid/net/Network;)Lcom/mediatek/simservs/client/TerminatingIdentityPresentation;

    move-result-object v12

    .line 918
    .local v12, "tip":Lcom/mediatek/simservs/client/TerminatingIdentityPresentation;
    const-string v0, "MMTelSS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleGetCOLP():active="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v12}, Lcom/mediatek/simservs/client/TerminatingIdentityPresentation;->isActive()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 919
    invoke-virtual {v12}, Lcom/mediatek/simservs/client/TerminatingIdentityPresentation;->isActive()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 921
    const/4 v0, 0x0

    const/4 v1, 0x1

    aput v1, v9, v0

    .line 922
    const/4 v0, 0x1

    const/4 v1, 0x1

    aput v1, v9, v0
    :try_end_1
    .catch Lcom/mediatek/simservs/xcap/XcapException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 958
    .end local v12    # "tip":Lcom/mediatek/simservs/client/TerminatingIdentityPresentation;
    :cond_3
    :goto_2
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v0, :cond_4

    .line 962
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v1, 0x0

    invoke-static {v0, v9, v1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 963
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 966
    :cond_4
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v0}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 967
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v0}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->releaseNetwork()V

    goto/16 :goto_0

    .line 924
    .restart local v12    # "tip":Lcom/mediatek/simservs/client/TerminatingIdentityPresentation;
    :cond_5
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_2
    aput v1, v9, v0

    .line 925
    const/4 v0, 0x1

    const/4 v1, 0x0

    aput v1, v9, v0
    :try_end_2
    .catch Lcom/mediatek/simservs/xcap/XcapException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 944
    .end local v12    # "tip":Lcom/mediatek/simservs/client/TerminatingIdentityPresentation;
    :catch_1
    move-exception v8

    .line 945
    .local v8, "e":Ljava/lang/Exception;
    const-string v0, "MMTelSS"

    const-string v1, "handleGetCOLP():Start to Print Stack Trace"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 946
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .line 947
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v0, :cond_3

    .line 948
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v7

    .line 949
    .local v7, "ce":Lcom/android/internal/telephony/CommandException;
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v1, 0x0

    invoke-static {v0, v1, v7}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 950
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 951
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v0}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 952
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v0}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->releaseNetwork()V

    goto/16 :goto_0

    .line 936
    .end local v7    # "ce":Lcom/android/internal/telephony/CommandException;
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v13    # "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    :cond_6
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v1, 0x0

    invoke-static {v0, v1, v13}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    goto/16 :goto_1
.end method

.method public handleGetCOLR(Lcom/android/internal/telephony/MMTelSSRequest;)V
    .locals 14
    .param p1, "rr"    # Lcom/android/internal/telephony/MMTelSSRequest;

    .prologue
    .line 974
    const/4 v10, -0x1

    .line 975
    .local v10, "reqNo":I
    const/4 v11, -0x1

    .line 976
    .local v11, "serialNo":I
    const/4 v0, 0x1

    new-array v9, v0, [I

    .line 977
    .local v9, "get_colr_response":[I
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 979
    .local v6, "phoneId":I
    invoke-static {v6}, Lcom/android/internal/telephony/MMTelSSUtils;->isPreferXcap(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 980
    const-string v0, "MMTelSS"

    const-string v1, "handleGetCOLR(): !isPreferXcap()"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 981
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v0, :cond_0

    .line 982
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v1, 0x0

    new-instance v2, Ljava/net/UnknownHostException;

    invoke-direct {v2}, Ljava/net/UnknownHostException;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 983
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1058
    :cond_0
    :goto_0
    return-void

    .line 989
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-static {v6}, Lcom/android/internal/telephony/MMTelSSUtils;->getXui(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/MMTelSSTransport;->mXui:Ljava/lang/String;

    .line 990
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-static {v6}, Lcom/android/internal/telephony/MMTelSSUtils;->getXcapRootUri(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    .line 991
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-static {v6}, Lcom/android/internal/telephony/MMTelSSUtils;->getXIntendedId(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/MMTelSSTransport;->mXIntendedId:Ljava/lang/String;

    .line 993
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v0, v0, Lcom/android/internal/telephony/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 994
    const-string v0, "MMTelSS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleGetCOLR(): XcapRoot = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v2, v2, Lcom/android/internal/telephony/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 995
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v0, :cond_0

    .line 996
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v1, 0x0

    new-instance v2, Ljava/net/UnknownHostException;

    invoke-direct {v2}, Ljava/net/UnknownHostException;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 997
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catch Lcom/mediatek/simservs/xcap/XcapException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 1017
    :catch_0
    move-exception v13

    .line 1018
    .local v13, "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    const-string v0, "MMTelSS"

    const-string v1, "handleGetCOLR(): XcapException"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1019
    invoke-virtual {v13}, Lcom/mediatek/simservs/xcap/XcapException;->printStackTrace()V

    .line 1020
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v0, :cond_3

    .line 1021
    invoke-virtual {v13}, Lcom/mediatek/simservs/xcap/XcapException;->isConnectionError()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1022
    const-string v0, "MMTelSS"

    const-string v1, "handleGetCOLR(): xcapException.isConnectionError()"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1023
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v1, 0x0

    new-instance v2, Ljava/net/UnknownHostException;

    invoke-direct {v2}, Ljava/net/UnknownHostException;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1027
    :goto_1
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1028
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v0}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1029
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v0}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->releaseNetwork()V

    goto/16 :goto_0

    .line 1002
    .end local v13    # "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # invokes: Lcom/android/internal/telephony/MMTelSSTransport;->requestXcapNetwork(I)V
    invoke-static {v0, v6}, Lcom/android/internal/telephony/MMTelSSTransport;->access$300(Lcom/android/internal/telephony/MMTelSSTransport;I)V

    .line 1004
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v1, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v1, v1, Lcom/android/internal/telephony/MMTelSSTransport;->mXui:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v2, v2, Lcom/android/internal/telephony/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v3, v3, Lcom/android/internal/telephony/MMTelSSTransport;->mXIntendedId:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v4, v4, Lcom/android/internal/telephony/MMTelSSTransport;->mUserName:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v5, v5, Lcom/android/internal/telephony/MMTelSSTransport;->mPassword:Ljava/lang/String;

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/MMTelSSTransport;->setSimservsInitParameters(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1006
    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mSimservs:Lcom/mediatek/simservs/client/SimServs;
    invoke-static {}, Lcom/android/internal/telephony/MMTelSSTransport;->access$500()Lcom/mediatek/simservs/client/SimServs;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mNetwork:Landroid/net/Network;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$400(Lcom/android/internal/telephony/MMTelSSTransport;)Landroid/net/Network;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/simservs/client/SimServs;->getTerminatingIdentityPresentationRestriction(ZLandroid/net/Network;)Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;

    move-result-object v12

    .line 1008
    .local v12, "tir":Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;
    const-string v0, "MMTelSS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleGetCOLR():active="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v12}, Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;->isActive()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1009
    invoke-virtual {v12}, Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;->isActive()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1011
    const/4 v0, 0x0

    const/4 v1, 0x1

    aput v1, v9, v0
    :try_end_1
    .catch Lcom/mediatek/simservs/xcap/XcapException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1048
    .end local v12    # "tir":Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;
    :cond_3
    :goto_2
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v0, :cond_4

    .line 1051
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v1, 0x0

    invoke-static {v0, v9, v1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1052
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1055
    :cond_4
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v0}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1056
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v0}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->releaseNetwork()V

    goto/16 :goto_0

    .line 1014
    .restart local v12    # "tir":Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;
    :cond_5
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_2
    aput v1, v9, v0
    :try_end_2
    .catch Lcom/mediatek/simservs/xcap/XcapException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 1033
    .end local v12    # "tir":Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;
    :catch_1
    move-exception v8

    .line 1034
    .local v8, "e":Ljava/lang/Exception;
    const-string v0, "MMTelSS"

    const-string v1, "handleGetCOLR():Start to Print Stack Trace"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1035
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .line 1036
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v0, :cond_3

    .line 1037
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v7

    .line 1038
    .local v7, "ce":Lcom/android/internal/telephony/CommandException;
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v1, 0x0

    invoke-static {v0, v1, v7}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1039
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1040
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v0}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1041
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v0}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->releaseNetwork()V

    goto/16 :goto_0

    .line 1025
    .end local v7    # "ce":Lcom/android/internal/telephony/CommandException;
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v13    # "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    :cond_6
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v1, 0x0

    invoke-static {v0, v1, v13}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    goto/16 :goto_1
.end method

.method public handleGetCW(Lcom/android/internal/telephony/MMTelSSRequest;)V
    .locals 20
    .param p1, "rr"    # Lcom/android/internal/telephony/MMTelSSRequest;

    .prologue
    .line 1062
    const/16 v16, -0x1

    .line 1063
    .local v16, "reqNo":I
    const/16 v17, -0x1

    .line 1064
    .local v17, "serialNo":I
    const/4 v13, -0x1

    .line 1065
    .local v13, "cwServiceClass":I
    const/4 v2, 0x2

    new-array v15, v2, [I

    .line 1066
    .local v15, "get_cw_response":[I
    const/4 v8, 0x0

    .line 1072
    .local v8, "phoneId":I
    :try_start_0
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 1073
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 1074
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1075
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 1076
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 1077
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Read GET_CW serviceClass="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1079
    invoke-static {v8}, Lcom/android/internal/telephony/MMTelSSUtils;->isPreferXcap(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1080
    const-string v2, "MMTelSS"

    const-string v3, "handleGetCW(): !isPreferXcap()"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1081
    new-instance v2, Ljava/net/UnknownHostException;

    invoke-direct {v2}, Ljava/net/UnknownHostException;-><init>()V

    throw v2
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/mediatek/simservs/xcap/XcapException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 1136
    :catch_0
    move-exception v18

    .line 1137
    .local v18, "unknownHostException":Ljava/net/UnknownHostException;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    const/4 v3, 0x0

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCwCache:Lcom/mediatek/simservs/client/CommunicationWaiting;
    invoke-static {v2, v3}, Lcom/android/internal/telephony/MMTelSSTransport;->access$702(Lcom/android/internal/telephony/MMTelSSTransport;Lcom/mediatek/simservs/client/CommunicationWaiting;)Lcom/mediatek/simservs/client/CommunicationWaiting;

    .line 1138
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    const/4 v3, -0x1

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCwCachePhoneId:I
    invoke-static {v2, v3}, Lcom/android/internal/telephony/MMTelSSTransport;->access$902(Lcom/android/internal/telephony/MMTelSSTransport;I)I

    .line 1139
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    const-wide/16 v4, 0x0

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCwCacheLastQueried:J
    invoke-static {v2, v4, v5}, Lcom/android/internal/telephony/MMTelSSTransport;->access$802(Lcom/android/internal/telephony/MMTelSSTransport;J)J

    .line 1141
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v2, :cond_3

    .line 1142
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v3, 0x0

    move-object/from16 v0, v18

    invoke-static {v2, v3, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1143
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 1144
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1145
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->releaseNetwork()V

    .line 1225
    .end local v18    # "unknownHostException":Ljava/net/UnknownHostException;
    :cond_0
    :goto_0
    return-void

    .line 1085
    :cond_1
    const/16 v2, 0x210

    if-ne v13, v2, :cond_2

    .line 1086
    const/16 v13, 0x200

    .line 1090
    :cond_2
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 1091
    .local v10, "curTime":J
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleGetCW(): mCwCache = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCwCache:Lcom/mediatek/simservs/client/CommunicationWaiting;
    invoke-static {v4}, Lcom/android/internal/telephony/MMTelSSTransport;->access$700(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/mediatek/simservs/client/CommunicationWaiting;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", curTime = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mCwCacheLastQueried = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCwCacheLastQueried:J
    invoke-static {v4}, Lcom/android/internal/telephony/MMTelSSTransport;->access$800(Lcom/android/internal/telephony/MMTelSSTransport;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1093
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCwCache:Lcom/mediatek/simservs/client/CommunicationWaiting;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$700(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/mediatek/simservs/client/CommunicationWaiting;

    move-result-object v2

    if-eqz v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCwCachePhoneId:I
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$900(Lcom/android/internal/telephony/MMTelSSTransport;)I

    move-result v2

    if-ne v8, v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCwCache:Lcom/mediatek/simservs/client/CommunicationWaiting;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$700(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/mediatek/simservs/client/CommunicationWaiting;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/simservs/client/CommunicationWaiting;->isSupportEtag()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1095
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleGetCW(): using ETAG mCwCache: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCwCache:Lcom/mediatek/simservs/client/CommunicationWaiting;
    invoke-static {v4}, Lcom/android/internal/telephony/MMTelSSTransport;->access$700(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/mediatek/simservs/client/CommunicationWaiting;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1096
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # invokes: Lcom/android/internal/telephony/MMTelSSTransport;->requestXcapNetwork(I)V
    invoke-static {v2, v8}, Lcom/android/internal/telephony/MMTelSSTransport;->access$300(Lcom/android/internal/telephony/MMTelSSTransport;I)V

    .line 1097
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCwCache:Lcom/mediatek/simservs/client/CommunicationWaiting;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$700(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/mediatek/simservs/client/CommunicationWaiting;

    move-result-object v12

    .line 1098
    .local v12, "cw":Lcom/mediatek/simservs/client/CommunicationWaiting;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mNetwork:Landroid/net/Network;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$400(Lcom/android/internal/telephony/MMTelSSTransport;)Landroid/net/Network;

    move-result-object v2

    invoke-virtual {v12, v2}, Lcom/mediatek/simservs/client/CommunicationWaiting;->setNetwork(Landroid/net/Network;)V

    .line 1099
    invoke-virtual {v12}, Lcom/mediatek/simservs/client/CommunicationWaiting;->refresh()V

    .line 1100
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCwCacheLastQueried:J
    invoke-static {v2, v10, v11}, Lcom/android/internal/telephony/MMTelSSTransport;->access$802(Lcom/android/internal/telephony/MMTelSSTransport;J)J

    .line 1128
    :goto_1
    invoke-virtual {v12}, Lcom/mediatek/simservs/client/CommunicationWaiting;->isActive()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1129
    const/4 v2, 0x0

    const/4 v3, 0x1

    aput v3, v15, v2

    .line 1134
    :goto_2
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleGetCW(): isActive = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    aget v4, v15, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/mediatek/simservs/xcap/XcapException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 1190
    .end local v10    # "curTime":J
    .end local v12    # "cw":Lcom/mediatek/simservs/client/CommunicationWaiting;
    :cond_3
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v2, :cond_6

    .line 1193
    const/4 v2, 0x0

    aget v2, v15, v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_5

    .line 1203
    if-nez v13, :cond_c

    .line 1206
    const/4 v2, 0x1

    aget v3, v15, v2

    or-int/lit8 v3, v3, 0x1

    aput v3, v15, v2

    .line 1207
    const/4 v2, 0x1

    aget v3, v15, v2

    or-int/lit16 v3, v3, 0x200

    aput v3, v15, v2

    .line 1216
    :cond_4
    :goto_3
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleGetCW(): class = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x1

    aget v4, v15, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1218
    :cond_5
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v3, 0x0

    invoke-static {v2, v15, v3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1219
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 1222
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1223
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->releaseNetwork()V

    goto/16 :goto_0

    .line 1101
    .restart local v10    # "curTime":J
    :cond_7
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCwCache:Lcom/mediatek/simservs/client/CommunicationWaiting;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$700(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/mediatek/simservs/client/CommunicationWaiting;

    move-result-object v2

    if-eqz v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCwCachePhoneId:I
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$900(Lcom/android/internal/telephony/MMTelSSTransport;)I

    move-result v2

    if-ne v8, v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCwCacheLastQueried:J
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$800(Lcom/android/internal/telephony/MMTelSSTransport;)J

    move-result-wide v2

    cmp-long v2, v10, v2

    if-ltz v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCwCacheLastQueried:J
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$800(Lcom/android/internal/telephony/MMTelSSTransport;)J

    move-result-wide v2

    sub-long v2, v10, v2

    const-wide/32 v4, 0x1d4c0

    cmp-long v2, v2, v4

    if-gez v2, :cond_8

    .line 1104
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleGetCW(): using mCwCache: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCwCache:Lcom/mediatek/simservs/client/CommunicationWaiting;
    invoke-static {v4}, Lcom/android/internal/telephony/MMTelSSTransport;->access$700(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/mediatek/simservs/client/CommunicationWaiting;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1105
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCwCache:Lcom/mediatek/simservs/client/CommunicationWaiting;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$700(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/mediatek/simservs/client/CommunicationWaiting;

    move-result-object v12

    .restart local v12    # "cw":Lcom/mediatek/simservs/client/CommunicationWaiting;
    goto/16 :goto_1

    .line 1107
    .end local v12    # "cw":Lcom/mediatek/simservs/client/CommunicationWaiting;
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # invokes: Lcom/android/internal/telephony/MMTelSSTransport;->requestXcapNetwork(I)V
    invoke-static {v2, v8}, Lcom/android/internal/telephony/MMTelSSTransport;->access$300(Lcom/android/internal/telephony/MMTelSSTransport;I)V

    .line 1109
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-static {v8}, Lcom/android/internal/telephony/MMTelSSUtils;->getXui(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/telephony/MMTelSSTransport;->mXui:Ljava/lang/String;

    .line 1110
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-static {v8}, Lcom/android/internal/telephony/MMTelSSUtils;->getXcapRootUri(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/telephony/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    .line 1111
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-static {v8}, Lcom/android/internal/telephony/MMTelSSUtils;->getXIntendedId(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/telephony/MMTelSSTransport;->mXIntendedId:Ljava/lang/String;

    .line 1113
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v2, v2, Lcom/android/internal/telephony/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1114
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleGetCW(): XcapRoot = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v4, v4, Lcom/android/internal/telephony/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1115
    new-instance v2, Ljava/net/UnknownHostException;

    invoke-direct {v2}, Ljava/net/UnknownHostException;-><init>()V

    throw v2
    :try_end_2
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/mediatek/simservs/xcap/XcapException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 1149
    .end local v10    # "curTime":J
    :catch_1
    move-exception v19

    .line 1150
    .local v19, "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    const-string v2, "MMTelSS"

    const-string v3, "handleGetCW(): XcapException"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1151
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    const/4 v3, 0x0

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCwCache:Lcom/mediatek/simservs/client/CommunicationWaiting;
    invoke-static {v2, v3}, Lcom/android/internal/telephony/MMTelSSTransport;->access$702(Lcom/android/internal/telephony/MMTelSSTransport;Lcom/mediatek/simservs/client/CommunicationWaiting;)Lcom/mediatek/simservs/client/CommunicationWaiting;

    .line 1152
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    const/4 v3, -0x1

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCwCachePhoneId:I
    invoke-static {v2, v3}, Lcom/android/internal/telephony/MMTelSSTransport;->access$902(Lcom/android/internal/telephony/MMTelSSTransport;I)I

    .line 1153
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    const-wide/16 v4, 0x0

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCwCacheLastQueried:J
    invoke-static {v2, v4, v5}, Lcom/android/internal/telephony/MMTelSSTransport;->access$802(Lcom/android/internal/telephony/MMTelSSTransport;J)J

    .line 1155
    invoke-virtual/range {v19 .. v19}, Lcom/mediatek/simservs/xcap/XcapException;->printStackTrace()V

    .line 1156
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v2, :cond_3

    .line 1157
    invoke-virtual/range {v19 .. v19}, Lcom/mediatek/simservs/xcap/XcapException;->isConnectionError()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1158
    const-string v2, "MMTelSS"

    const-string v3, "handleGetCW(): xcapException.isConnectionError()"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1159
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v3, 0x0

    new-instance v4, Ljava/net/UnknownHostException;

    invoke-direct {v4}, Ljava/net/UnknownHostException;-><init>()V

    invoke-static {v2, v3, v4}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1163
    :goto_4
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 1164
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1165
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->releaseNetwork()V

    goto/16 :goto_0

    .line 1118
    .end local v19    # "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    .restart local v10    # "curTime":J
    :cond_9
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v3, v3, Lcom/android/internal/telephony/MMTelSSTransport;->mXui:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v4, v4, Lcom/android/internal/telephony/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v5, v5, Lcom/android/internal/telephony/MMTelSSTransport;->mXIntendedId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v6, v6, Lcom/android/internal/telephony/MMTelSSTransport;->mUserName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v7, v7, Lcom/android/internal/telephony/MMTelSSTransport;->mPassword:Ljava/lang/String;

    invoke-virtual/range {v2 .. v8}, Lcom/android/internal/telephony/MMTelSSTransport;->setSimservsInitParameters(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1120
    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mSimservs:Lcom/mediatek/simservs/client/SimServs;
    invoke-static {}, Lcom/android/internal/telephony/MMTelSSTransport;->access$500()Lcom/mediatek/simservs/client/SimServs;

    move-result-object v2

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mNetwork:Landroid/net/Network;
    invoke-static {v4}, Lcom/android/internal/telephony/MMTelSSTransport;->access$400(Lcom/android/internal/telephony/MMTelSSTransport;)Landroid/net/Network;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/mediatek/simservs/client/SimServs;->getCommunicationWaiting(ZLandroid/net/Network;)Lcom/mediatek/simservs/client/CommunicationWaiting;

    move-result-object v12

    .line 1121
    .restart local v12    # "cw":Lcom/mediatek/simservs/client/CommunicationWaiting;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCwCache:Lcom/mediatek/simservs/client/CommunicationWaiting;
    invoke-static {v2, v12}, Lcom/android/internal/telephony/MMTelSSTransport;->access$702(Lcom/android/internal/telephony/MMTelSSTransport;Lcom/mediatek/simservs/client/CommunicationWaiting;)Lcom/mediatek/simservs/client/CommunicationWaiting;

    .line 1122
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCwCachePhoneId:I
    invoke-static {v2, v8}, Lcom/android/internal/telephony/MMTelSSTransport;->access$902(Lcom/android/internal/telephony/MMTelSSTransport;I)I

    .line 1123
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCwCacheLastQueried:J
    invoke-static {v2, v10, v11}, Lcom/android/internal/telephony/MMTelSSTransport;->access$802(Lcom/android/internal/telephony/MMTelSSTransport;J)J

    .line 1124
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleGetCW(): new mCwCache = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCwCache:Lcom/mediatek/simservs/client/CommunicationWaiting;
    invoke-static {v4}, Lcom/android/internal/telephony/MMTelSSTransport;->access$700(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/mediatek/simservs/client/CommunicationWaiting;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", curTime = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/net/UnknownHostException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lcom/mediatek/simservs/xcap/XcapException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_1

    .line 1169
    .end local v10    # "curTime":J
    .end local v12    # "cw":Lcom/mediatek/simservs/client/CommunicationWaiting;
    :catch_2
    move-exception v14

    .line 1170
    .local v14, "e":Ljava/lang/Exception;
    const-string v2, "MMTelSS"

    const-string v3, "handleGetCW():Start to Print Stack Trace"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1171
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    const/4 v3, 0x0

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCwCache:Lcom/mediatek/simservs/client/CommunicationWaiting;
    invoke-static {v2, v3}, Lcom/android/internal/telephony/MMTelSSTransport;->access$702(Lcom/android/internal/telephony/MMTelSSTransport;Lcom/mediatek/simservs/client/CommunicationWaiting;)Lcom/mediatek/simservs/client/CommunicationWaiting;

    .line 1172
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    const/4 v3, -0x1

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCwCachePhoneId:I
    invoke-static {v2, v3}, Lcom/android/internal/telephony/MMTelSSTransport;->access$902(Lcom/android/internal/telephony/MMTelSSTransport;I)I

    .line 1173
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    const-wide/16 v4, 0x0

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCwCacheLastQueried:J
    invoke-static {v2, v4, v5}, Lcom/android/internal/telephony/MMTelSSTransport;->access$802(Lcom/android/internal/telephony/MMTelSSTransport;J)J

    .line 1175
    invoke-virtual {v14}, Ljava/lang/Exception;->printStackTrace()V

    .line 1176
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v2, :cond_3

    .line 1177
    const/4 v2, 0x2

    invoke-static {v2}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v9

    .line 1178
    .local v9, "ce":Lcom/android/internal/telephony/CommandException;
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v3, 0x0

    invoke-static {v2, v3, v9}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1179
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 1180
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1181
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->releaseNetwork()V

    goto/16 :goto_0

    .line 1132
    .end local v9    # "ce":Lcom/android/internal/telephony/CommandException;
    .end local v14    # "e":Ljava/lang/Exception;
    .restart local v10    # "curTime":J
    .restart local v12    # "cw":Lcom/mediatek/simservs/client/CommunicationWaiting;
    :cond_a
    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_4
    aput v3, v15, v2
    :try_end_4
    .catch Ljava/net/UnknownHostException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lcom/mediatek/simservs/xcap/XcapException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_2

    .line 1161
    .end local v10    # "curTime":J
    .end local v12    # "cw":Lcom/mediatek/simservs/client/CommunicationWaiting;
    .restart local v19    # "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    :cond_b
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v3, 0x0

    move-object/from16 v0, v19

    invoke-static {v2, v3, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    goto/16 :goto_4

    .line 1209
    .end local v19    # "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    :cond_c
    const/4 v2, 0x1

    aget v3, v15, v2

    or-int/2addr v3, v13

    aput v3, v15, v2

    .line 1210
    const/16 v2, 0x200

    if-ne v13, v2, :cond_4

    .line 1213
    const/4 v2, 0x1

    aget v3, v15, v2

    or-int/lit8 v3, v3, 0x1

    aput v3, v15, v2

    goto/16 :goto_3
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 14
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v13, 0x0

    const/16 v12, 0x19c

    .line 4726
    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Lcom/android/internal/telephony/MMTelSSRequest;

    move-object v7, v9

    check-cast v7, Lcom/android/internal/telephony/MMTelSSRequest;

    .line 4727
    .local v7, "rr":Lcom/android/internal/telephony/MMTelSSRequest;
    const/4 v5, 0x0

    .line 4729
    .local v5, "req":Lcom/android/internal/telephony/MMTelSSRequest;
    iget v9, p1, Landroid/os/Message;->what:I

    packed-switch v9, :pswitch_data_0

    .line 4900
    :cond_0
    :goto_0
    return-void

    .line 4736
    :pswitch_0
    const/4 v1, 0x0

    .line 4737
    .local v1, "alreadySubtracted":Z
    const/4 v6, -0x1

    .line 4738
    .local v6, "reqNo":I
    const/4 v8, -0x1

    .line 4740
    .local v8, "serialNo":I
    const-string v9, "MMTelSS"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "handleMessage(): EVENT_SEND:mRequestMessagesPending = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget v11, v11, Lcom/android/internal/telephony/MMTelSSTransport;->mRequestMessagesPending:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", mRequestsList.size() = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v11, v11, Lcom/android/internal/telephony/MMTelSSTransport;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4744
    :try_start_0
    iget-object v9, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v10, v9, Lcom/android/internal/telephony/MMTelSSTransport;->mRequestsList:Ljava/util/ArrayList;

    monitor-enter v10
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4745
    :try_start_1
    iget-object v9, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v9, v9, Lcom/android/internal/telephony/MMTelSSTransport;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4746
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4748
    :try_start_2
    iget-object v9, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget v10, v9, Lcom/android/internal/telephony/MMTelSSTransport;->mRequestMessagesPending:I

    add-int/lit8 v10, v10, -0x1

    iput v10, v9, Lcom/android/internal/telephony/MMTelSSTransport;->mRequestMessagesPending:I

    .line 4749
    const/4 v1, 0x1

    .line 4754
    iget-object v9, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget v10, v7, Lcom/android/internal/telephony/MMTelSSRequest;->mSerial:I

    # invokes: Lcom/android/internal/telephony/MMTelSSTransport;->findAndRemoveRequestFromList(I)Lcom/android/internal/telephony/MMTelSSRequest;
    invoke-static {v9, v10}, Lcom/android/internal/telephony/MMTelSSTransport;->access$2000(Lcom/android/internal/telephony/MMTelSSTransport;I)Lcom/android/internal/telephony/MMTelSSRequest;

    .line 4757
    const-string v9, "MMTelSS"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Receive MMTelSS Request:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v7, Lcom/android/internal/telephony/MMTelSSRequest;->mRequest:I

    invoke-static {v11}, Lcom/android/internal/telephony/MMTelSSTransport;->requestToString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4759
    iget v9, v7, Lcom/android/internal/telephony/MMTelSSRequest;->mRequest:I

    packed-switch v9, :pswitch_data_1

    .line 4827
    const-string v9, "MMTelSS"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Invalid MMTelSS Request:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v7, Lcom/android/internal/telephony/MMTelSSRequest;->mRequest:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4828
    new-instance v9, Ljava/lang/RuntimeException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unrecognized MMTelSS Request: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v7, Lcom/android/internal/telephony/MMTelSSRequest;->mRequest:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 4833
    :catch_0
    move-exception v3

    .line 4834
    .local v3, "exc":Ljava/lang/RuntimeException;
    :try_start_3
    const-string v9, "MMTelSS"

    const-string v10, "Uncaught exception "

    invoke-static {v9, v10, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4835
    iget-object v9, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget v10, v7, Lcom/android/internal/telephony/MMTelSSRequest;->mSerial:I

    # invokes: Lcom/android/internal/telephony/MMTelSSTransport;->findAndRemoveRequestFromList(I)Lcom/android/internal/telephony/MMTelSSRequest;
    invoke-static {v9, v10}, Lcom/android/internal/telephony/MMTelSSTransport;->access$2000(Lcom/android/internal/telephony/MMTelSSTransport;I)Lcom/android/internal/telephony/MMTelSSRequest;

    move-result-object v5

    .line 4838
    const-string v9, "MMTelSS"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "handleMessage(): RuntimeException:mRequestMessagesPending = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget v11, v11, Lcom/android/internal/telephony/MMTelSSTransport;->mRequestMessagesPending:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", mRequestsList.size() = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v11, v11, Lcom/android/internal/telephony/MMTelSSTransport;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4841
    if-nez v5, :cond_1

    if-nez v1, :cond_2

    .line 4842
    :cond_1
    const/4 v9, 0x2

    const/4 v10, 0x0

    invoke-virtual {v7, v9, v10}, Lcom/android/internal/telephony/MMTelSSRequest;->onError(ILjava/lang/Object;)V

    .line 4843
    invoke-virtual {v7}, Lcom/android/internal/telephony/MMTelSSRequest;->release()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 4849
    :cond_2
    iget-object v9, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # invokes: Lcom/android/internal/telephony/MMTelSSTransport;->releaseWakeLockIfDone()V
    invoke-static {v9}, Lcom/android/internal/telephony/MMTelSSTransport;->access$2100(Lcom/android/internal/telephony/MMTelSSTransport;)V

    .line 4853
    .end local v3    # "exc":Ljava/lang/RuntimeException;
    :goto_1
    if-nez v1, :cond_3

    .line 4854
    const-string v9, "MMTelSS"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "handleMessage(): !alreadySubtracted:mRequestMessagesPending = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget v11, v11, Lcom/android/internal/telephony/MMTelSSTransport;->mRequestMessagesPending:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", mRequestsList.size() = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v11, v11, Lcom/android/internal/telephony/MMTelSSTransport;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4857
    iget-object v9, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget v10, v9, Lcom/android/internal/telephony/MMTelSSTransport;->mRequestMessagesPending:I

    add-int/lit8 v10, v10, -0x1

    iput v10, v9, Lcom/android/internal/telephony/MMTelSSTransport;->mRequestMessagesPending:I

    .line 4862
    :cond_3
    iget-object v9, v7, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    if-eqz v9, :cond_4

    .line 4863
    iget-object v9, v7, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v9}, Landroid/os/Parcel;->recycle()V

    .line 4864
    iput-object v13, v7, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    .line 4867
    :cond_4
    iget-object v9, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget v9, v9, Lcom/android/internal/telephony/MMTelSSTransport;->mRequestMessagesPending:I

    if-nez v9, :cond_5

    iget-object v9, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v9, v9, Lcom/android/internal/telephony/MMTelSSTransport;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-eqz v9, :cond_0

    .line 4868
    :cond_5
    const-string v9, "MMTelSS"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "handleMessage(): ERROR wakeLock:mRequestMessagesPending = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget v11, v11, Lcom/android/internal/telephony/MMTelSSTransport;->mRequestMessagesPending:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", mRequestsList.size() = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v11, v11, Lcom/android/internal/telephony/MMTelSSTransport;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 4746
    :catchall_0
    move-exception v9

    :try_start_4
    monitor-exit v10
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v9
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 4849
    :catchall_1
    move-exception v9

    iget-object v10, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # invokes: Lcom/android/internal/telephony/MMTelSSTransport;->releaseWakeLockIfDone()V
    invoke-static {v10}, Lcom/android/internal/telephony/MMTelSSTransport;->access$2100(Lcom/android/internal/telephony/MMTelSSTransport;)V

    throw v9

    .line 4761
    :pswitch_1
    :try_start_6
    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->handleSetCLIR(Lcom/android/internal/telephony/MMTelSSRequest;)I

    move-result v9

    if-ne v12, v9, :cond_6

    .line 4762
    const-string v9, "MMTelSS"

    const-string v10, "Cache out of date, handleSetCLIR() again"

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4763
    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->handleSetCLIR(Lcom/android/internal/telephony/MMTelSSRequest;)I
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 4849
    :cond_6
    :goto_2
    iget-object v9, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # invokes: Lcom/android/internal/telephony/MMTelSSTransport;->releaseWakeLockIfDone()V
    invoke-static {v9}, Lcom/android/internal/telephony/MMTelSSTransport;->access$2100(Lcom/android/internal/telephony/MMTelSSTransport;)V

    goto/16 :goto_1

    .line 4767
    :pswitch_2
    :try_start_7
    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->handleGetCLIR(Lcom/android/internal/telephony/MMTelSSRequest;)V

    goto :goto_2

    .line 4770
    :pswitch_3
    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->handleGetCLIP(Lcom/android/internal/telephony/MMTelSSRequest;)V

    goto :goto_2

    .line 4773
    :pswitch_4
    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->handleGetCOLP(Lcom/android/internal/telephony/MMTelSSRequest;)V

    goto :goto_2

    .line 4776
    :pswitch_5
    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->handleGetCOLR(Lcom/android/internal/telephony/MMTelSSRequest;)V

    goto :goto_2

    .line 4779
    :pswitch_6
    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->handleSetCW(Lcom/android/internal/telephony/MMTelSSRequest;)I

    move-result v9

    if-ne v12, v9, :cond_6

    .line 4780
    const-string v9, "MMTelSS"

    const-string v10, "Cache out of date, handleSetCW() again"

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4781
    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->handleSetCW(Lcom/android/internal/telephony/MMTelSSRequest;)I

    goto :goto_2

    .line 4785
    :pswitch_7
    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->handleGetCW(Lcom/android/internal/telephony/MMTelSSRequest;)V

    goto :goto_2

    .line 4788
    :pswitch_8
    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->handleSetCB(Lcom/android/internal/telephony/MMTelSSRequest;)I

    move-result v9

    if-ne v12, v9, :cond_6

    .line 4789
    const-string v9, "MMTelSS"

    const-string v10, "Cache out of date, handleSetCB() again"

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4790
    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->handleSetCB(Lcom/android/internal/telephony/MMTelSSRequest;)I

    goto :goto_2

    .line 4794
    :pswitch_9
    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->handleGetCB(Lcom/android/internal/telephony/MMTelSSRequest;)V

    goto :goto_2

    .line 4797
    :pswitch_a
    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->handleSetCF(Lcom/android/internal/telephony/MMTelSSRequest;)I

    move-result v9

    if-ne v12, v9, :cond_6

    .line 4798
    const-string v9, "MMTelSS"

    const-string v10, "Cache out of date, handleSetCF() again"

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4799
    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->handleSetCF(Lcom/android/internal/telephony/MMTelSSRequest;)I

    goto :goto_2

    .line 4803
    :pswitch_b
    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->handleGetCF(Lcom/android/internal/telephony/MMTelSSRequest;)V

    goto :goto_2

    .line 4806
    :pswitch_c
    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->handleSetCLIP(Lcom/android/internal/telephony/MMTelSSRequest;)V

    goto :goto_2

    .line 4809
    :pswitch_d
    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->handleSetCOLP(Lcom/android/internal/telephony/MMTelSSRequest;)V

    goto :goto_2

    .line 4812
    :pswitch_e
    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->handleSetCOLR(Lcom/android/internal/telephony/MMTelSSRequest;)V

    goto :goto_2

    .line 4816
    :pswitch_f
    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->handleSetCFInTimeSlot(Lcom/android/internal/telephony/MMTelSSRequest;)I

    move-result v9

    if-ne v12, v9, :cond_6

    .line 4817
    const-string v9, "MMTelSS"

    const-string v10, "Cache out of date, handleSetCFInTimeSlot() again"

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4819
    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->handleSetCFInTimeSlot(Lcom/android/internal/telephony/MMTelSSRequest;)I

    goto :goto_2

    .line 4823
    :pswitch_10
    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->handleGetCFInTimeSlot(Lcom/android/internal/telephony/MMTelSSRequest;)V
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_2

    .line 4878
    .end local v1    # "alreadySubtracted":Z
    .end local v6    # "reqNo":I
    .end local v8    # "serialNo":I
    :pswitch_11
    iget-object v9, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v10, v9, Lcom/android/internal/telephony/MMTelSSTransport;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v10

    .line 4879
    :try_start_8
    iget-object v9, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v9, v9, Lcom/android/internal/telephony/MMTelSSTransport;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v9}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v9

    if-eqz v9, :cond_8

    .line 4881
    iget-object v9, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v11, v9, Lcom/android/internal/telephony/MMTelSSTransport;->mRequestsList:Ljava/util/ArrayList;

    monitor-enter v11
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 4882
    :try_start_9
    iget-object v9, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v9, v9, Lcom/android/internal/telephony/MMTelSSTransport;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 4883
    .local v2, "count":I
    const-string v9, "MMTelSS"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "WAKE_LOCK_TIMEOUT  mReqPending="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget v13, v13, Lcom/android/internal/telephony/MMTelSSTransport;->mRequestMessagesPending:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " mRequestList="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v9, v12}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4887
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_3
    if-ge v4, v2, :cond_7

    .line 4888
    iget-object v9, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v9, v9, Lcom/android/internal/telephony/MMTelSSTransport;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Lcom/android/internal/telephony/MMTelSSRequest;

    move-object v7, v0

    .line 4889
    const-string v9, "MMTelSS"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ": ["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, v7, Lcom/android/internal/telephony/MMTelSSRequest;->mSerial:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "] "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, v7, Lcom/android/internal/telephony/MMTelSSRequest;->mRequest:I

    invoke-static {v13}, Lcom/android/internal/telephony/MMTelSSTransport;->requestToString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v9, v12}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4887
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 4893
    :cond_7
    monitor-exit v11
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 4895
    :try_start_a
    iget-object v9, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v9, v9, Lcom/android/internal/telephony/MMTelSSTransport;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v9}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 4897
    .end local v2    # "count":I
    .end local v4    # "i":I
    :cond_8
    monitor-exit v10

    goto/16 :goto_0

    :catchall_2
    move-exception v9

    monitor-exit v10
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    throw v9

    .line 4893
    :catchall_3
    move-exception v9

    :try_start_b
    monitor-exit v11
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    :try_start_c
    throw v9
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 4729
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_11
    .end packed-switch

    .line 4759
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_6
        :pswitch_7
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
    .end packed-switch
.end method

.method public handleSetCB(Lcom/android/internal/telephony/MMTelSSRequest;)I
    .locals 87
    .param p1, "rr"    # Lcom/android/internal/telephony/MMTelSSRequest;

    .prologue
    .line 3436
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 3437
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v83

    .line 3438
    .local v83, "reqNo":I
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v85

    .line 3439
    .local v85, "serialNo":I
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 3440
    .local v13, "facility":Ljava/lang/String;
    move-object/from16 v82, v13

    .line 3441
    .local v82, "original_facility":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 3442
    .local v14, "lockState":I
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 3443
    .local v15, "setCBServiceClass":I
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 3445
    .local v8, "phoneId":I
    const/16 v63, 0x0

    .line 3446
    .local v63, "AddRuleForBAOCWithAllMediaType":Z
    const/16 v64, 0x0

    .line 3447
    .local v64, "AddRuleForBAOICWithAllMediaType":Z
    const/16 v65, 0x0

    .line 3448
    .local v65, "AddRuleForBAOICxHWithAllMediaType":Z
    const/16 v61, 0x0

    .line 3449
    .local v61, "AddRuleForBAICWithAllMediaType":Z
    const/16 v62, 0x0

    .line 3451
    .local v62, "AddRuleForBAICrWithAllMediaType":Z
    const-string v34, "AO"

    .line 3452
    .local v34, "BAOC_RuleID":Ljava/lang/String;
    const-string v16, "OI"

    .line 3453
    .local v16, "BAOIC_RuleID":Ljava/lang/String;
    const-string v26, "OX"

    .line 3454
    .local v26, "BAOICExHC_RuleID":Ljava/lang/String;
    const-string v57, "AI"

    .line 3455
    .local v57, "BAIC_RuleID":Ljava/lang/String;
    const-string v49, "IR"

    .line 3457
    .local v49, "BAICR_RuleID":Ljava/lang/String;
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Read from CB parcel:req="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {v83 .. v83}, Lcom/android/internal/telephony/MMTelSSTransport;->requestToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ",facility="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ",serviceClass="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ",lockState(enabled)="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3460
    const/16 v2, 0x210

    if-ne v15, v2, :cond_0

    .line 3461
    const/16 v15, 0x200

    .line 3464
    :cond_0
    invoke-static {v8}, Lcom/android/internal/telephony/MMTelSSUtils;->isPreferXcap(I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 3465
    const-string v2, "MMTelSS"

    const-string v3, "handleSetCB(): !isPreferXcap()"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3466
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v2, :cond_1

    .line 3467
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v3, 0x0

    new-instance v5, Ljava/net/UnknownHostException;

    invoke-direct {v5}, Ljava/net/UnknownHostException;-><init>()V

    invoke-static {v2, v3, v5}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 3468
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 3470
    :cond_1
    const/4 v2, 0x0

    .line 4096
    :goto_0
    return v2

    .line 3486
    :cond_2
    const/16 v18, 0x1

    .line 3487
    .local v18, "num_of_expansion":I
    :try_start_0
    const-string v2, "AB"

    move-object/from16 v0, v82

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    if-nez v14, :cond_5

    .line 3488
    const/16 v18, 0x5

    .line 3495
    :cond_3
    :goto_1
    const-string v2, "AB"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "AG"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "AC"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 3496
    :cond_4
    if-eqz v14, :cond_7

    .line 3498
    const-string v2, "MMTelSS"

    const-string v3, "Not allow lockState=1 for AB(330)/AG(333)/AC(353)"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3502
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v2, :cond_7

    .line 3503
    const/4 v2, 0x2

    invoke-static {v2}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v68

    .line 3504
    .local v68, "ce":Lcom/android/internal/telephony/CommandException;
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v3, 0x0

    move-object/from16 v0, v68

    invoke-static {v2, v3, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 3505
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 3506
    const/4 v2, 0x0

    goto :goto_0

    .line 3489
    .end local v68    # "ce":Lcom/android/internal/telephony/CommandException;
    :cond_5
    const-string v2, "AG"

    move-object/from16 v0, v82

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    if-nez v14, :cond_6

    .line 3490
    const/16 v18, 0x3

    goto :goto_1

    .line 3491
    :cond_6
    const-string v2, "AC"

    move-object/from16 v0, v82

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    if-nez v14, :cond_3

    .line 3492
    const/16 v18, 0x2

    goto :goto_1

    .line 3511
    :cond_7
    const/4 v10, 0x0

    .line 3512
    .local v10, "ocb":Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;
    const/16 v75, 0x0

    .line 3513
    .local v75, "icb":Lcom/mediatek/simservs/client/IncomingCommunicationBarring;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v70

    .line 3514
    .local v70, "curTime":J
    const-string v2, "AO"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string v2, "OI"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string v2, "OX"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string v2, "AB"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 3518
    :cond_8
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleSetCB(): mOcbCache = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mOcbCache:Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;
    invoke-static {v5}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1000(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", curTime = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v70

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", mOcbCacheLastQueried = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mOcbCacheLastQueried:J
    invoke-static {v5}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1100(Lcom/android/internal/telephony/MMTelSSTransport;)J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", facility = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", phoneId = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3522
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-static {v8}, Lcom/android/internal/telephony/MMTelSSUtils;->getXui(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/telephony/MMTelSSTransport;->mXui:Ljava/lang/String;

    .line 3523
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-static {v8}, Lcom/android/internal/telephony/MMTelSSUtils;->getXcapRootUri(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/telephony/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    .line 3524
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-static {v8}, Lcom/android/internal/telephony/MMTelSSUtils;->getXIntendedId(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/telephony/MMTelSSTransport;->mXIntendedId:Ljava/lang/String;

    .line 3525
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v2, v2, Lcom/android/internal/telephony/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 3526
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleSetCB(): OCB XcapRoot = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v5, v5, Lcom/android/internal/telephony/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3527
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v2, :cond_9

    .line 3528
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v3, 0x0

    new-instance v5, Ljava/net/UnknownHostException;

    invoke-direct {v5}, Ljava/net/UnknownHostException;-><init>()V

    invoke-static {v2, v3, v5}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 3530
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 3532
    :cond_9
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 3534
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # invokes: Lcom/android/internal/telephony/MMTelSSTransport;->requestXcapNetwork(I)V
    invoke-static {v2, v8}, Lcom/android/internal/telephony/MMTelSSTransport;->access$300(Lcom/android/internal/telephony/MMTelSSTransport;I)V

    .line 3535
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v3, v3, Lcom/android/internal/telephony/MMTelSSTransport;->mXui:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v4, v5, Lcom/android/internal/telephony/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v5, v5, Lcom/android/internal/telephony/MMTelSSTransport;->mXIntendedId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v6, v6, Lcom/android/internal/telephony/MMTelSSTransport;->mUserName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v7, v7, Lcom/android/internal/telephony/MMTelSSTransport;->mPassword:Ljava/lang/String;

    invoke-virtual/range {v2 .. v8}, Lcom/android/internal/telephony/MMTelSSTransport;->setSimservsInitParameters(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 3538
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mOcbCache:Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1000(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;

    move-result-object v2

    if-eqz v2, :cond_e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mOcbCachePhoneId:I
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1200(Lcom/android/internal/telephony/MMTelSSTransport;)I

    move-result v2

    if-ne v8, v2, :cond_e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mOcbCache:Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1000(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;->isSupportEtag()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 3540
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleSetCB(): using ETAG mOcbCache: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mOcbCache:Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;
    invoke-static {v5}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1000(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3541
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mOcbCache:Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1000(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;

    move-result-object v10

    .line 3542
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mNetwork:Landroid/net/Network;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$400(Lcom/android/internal/telephony/MMTelSSTransport;)Landroid/net/Network;

    move-result-object v2

    invoke-virtual {v10, v2}, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;->setNetwork(Landroid/net/Network;)V

    .line 3543
    invoke-virtual {v10}, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;->refresh()V

    .line 3544
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    move-wide/from16 v0, v70

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mOcbCacheLastQueried:J
    invoke-static {v2, v0, v1}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1102(Lcom/android/internal/telephony/MMTelSSTransport;J)J

    .line 3561
    :cond_b
    :goto_2
    const-string v2, "AI"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    const-string v2, "IR"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    const-string v2, "AB"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 3564
    :cond_c
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleSetCB(): mIcbCache = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mIcbCache:Lcom/mediatek/simservs/client/IncomingCommunicationBarring;
    invoke-static {v5}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1300(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/mediatek/simservs/client/IncomingCommunicationBarring;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", curTime = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v70

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", mIcbCacheLastQueried = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mIcbCacheLastQueried:J
    invoke-static {v5}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1400(Lcom/android/internal/telephony/MMTelSSTransport;)J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", facility = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", phoneId = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3569
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-static {v8}, Lcom/android/internal/telephony/MMTelSSUtils;->getXui(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/telephony/MMTelSSTransport;->mXui:Ljava/lang/String;

    .line 3570
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-static {v8}, Lcom/android/internal/telephony/MMTelSSUtils;->getXcapRootUri(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/telephony/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    .line 3571
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-static {v8}, Lcom/android/internal/telephony/MMTelSSUtils;->getXIntendedId(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/telephony/MMTelSSTransport;->mXIntendedId:Ljava/lang/String;

    .line 3573
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v2, v2, Lcom/android/internal/telephony/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 3574
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleSetCB(): ICB XcapRoot = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v5, v5, Lcom/android/internal/telephony/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3575
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v2, :cond_d

    .line 3576
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v3, 0x0

    new-instance v5, Ljava/net/UnknownHostException;

    invoke-direct {v5}, Ljava/net/UnknownHostException;-><init>()V

    invoke-static {v2, v3, v5}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 3578
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 3580
    :cond_d
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 3545
    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mOcbCache:Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1000(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;

    move-result-object v2

    if-eqz v2, :cond_f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mOcbCachePhoneId:I
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1200(Lcom/android/internal/telephony/MMTelSSTransport;)I

    move-result v2

    if-ne v8, v2, :cond_f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mOcbCacheLastQueried:J
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1100(Lcom/android/internal/telephony/MMTelSSTransport;)J

    move-result-wide v2

    cmp-long v2, v70, v2

    if-ltz v2, :cond_f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mOcbCacheLastQueried:J
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1100(Lcom/android/internal/telephony/MMTelSSTransport;)J

    move-result-wide v2

    sub-long v2, v70, v2

    const-wide/32 v6, 0x1d4c0

    cmp-long v2, v2, v6

    if-gez v2, :cond_f

    .line 3548
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleSetCB(): using mOcbCache: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mOcbCache:Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;
    invoke-static {v5}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1000(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3549
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mOcbCache:Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1000(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;

    move-result-object v10

    .line 3550
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mNetwork:Landroid/net/Network;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$400(Lcom/android/internal/telephony/MMTelSSTransport;)Landroid/net/Network;

    move-result-object v2

    invoke-virtual {v10, v2}, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;->setNetwork(Landroid/net/Network;)V
    :try_end_0
    .catch Lcom/mediatek/simservs/xcap/XcapException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_2

    .line 4031
    .end local v10    # "ocb":Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;
    .end local v70    # "curTime":J
    .end local v75    # "icb":Lcom/mediatek/simservs/client/IncomingCommunicationBarring;
    :catch_0
    move-exception v86

    .line 4032
    .local v86, "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    const/4 v3, 0x0

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mOcbCache:Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;
    invoke-static {v2, v3}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1002(Lcom/android/internal/telephony/MMTelSSTransport;Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;)Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;

    .line 4033
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    const/4 v3, -0x1

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mOcbCachePhoneId:I
    invoke-static {v2, v3}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1202(Lcom/android/internal/telephony/MMTelSSTransport;I)I

    .line 4034
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    const-wide/16 v6, 0x0

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mOcbCacheLastQueried:J
    invoke-static {v2, v6, v7}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1102(Lcom/android/internal/telephony/MMTelSSTransport;J)J

    .line 4035
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    const/4 v3, 0x0

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mIcbCache:Lcom/mediatek/simservs/client/IncomingCommunicationBarring;
    invoke-static {v2, v3}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1302(Lcom/android/internal/telephony/MMTelSSTransport;Lcom/mediatek/simservs/client/IncomingCommunicationBarring;)Lcom/mediatek/simservs/client/IncomingCommunicationBarring;

    .line 4036
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    const/4 v3, -0x1

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mIcbCachePhoneId:I
    invoke-static {v2, v3}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1502(Lcom/android/internal/telephony/MMTelSSTransport;I)I

    .line 4037
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    const-wide/16 v6, 0x0

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mIcbCacheLastQueried:J
    invoke-static {v2, v6, v7}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1402(Lcom/android/internal/telephony/MMTelSSTransport;J)J

    .line 4038
    invoke-virtual/range {v86 .. v86}, Lcom/mediatek/simservs/xcap/XcapException;->getHttpErrorCode()I

    move-result v2

    const/16 v3, 0x19c

    if-ne v2, v3, :cond_5d

    .line 4039
    const-string v2, "MMTelSS"

    const-string v3, "handleSetCB(): HTTP_ERROR_CODE_412"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4040
    const/16 v2, 0x19c

    goto/16 :goto_0

    .line 3552
    .end local v86    # "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    .restart local v10    # "ocb":Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;
    .restart local v70    # "curTime":J
    .restart local v75    # "icb":Lcom/mediatek/simservs/client/IncomingCommunicationBarring;
    :cond_f
    :try_start_1
    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mSimservs:Lcom/mediatek/simservs/client/SimServs;
    invoke-static {}, Lcom/android/internal/telephony/MMTelSSTransport;->access$500()Lcom/mediatek/simservs/client/SimServs;

    move-result-object v2

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mNetwork:Landroid/net/Network;
    invoke-static {v5}, Lcom/android/internal/telephony/MMTelSSTransport;->access$400(Lcom/android/internal/telephony/MMTelSSTransport;)Landroid/net/Network;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Lcom/mediatek/simservs/client/SimServs;->getOutgoingCommunicationBarring(ZLandroid/net/Network;)Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;

    move-result-object v10

    .line 3553
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mOcbCache:Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;
    invoke-static {v2, v10}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1002(Lcom/android/internal/telephony/MMTelSSTransport;Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;)Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;

    .line 3554
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mOcbCachePhoneId:I
    invoke-static {v2, v8}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1202(Lcom/android/internal/telephony/MMTelSSTransport;I)I

    .line 3555
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    move-wide/from16 v0, v70

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mOcbCacheLastQueried:J
    invoke-static {v2, v0, v1}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1102(Lcom/android/internal/telephony/MMTelSSTransport;J)J

    .line 3556
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleSetCB(): new mOcbCache = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mOcbCache:Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;
    invoke-static {v5}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1000(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", curTime = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v70

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Lcom/mediatek/simservs/xcap/XcapException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_2

    .line 4057
    .end local v10    # "ocb":Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;
    .end local v70    # "curTime":J
    .end local v75    # "icb":Lcom/mediatek/simservs/client/IncomingCommunicationBarring;
    :catch_1
    move-exception v72

    .line 4061
    .local v72, "e":Ljava/lang/Exception;
    const-string v2, "MMTelSS"

    const-string v3, "handleSetCB():Start to Print Stack Trace"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4062
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    const/4 v3, 0x0

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mOcbCache:Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;
    invoke-static {v2, v3}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1002(Lcom/android/internal/telephony/MMTelSSTransport;Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;)Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;

    .line 4063
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    const/4 v3, -0x1

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mOcbCachePhoneId:I
    invoke-static {v2, v3}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1202(Lcom/android/internal/telephony/MMTelSSTransport;I)I

    .line 4064
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    const-wide/16 v6, 0x0

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mOcbCacheLastQueried:J
    invoke-static {v2, v6, v7}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1102(Lcom/android/internal/telephony/MMTelSSTransport;J)J

    .line 4065
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    const/4 v3, 0x0

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mIcbCache:Lcom/mediatek/simservs/client/IncomingCommunicationBarring;
    invoke-static {v2, v3}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1302(Lcom/android/internal/telephony/MMTelSSTransport;Lcom/mediatek/simservs/client/IncomingCommunicationBarring;)Lcom/mediatek/simservs/client/IncomingCommunicationBarring;

    .line 4066
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    const/4 v3, -0x1

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mIcbCachePhoneId:I
    invoke-static {v2, v3}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1502(Lcom/android/internal/telephony/MMTelSSTransport;I)I

    .line 4067
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    const-wide/16 v6, 0x0

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mIcbCacheLastQueried:J
    invoke-static {v2, v6, v7}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1402(Lcom/android/internal/telephony/MMTelSSTransport;J)J

    .line 4069
    invoke-virtual/range {v72 .. v72}, Ljava/lang/Exception;->printStackTrace()V

    .line 4074
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v2, :cond_60

    .line 4075
    const/4 v2, 0x2

    invoke-static {v2}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v68

    .line 4076
    .restart local v68    # "ce":Lcom/android/internal/telephony/CommandException;
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v3, 0x0

    move-object/from16 v0, v68

    invoke-static {v2, v3, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 4077
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 4078
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v2

    if-eqz v2, :cond_10

    .line 4079
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->releaseNetwork()V

    .line 4081
    :cond_10
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 3582
    .end local v68    # "ce":Lcom/android/internal/telephony/CommandException;
    .end local v72    # "e":Ljava/lang/Exception;
    .restart local v10    # "ocb":Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;
    .restart local v70    # "curTime":J
    .restart local v75    # "icb":Lcom/mediatek/simservs/client/IncomingCommunicationBarring;
    :cond_11
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # invokes: Lcom/android/internal/telephony/MMTelSSTransport;->requestXcapNetwork(I)V
    invoke-static {v2, v8}, Lcom/android/internal/telephony/MMTelSSTransport;->access$300(Lcom/android/internal/telephony/MMTelSSTransport;I)V

    .line 3583
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v3, v3, Lcom/android/internal/telephony/MMTelSSTransport;->mXui:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v4, v5, Lcom/android/internal/telephony/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v5, v5, Lcom/android/internal/telephony/MMTelSSTransport;->mXIntendedId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v6, v6, Lcom/android/internal/telephony/MMTelSSTransport;->mUserName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v7, v7, Lcom/android/internal/telephony/MMTelSSTransport;->mPassword:Ljava/lang/String;

    invoke-virtual/range {v2 .. v8}, Lcom/android/internal/telephony/MMTelSSTransport;->setSimservsInitParameters(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 3586
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mIcbCache:Lcom/mediatek/simservs/client/IncomingCommunicationBarring;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1300(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/mediatek/simservs/client/IncomingCommunicationBarring;

    move-result-object v2

    if-eqz v2, :cond_18

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mIcbCachePhoneId:I
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1500(Lcom/android/internal/telephony/MMTelSSTransport;)I

    move-result v2

    if-ne v8, v2, :cond_18

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mIcbCache:Lcom/mediatek/simservs/client/IncomingCommunicationBarring;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1300(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/mediatek/simservs/client/IncomingCommunicationBarring;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/simservs/client/IncomingCommunicationBarring;->isSupportEtag()Z

    move-result v2

    if-eqz v2, :cond_18

    .line 3588
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleSetCB(): using ETAG mIcbCache: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mIcbCache:Lcom/mediatek/simservs/client/IncomingCommunicationBarring;
    invoke-static {v5}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1300(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/mediatek/simservs/client/IncomingCommunicationBarring;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3589
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mIcbCache:Lcom/mediatek/simservs/client/IncomingCommunicationBarring;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1300(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/mediatek/simservs/client/IncomingCommunicationBarring;

    move-result-object v75

    .line 3590
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mNetwork:Landroid/net/Network;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$400(Lcom/android/internal/telephony/MMTelSSTransport;)Landroid/net/Network;

    move-result-object v2

    move-object/from16 v0, v75

    invoke-virtual {v0, v2}, Lcom/mediatek/simservs/client/IncomingCommunicationBarring;->setNetwork(Landroid/net/Network;)V

    .line 3591
    invoke-virtual/range {v75 .. v75}, Lcom/mediatek/simservs/client/IncomingCommunicationBarring;->refresh()V

    .line 3592
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    move-wide/from16 v0, v70

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mIcbCacheLastQueried:J
    invoke-static {v2, v0, v1}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1402(Lcom/android/internal/telephony/MMTelSSTransport;J)J

    .line 3609
    :cond_12
    :goto_3
    const/16 v76, 0x0

    .local v76, "it":I
    :goto_4
    move/from16 v0, v76

    move/from16 v1, v18

    if-ge v0, v1, :cond_60

    .line 3610
    const/4 v2, 0x1

    move/from16 v0, v18

    if-eq v0, v2, :cond_13

    .line 3611
    const-string v2, "AG"

    move-object/from16 v0, v82

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 3612
    if-nez v76, :cond_1a

    const-string v13, "OI"

    .line 3629
    :cond_13
    :goto_5
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleSetCB():num_of_expansion="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", round="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v76

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ",for facility="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ",with lockState="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3631
    const-string v2, "AO"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_14

    const-string v2, "OI"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_14

    const-string v2, "OX"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 3634
    :cond_14
    invoke-virtual {v10}, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;->getRuleSet()Lcom/mediatek/simservs/client/policy/RuleSet;

    move-result-object v80

    .line 3635
    .local v80, "oRuleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    const/16 v84, 0x0

    .line 3636
    .local v84, "ruleList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    invoke-virtual {v10}, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;->createNewRuleSet()Lcom/mediatek/simservs/client/policy/RuleSet;

    move-result-object v11

    .line 3637
    .local v11, "newRuleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    const/16 v67, 0x0

    .line 3639
    .local v67, "addedNewRule":Z
    if-eqz v80, :cond_23

    .line 3640
    invoke-virtual/range {v80 .. v80}, Lcom/mediatek/simservs/client/policy/RuleSet;->getRules()Ljava/util/List;

    move-result-object v84

    .line 3646
    :goto_6
    if-eqz v84, :cond_33

    .line 3647
    const/16 v73, 0x0

    .local v73, "i":I
    :goto_7
    invoke-interface/range {v84 .. v84}, Ljava/util/List;->size()I

    move-result v2

    move/from16 v0, v73

    if-ge v0, v2, :cond_33

    .line 3648
    move-object/from16 v0, v84

    move/from16 v1, v73

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/mediatek/simservs/client/policy/Rule;

    .line 3649
    .local v12, "r":Lcom/mediatek/simservs/client/policy/Rule;
    invoke-virtual {v12}, Lcom/mediatek/simservs/client/policy/Rule;->getConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v69

    .line 3650
    .local v69, "cond":Lcom/mediatek/simservs/client/policy/Conditions;
    invoke-virtual {v12}, Lcom/mediatek/simservs/client/policy/Rule;->getActions()Lcom/mediatek/simservs/client/policy/Actions;

    move-result-object v66

    .line 3651
    .local v66, "action":Lcom/mediatek/simservs/client/policy/Actions;
    const/16 v77, 0x0

    .line 3653
    .local v77, "mediaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v69, :cond_26

    .line 3654
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleSetCB():MO-facility="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ",action="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v66 .. v66}, Lcom/mediatek/simservs/client/policy/Actions;->isAllow()Z

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ",international="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v69 .. v69}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendInternational()Z

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ",internationalExHC="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v69 .. v69}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendInternationalExHc()Z

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3655
    invoke-virtual/range {v69 .. v69}, Lcom/mediatek/simservs/client/policy/Conditions;->getMedias()Ljava/util/List;

    move-result-object v77

    .line 3656
    invoke-virtual/range {v69 .. v69}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendInternational()Z

    move-result v2

    if-eqz v2, :cond_24

    .line 3657
    iget-object v0, v12, Lcom/mediatek/simservs/client/policy/Rule;->mId:Ljava/lang/String;

    move-object/from16 v16, v0

    .line 3658
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Update BAOIC_RuleID="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3684
    :cond_15
    :goto_8
    const-string v2, "OI"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a

    if-eqz v69, :cond_2a

    invoke-virtual/range {v69 .. v69}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendInternational()Z

    move-result v2

    if-eqz v2, :cond_2a

    move-object/from16 v0, p0

    move-object/from16 v1, v77

    invoke-virtual {v0, v1, v15}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->containSpecificMedia(Ljava/util/List;I)Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 3688
    if-nez v15, :cond_16

    if-nez v15, :cond_29

    if-nez v64, :cond_29

    .line 3689
    :cond_16
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mUpdateSingleRule:Z
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1900(Lcom/android/internal/telephony/MMTelSSTransport;)Z

    move-result v17

    move-object/from16 v9, p0

    move/from16 v19, v8

    invoke-virtual/range {v9 .. v19}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->handleCreateNewRuleForExistingCB(Lcom/mediatek/simservs/client/SimservType;Lcom/mediatek/simservs/client/policy/RuleSet;Lcom/mediatek/simservs/client/policy/Rule;Ljava/lang/String;IILjava/lang/String;ZII)Z

    move-result v67

    .line 3693
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleSetCB():OI-addedNewRule="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v67

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3695
    if-eqz v15, :cond_28

    .line 3696
    const/16 v24, -0x1

    const/16 v25, -0x1

    move-object/from16 v19, p0

    move-object/from16 v20, v12

    move-object/from16 v21, v11

    move/from16 v22, v15

    move/from16 v23, v8

    invoke-virtual/range {v19 .. v25}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->copyOldRuleToNewRuleSetExceptSpecificMedia(Lcom/mediatek/simservs/client/policy/Rule;Lcom/mediatek/simservs/client/policy/RuleSet;IIII)Lcom/mediatek/simservs/client/policy/Rule;

    move-result-object v78

    .line 3699
    .local v78, "newRule":Lcom/mediatek/simservs/client/policy/Rule;
    if-eqz v78, :cond_17

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mUpdateSingleRule:Z
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1900(Lcom/android/internal/telephony/MMTelSSTransport;)Z

    move-result v2

    if-eqz v2, :cond_17

    const/4 v2, 0x1

    move/from16 v0, v18

    if-ne v2, v0, :cond_17

    .line 3700
    move-object/from16 v0, v78

    iget-object v2, v0, Lcom/mediatek/simservs/client/policy/Rule;->mId:Ljava/lang/String;

    invoke-virtual {v10, v2}, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;->saveRule(Ljava/lang/String;)V

    .line 3647
    .end local v78    # "newRule":Lcom/mediatek/simservs/client/policy/Rule;
    :cond_17
    :goto_9
    add-int/lit8 v73, v73, 0x1

    goto/16 :goto_7

    .line 3593
    .end local v11    # "newRuleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    .end local v12    # "r":Lcom/mediatek/simservs/client/policy/Rule;
    .end local v66    # "action":Lcom/mediatek/simservs/client/policy/Actions;
    .end local v67    # "addedNewRule":Z
    .end local v69    # "cond":Lcom/mediatek/simservs/client/policy/Conditions;
    .end local v73    # "i":I
    .end local v76    # "it":I
    .end local v77    # "mediaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v80    # "oRuleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    .end local v84    # "ruleList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    :cond_18
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mIcbCache:Lcom/mediatek/simservs/client/IncomingCommunicationBarring;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1300(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/mediatek/simservs/client/IncomingCommunicationBarring;

    move-result-object v2

    if-eqz v2, :cond_19

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mIcbCachePhoneId:I
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1500(Lcom/android/internal/telephony/MMTelSSTransport;)I

    move-result v2

    if-ne v8, v2, :cond_19

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mIcbCacheLastQueried:J
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1400(Lcom/android/internal/telephony/MMTelSSTransport;)J

    move-result-wide v2

    cmp-long v2, v70, v2

    if-ltz v2, :cond_19

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mIcbCacheLastQueried:J
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1400(Lcom/android/internal/telephony/MMTelSSTransport;)J

    move-result-wide v2

    sub-long v2, v70, v2

    const-wide/32 v6, 0x1d4c0

    cmp-long v2, v2, v6

    if-gez v2, :cond_19

    .line 3596
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleSetCB(): using mIcbCache: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mIcbCache:Lcom/mediatek/simservs/client/IncomingCommunicationBarring;
    invoke-static {v5}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1300(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/mediatek/simservs/client/IncomingCommunicationBarring;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3597
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mIcbCache:Lcom/mediatek/simservs/client/IncomingCommunicationBarring;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1300(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/mediatek/simservs/client/IncomingCommunicationBarring;

    move-result-object v75

    .line 3598
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mNetwork:Landroid/net/Network;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$400(Lcom/android/internal/telephony/MMTelSSTransport;)Landroid/net/Network;

    move-result-object v2

    move-object/from16 v0, v75

    invoke-virtual {v0, v2}, Lcom/mediatek/simservs/client/IncomingCommunicationBarring;->setNetwork(Landroid/net/Network;)V

    goto/16 :goto_3

    .line 3600
    :cond_19
    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mSimservs:Lcom/mediatek/simservs/client/SimServs;
    invoke-static {}, Lcom/android/internal/telephony/MMTelSSTransport;->access$500()Lcom/mediatek/simservs/client/SimServs;

    move-result-object v2

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mNetwork:Landroid/net/Network;
    invoke-static {v5}, Lcom/android/internal/telephony/MMTelSSTransport;->access$400(Lcom/android/internal/telephony/MMTelSSTransport;)Landroid/net/Network;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Lcom/mediatek/simservs/client/SimServs;->getIncomingCommunicationBarring(ZLandroid/net/Network;)Lcom/mediatek/simservs/client/IncomingCommunicationBarring;

    move-result-object v75

    .line 3601
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    move-object/from16 v0, v75

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mIcbCache:Lcom/mediatek/simservs/client/IncomingCommunicationBarring;
    invoke-static {v2, v0}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1302(Lcom/android/internal/telephony/MMTelSSTransport;Lcom/mediatek/simservs/client/IncomingCommunicationBarring;)Lcom/mediatek/simservs/client/IncomingCommunicationBarring;

    .line 3602
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mIcbCachePhoneId:I
    invoke-static {v2, v8}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1502(Lcom/android/internal/telephony/MMTelSSTransport;I)I

    .line 3603
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    move-wide/from16 v0, v70

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mIcbCacheLastQueried:J
    invoke-static {v2, v0, v1}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1402(Lcom/android/internal/telephony/MMTelSSTransport;J)J

    .line 3604
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleSetCB(): new mIcbCache = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mIcbCache:Lcom/mediatek/simservs/client/IncomingCommunicationBarring;
    invoke-static {v5}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1300(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/mediatek/simservs/client/IncomingCommunicationBarring;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", curTime = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v70

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 3613
    .restart local v76    # "it":I
    :cond_1a
    const/4 v2, 0x1

    move/from16 v0, v76

    if-ne v0, v2, :cond_1b

    const-string v13, "OX"

    goto/16 :goto_5

    .line 3614
    :cond_1b
    const/4 v2, 0x2

    move/from16 v0, v76

    if-ne v0, v2, :cond_13

    const-string v13, "AO"

    goto/16 :goto_5

    .line 3616
    :cond_1c
    const-string v2, "AC"

    move-object/from16 v0, v82

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 3617
    if-nez v76, :cond_1d

    const-string v13, "IR"

    goto/16 :goto_5

    .line 3618
    :cond_1d
    const/4 v2, 0x1

    move/from16 v0, v76

    if-ne v0, v2, :cond_13

    const-string v13, "AI"

    goto/16 :goto_5

    .line 3620
    :cond_1e
    const-string v2, "AB"

    move-object/from16 v0, v82

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 3621
    if-nez v76, :cond_1f

    const-string v13, "OI"

    goto/16 :goto_5

    .line 3622
    :cond_1f
    const/4 v2, 0x1

    move/from16 v0, v76

    if-ne v0, v2, :cond_20

    const-string v13, "OX"

    goto/16 :goto_5

    .line 3623
    :cond_20
    const/4 v2, 0x2

    move/from16 v0, v76

    if-ne v0, v2, :cond_21

    const-string v13, "AO"

    goto/16 :goto_5

    .line 3624
    :cond_21
    const/4 v2, 0x3

    move/from16 v0, v76

    if-ne v0, v2, :cond_22

    const-string v13, "IR"

    goto/16 :goto_5

    .line 3625
    :cond_22
    const/4 v2, 0x4

    move/from16 v0, v76

    if-ne v0, v2, :cond_13

    const-string v13, "AI"

    goto/16 :goto_5

    .line 3642
    .restart local v11    # "newRuleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    .restart local v67    # "addedNewRule":Z
    .restart local v80    # "oRuleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    .restart local v84    # "ruleList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    :cond_23
    const-string v2, "MMTelSS"

    const-string v3, "No MO related CB rules in remote server"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 3659
    .restart local v12    # "r":Lcom/mediatek/simservs/client/policy/Rule;
    .restart local v66    # "action":Lcom/mediatek/simservs/client/policy/Actions;
    .restart local v69    # "cond":Lcom/mediatek/simservs/client/policy/Conditions;
    .restart local v73    # "i":I
    .restart local v77    # "mediaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_24
    invoke-virtual/range {v69 .. v69}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendInternationalExHc()Z

    move-result v2

    if-eqz v2, :cond_25

    .line 3660
    iget-object v0, v12, Lcom/mediatek/simservs/client/policy/Rule;->mId:Ljava/lang/String;

    move-object/from16 v26, v0

    .line 3661
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Update BAOICExHC_RuleID="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 3663
    :cond_25
    iget-object v0, v12, Lcom/mediatek/simservs/client/policy/Rule;->mId:Ljava/lang/String;

    move-object/from16 v34, v0

    .line 3664
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Update BAOC_RuleID="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v34

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 3668
    :cond_26
    if-nez v69, :cond_27

    const-string v2, "AO"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 3669
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleSetCB():cond=null but AO case!MO-facility="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ",action="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v66 .. v66}, Lcom/mediatek/simservs/client/policy/Actions;->isAllow()Z

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3670
    const/16 v77, 0x0

    .line 3671
    const-string v2, "AO"

    move-object/from16 v0, v34

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 3672
    iget-object v0, v12, Lcom/mediatek/simservs/client/policy/Rule;->mId:Ljava/lang/String;

    move-object/from16 v34, v0

    .line 3673
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Update BAOC_RuleID="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v34

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 3676
    :cond_27
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleSetCB():Empty MO cond (cond==null) for this rule="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3677
    const-string v2, "AO"

    move-object/from16 v0, v34

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 3678
    iget-object v0, v12, Lcom/mediatek/simservs/client/policy/Rule;->mId:Ljava/lang/String;

    move-object/from16 v34, v0

    .line 3679
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Update BAOC_RuleID="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v34

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 3703
    :cond_28
    const/16 v64, 0x1

    goto/16 :goto_9

    .line 3705
    :cond_29
    if-nez v15, :cond_17

    const/4 v2, 0x1

    move/from16 v0, v64

    if-ne v0, v2, :cond_17

    .line 3706
    const-string v2, "MMTelSS"

    const-string v3, "Already add rule for BAOIC with serviceClass=0 case previously"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    .line 3709
    :cond_2a
    const-string v2, "OX"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e

    if-eqz v69, :cond_2e

    invoke-virtual/range {v69 .. v69}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendInternationalExHc()Z

    move-result v2

    if-eqz v2, :cond_2e

    move-object/from16 v0, p0

    move-object/from16 v1, v77

    invoke-virtual {v0, v1, v15}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->containSpecificMedia(Ljava/util/List;I)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 3713
    if-nez v15, :cond_2b

    if-nez v15, :cond_2d

    if-nez v65, :cond_2d

    .line 3714
    :cond_2b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mUpdateSingleRule:Z
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1900(Lcom/android/internal/telephony/MMTelSSTransport;)Z

    move-result v27

    move-object/from16 v19, p0

    move-object/from16 v20, v10

    move-object/from16 v21, v11

    move-object/from16 v22, v12

    move-object/from16 v23, v13

    move/from16 v24, v14

    move/from16 v25, v15

    move/from16 v28, v18

    move/from16 v29, v8

    invoke-virtual/range {v19 .. v29}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->handleCreateNewRuleForExistingCB(Lcom/mediatek/simservs/client/SimservType;Lcom/mediatek/simservs/client/policy/RuleSet;Lcom/mediatek/simservs/client/policy/Rule;Ljava/lang/String;IILjava/lang/String;ZII)Z

    move-result v67

    .line 3718
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleSetCB():OX-addedNewRule="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v67

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3720
    if-eqz v15, :cond_2c

    .line 3721
    const/16 v24, -0x1

    const/16 v25, -0x1

    move-object/from16 v19, p0

    move-object/from16 v20, v12

    move-object/from16 v21, v11

    move/from16 v22, v15

    move/from16 v23, v8

    invoke-virtual/range {v19 .. v25}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->copyOldRuleToNewRuleSetExceptSpecificMedia(Lcom/mediatek/simservs/client/policy/Rule;Lcom/mediatek/simservs/client/policy/RuleSet;IIII)Lcom/mediatek/simservs/client/policy/Rule;

    move-result-object v78

    .line 3724
    .restart local v78    # "newRule":Lcom/mediatek/simservs/client/policy/Rule;
    if-eqz v78, :cond_17

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mUpdateSingleRule:Z
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1900(Lcom/android/internal/telephony/MMTelSSTransport;)Z

    move-result v2

    if-eqz v2, :cond_17

    const/4 v2, 0x1

    move/from16 v0, v18

    if-ne v2, v0, :cond_17

    .line 3725
    move-object/from16 v0, v78

    iget-object v2, v0, Lcom/mediatek/simservs/client/policy/Rule;->mId:Ljava/lang/String;

    invoke-virtual {v10, v2}, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;->saveRule(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 3729
    .end local v78    # "newRule":Lcom/mediatek/simservs/client/policy/Rule;
    :cond_2c
    const/16 v65, 0x1

    goto/16 :goto_9

    .line 3731
    :cond_2d
    if-nez v15, :cond_17

    const/4 v2, 0x1

    move/from16 v0, v65

    if-ne v0, v2, :cond_17

    .line 3732
    const-string v2, "MMTelSS"

    const-string v3, "Already add rule for BAOICxH with serviceClass=0 case previously"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    .line 3735
    :cond_2e
    const-string v2, "AO"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_32

    move-object/from16 v0, p0

    move-object/from16 v1, v69

    invoke-virtual {v0, v1, v15}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->isBAOC(Lcom/mediatek/simservs/client/policy/Conditions;I)Z

    move-result v2

    if-eqz v2, :cond_32

    .line 3738
    if-nez v15, :cond_2f

    if-nez v15, :cond_31

    if-nez v63, :cond_31

    .line 3739
    :cond_2f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mUpdateSingleRule:Z
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1900(Lcom/android/internal/telephony/MMTelSSTransport;)Z

    move-result v35

    move-object/from16 v27, p0

    move-object/from16 v28, v10

    move-object/from16 v29, v11

    move-object/from16 v30, v12

    move-object/from16 v31, v13

    move/from16 v32, v14

    move/from16 v33, v15

    move/from16 v36, v18

    move/from16 v37, v8

    invoke-virtual/range {v27 .. v37}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->handleCreateNewRuleForExistingCB(Lcom/mediatek/simservs/client/SimservType;Lcom/mediatek/simservs/client/policy/RuleSet;Lcom/mediatek/simservs/client/policy/Rule;Ljava/lang/String;IILjava/lang/String;ZII)Z

    move-result v67

    .line 3743
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleSetCB():AO-addedNewRule="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v67

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3745
    if-eqz v15, :cond_30

    .line 3746
    const/16 v24, -0x1

    const/16 v25, -0x1

    move-object/from16 v19, p0

    move-object/from16 v20, v12

    move-object/from16 v21, v11

    move/from16 v22, v15

    move/from16 v23, v8

    invoke-virtual/range {v19 .. v25}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->copyOldRuleToNewRuleSetExceptSpecificMedia(Lcom/mediatek/simservs/client/policy/Rule;Lcom/mediatek/simservs/client/policy/RuleSet;IIII)Lcom/mediatek/simservs/client/policy/Rule;

    move-result-object v78

    .line 3749
    .restart local v78    # "newRule":Lcom/mediatek/simservs/client/policy/Rule;
    if-eqz v78, :cond_17

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mUpdateSingleRule:Z
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1900(Lcom/android/internal/telephony/MMTelSSTransport;)Z

    move-result v2

    if-eqz v2, :cond_17

    const/4 v2, 0x1

    move/from16 v0, v18

    if-ne v2, v0, :cond_17

    .line 3750
    move-object/from16 v0, v78

    iget-object v2, v0, Lcom/mediatek/simservs/client/policy/Rule;->mId:Ljava/lang/String;

    invoke-virtual {v10, v2}, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;->saveRule(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 3753
    .end local v78    # "newRule":Lcom/mediatek/simservs/client/policy/Rule;
    :cond_30
    const/16 v63, 0x1

    goto/16 :goto_9

    .line 3755
    :cond_31
    if-nez v15, :cond_17

    const/4 v2, 0x1

    move/from16 v0, v63

    if-ne v0, v2, :cond_17

    .line 3756
    const-string v2, "MMTelSS"

    const-string v3, "Already add rule for BAOC with serviceClass=0 case previously"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    .line 3761
    :cond_32
    const-string v2, "MMTelSS"

    const-string v3, "handleSetCB():MO Copy old rule inot newRuleSet"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3762
    const/4 v2, -0x1

    const/4 v3, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v11, v2, v3}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->copyOldRuleToNewRuleSet(Lcom/mediatek/simservs/client/policy/Rule;Lcom/mediatek/simservs/client/policy/RuleSet;II)Lcom/mediatek/simservs/client/policy/Rule;

    goto/16 :goto_9

    .line 3771
    .end local v12    # "r":Lcom/mediatek/simservs/client/policy/Rule;
    .end local v66    # "action":Lcom/mediatek/simservs/client/policy/Actions;
    .end local v69    # "cond":Lcom/mediatek/simservs/client/policy/Conditions;
    .end local v73    # "i":I
    .end local v77    # "mediaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_33
    if-nez v67, :cond_35

    .line 3775
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleSetCB():MO add new rule for this time\'s request-facility="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ",lockState="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ",serviceClass="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3776
    const-string v41, ""

    .line 3778
    .local v41, "newRuleID":Ljava/lang/String;
    const-string v2, "AO"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_37

    .line 3779
    move-object/from16 v41, v34

    .line 3785
    :cond_34
    :goto_a
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleSetCB():MO add new rule with id="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v41

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3786
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mUpdateSingleRule:Z
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1900(Lcom/android/internal/telephony/MMTelSSTransport;)Z

    move-result v42

    move-object/from16 v35, p0

    move-object/from16 v36, v10

    move-object/from16 v37, v11

    move-object/from16 v38, v13

    move/from16 v39, v14

    move/from16 v40, v15

    move/from16 v43, v18

    move/from16 v44, v8

    invoke-virtual/range {v35 .. v44}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->handleCreateNewRuleForReqCB(Lcom/mediatek/simservs/client/SimservType;Lcom/mediatek/simservs/client/policy/RuleSet;Ljava/lang/String;IILjava/lang/String;ZII)Z

    move-result v67

    .line 3793
    .end local v41    # "newRuleID":Ljava/lang/String;
    :cond_35
    invoke-virtual {v11}, Lcom/mediatek/simservs/client/policy/RuleSet;->getRules()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_39

    .line 3794
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Dump MO SetCB  XML:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v11}, Lcom/mediatek/simservs/client/policy/RuleSet;->toXmlString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3799
    :goto_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mUpdateSingleRule:Z
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1900(Lcom/android/internal/telephony/MMTelSSTransport;)Z

    move-result v2

    if-nez v2, :cond_3a

    .line 3800
    invoke-virtual {v10}, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;->saveRuleSet()V

    .line 3609
    .end local v11    # "newRuleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    .end local v67    # "addedNewRule":Z
    .end local v80    # "oRuleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    :cond_36
    :goto_c
    add-int/lit8 v76, v76, 0x1

    goto/16 :goto_4

    .line 3780
    .restart local v11    # "newRuleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    .restart local v41    # "newRuleID":Ljava/lang/String;
    .restart local v67    # "addedNewRule":Z
    .restart local v80    # "oRuleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    :cond_37
    const-string v2, "OI"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_38

    .line 3781
    move-object/from16 v41, v16

    goto :goto_a

    .line 3782
    :cond_38
    const-string v2, "OX"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_34

    .line 3783
    move-object/from16 v41, v26

    goto :goto_a

    .line 3796
    .end local v41    # "newRuleID":Ljava/lang/String;
    :cond_39
    const-string v2, "MMTelSS"

    const-string v3, "Dump MO SetCB XML: ruleset with empty rules"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 3802
    :cond_3a
    const/4 v2, 0x1

    move/from16 v0, v18

    if-le v0, v2, :cond_36

    .line 3803
    const/16 v79, 0x0

    .line 3804
    .local v79, "newRuleList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    invoke-virtual {v11}, Lcom/mediatek/simservs/client/policy/RuleSet;->getRules()Ljava/util/List;

    move-result-object v79

    .line 3805
    const/16 v73, 0x0

    .restart local v73    # "i":I
    :goto_d
    invoke-interface/range {v79 .. v79}, Ljava/util/List;->size()I

    move-result v2

    move/from16 v0, v73

    if-ge v0, v2, :cond_36

    .line 3806
    move-object/from16 v0, v79

    move/from16 v1, v73

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v78

    check-cast v78, Lcom/mediatek/simservs/client/policy/Rule;

    .line 3807
    .restart local v78    # "newRule":Lcom/mediatek/simservs/client/policy/Rule;
    move-object/from16 v0, v78

    iget-object v2, v0, Lcom/mediatek/simservs/client/policy/Rule;->mId:Ljava/lang/String;

    invoke-virtual {v10, v2}, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;->saveRule(Ljava/lang/String;)V

    .line 3805
    add-int/lit8 v73, v73, 0x1

    goto :goto_d

    .line 3811
    .end local v11    # "newRuleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    .end local v67    # "addedNewRule":Z
    .end local v73    # "i":I
    .end local v78    # "newRule":Lcom/mediatek/simservs/client/policy/Rule;
    .end local v79    # "newRuleList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    .end local v80    # "oRuleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    .end local v84    # "ruleList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    :cond_3b
    const-string v2, "AI"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3c

    const-string v2, "IR"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_50

    .line 3814
    :cond_3c
    invoke-virtual/range {v75 .. v75}, Lcom/mediatek/simservs/client/IncomingCommunicationBarring;->getRuleSet()Lcom/mediatek/simservs/client/policy/RuleSet;

    move-result-object v74

    .line 3815
    .local v74, "iRuleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    const/16 v84, 0x0

    .line 3816
    .restart local v84    # "ruleList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    invoke-virtual/range {v75 .. v75}, Lcom/mediatek/simservs/client/IncomingCommunicationBarring;->createNewRuleSet()Lcom/mediatek/simservs/client/policy/RuleSet;

    move-result-object v11

    .line 3817
    .restart local v11    # "newRuleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    const/16 v67, 0x0

    .line 3819
    .restart local v67    # "addedNewRule":Z
    if-eqz v74, :cond_40

    .line 3820
    invoke-virtual/range {v74 .. v74}, Lcom/mediatek/simservs/client/policy/RuleSet;->getRules()Ljava/util/List;

    move-result-object v84

    .line 3826
    :goto_e
    if-eqz v84, :cond_4a

    .line 3827
    const/16 v73, 0x0

    .restart local v73    # "i":I
    :goto_f
    invoke-interface/range {v84 .. v84}, Ljava/util/List;->size()I

    move-result v2

    move/from16 v0, v73

    if-ge v0, v2, :cond_4a

    .line 3828
    move-object/from16 v0, v84

    move/from16 v1, v73

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/mediatek/simservs/client/policy/Rule;

    .line 3829
    .restart local v12    # "r":Lcom/mediatek/simservs/client/policy/Rule;
    invoke-virtual {v12}, Lcom/mediatek/simservs/client/policy/Rule;->getConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v69

    .line 3830
    .restart local v69    # "cond":Lcom/mediatek/simservs/client/policy/Conditions;
    invoke-virtual {v12}, Lcom/mediatek/simservs/client/policy/Rule;->getActions()Lcom/mediatek/simservs/client/policy/Actions;

    move-result-object v66

    .line 3831
    .restart local v66    # "action":Lcom/mediatek/simservs/client/policy/Actions;
    const/16 v77, 0x0

    .line 3833
    .restart local v77    # "mediaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v69, :cond_42

    .line 3834
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleSetCB():MT-facility="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ",action="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v66 .. v66}, Lcom/mediatek/simservs/client/policy/Actions;->isAllow()Z

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ",international="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v69 .. v69}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendInternational()Z

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ",roaming="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v69 .. v69}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendRoaming()Z

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3835
    invoke-virtual/range {v69 .. v69}, Lcom/mediatek/simservs/client/policy/Conditions;->getMedias()Ljava/util/List;

    move-result-object v77

    .line 3836
    invoke-virtual/range {v69 .. v69}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendRoaming()Z

    move-result v2

    if-eqz v2, :cond_41

    .line 3837
    iget-object v0, v12, Lcom/mediatek/simservs/client/policy/Rule;->mId:Ljava/lang/String;

    move-object/from16 v49, v0

    .line 3838
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Update BAICR_RuleID="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v49

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3851
    :cond_3d
    :goto_10
    const-string v2, "IR"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_45

    if-eqz v69, :cond_45

    invoke-virtual/range {v69 .. v69}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendRoaming()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_45

    move-object/from16 v0, p0

    move-object/from16 v1, v77

    invoke-virtual {v0, v1, v15}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->containSpecificMedia(Ljava/util/List;I)Z

    move-result v2

    if-eqz v2, :cond_45

    .line 3855
    if-nez v15, :cond_3e

    if-nez v15, :cond_44

    if-nez v62, :cond_44

    .line 3857
    :cond_3e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mUpdateSingleRule:Z
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1900(Lcom/android/internal/telephony/MMTelSSTransport;)Z

    move-result v50

    move-object/from16 v42, p0

    move-object/from16 v43, v75

    move-object/from16 v44, v11

    move-object/from16 v45, v12

    move-object/from16 v46, v13

    move/from16 v47, v14

    move/from16 v48, v15

    move/from16 v51, v18

    move/from16 v52, v8

    invoke-virtual/range {v42 .. v52}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->handleCreateNewRuleForExistingCB(Lcom/mediatek/simservs/client/SimservType;Lcom/mediatek/simservs/client/policy/RuleSet;Lcom/mediatek/simservs/client/policy/Rule;Ljava/lang/String;IILjava/lang/String;ZII)Z

    move-result v67

    .line 3861
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleSetCB():IR-addedNewRule="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v67

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3863
    if-eqz v15, :cond_43

    .line 3864
    const/16 v24, -0x1

    const/16 v25, -0x1

    move-object/from16 v19, p0

    move-object/from16 v20, v12

    move-object/from16 v21, v11

    move/from16 v22, v15

    move/from16 v23, v8

    invoke-virtual/range {v19 .. v25}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->copyOldRuleToNewRuleSetExceptSpecificMedia(Lcom/mediatek/simservs/client/policy/Rule;Lcom/mediatek/simservs/client/policy/RuleSet;IIII)Lcom/mediatek/simservs/client/policy/Rule;

    move-result-object v78

    .line 3867
    .restart local v78    # "newRule":Lcom/mediatek/simservs/client/policy/Rule;
    if-eqz v78, :cond_3f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mUpdateSingleRule:Z
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1900(Lcom/android/internal/telephony/MMTelSSTransport;)Z

    move-result v2

    if-eqz v2, :cond_3f

    const/4 v2, 0x1

    move/from16 v0, v18

    if-ne v2, v0, :cond_3f

    .line 3868
    move-object/from16 v0, v78

    iget-object v2, v0, Lcom/mediatek/simservs/client/policy/Rule;->mId:Ljava/lang/String;

    move-object/from16 v0, v75

    invoke-virtual {v0, v2}, Lcom/mediatek/simservs/client/IncomingCommunicationBarring;->saveRule(Ljava/lang/String;)V

    .line 3827
    .end local v78    # "newRule":Lcom/mediatek/simservs/client/policy/Rule;
    :cond_3f
    :goto_11
    add-int/lit8 v73, v73, 0x1

    goto/16 :goto_f

    .line 3822
    .end local v12    # "r":Lcom/mediatek/simservs/client/policy/Rule;
    .end local v66    # "action":Lcom/mediatek/simservs/client/policy/Actions;
    .end local v69    # "cond":Lcom/mediatek/simservs/client/policy/Conditions;
    .end local v73    # "i":I
    .end local v77    # "mediaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_40
    const-string v2, "MMTelSS"

    const-string v3, "No MT related CB rules in remote server"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_e

    .line 3840
    .restart local v12    # "r":Lcom/mediatek/simservs/client/policy/Rule;
    .restart local v66    # "action":Lcom/mediatek/simservs/client/policy/Actions;
    .restart local v69    # "cond":Lcom/mediatek/simservs/client/policy/Conditions;
    .restart local v73    # "i":I
    .restart local v77    # "mediaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_41
    iget-object v0, v12, Lcom/mediatek/simservs/client/policy/Rule;->mId:Ljava/lang/String;

    move-object/from16 v57, v0

    .line 3841
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Update BAIC_RuleID="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v57

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_10

    .line 3844
    :cond_42
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleSetCB():Empty MT cond (cond==null) for this rule="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3845
    const-string v2, "AI"

    move-object/from16 v0, v57

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3d

    .line 3846
    iget-object v0, v12, Lcom/mediatek/simservs/client/policy/Rule;->mId:Ljava/lang/String;

    move-object/from16 v57, v0

    .line 3847
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Update BAIC_RuleID="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v57

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_10

    .line 3871
    :cond_43
    const/16 v62, 0x1

    goto :goto_11

    .line 3873
    :cond_44
    if-nez v15, :cond_3f

    const/4 v2, 0x1

    move/from16 v0, v62

    if-ne v0, v2, :cond_3f

    .line 3874
    const-string v2, "MMTelSS"

    const-string v3, "Already add rule for BAICr with serviceClass=0 case previously"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11

    .line 3877
    :cond_45
    const-string v2, "AI"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_49

    move-object/from16 v0, p0

    move-object/from16 v1, v69

    invoke-virtual {v0, v1, v15}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->isBAIC(Lcom/mediatek/simservs/client/policy/Conditions;I)Z

    move-result v2

    if-eqz v2, :cond_49

    move-object/from16 v0, p0

    move-object/from16 v1, v77

    invoke-virtual {v0, v1, v15}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->containSpecificMedia(Ljava/util/List;I)Z

    move-result v2

    if-eqz v2, :cond_49

    .line 3881
    if-nez v15, :cond_46

    if-nez v15, :cond_48

    if-nez v61, :cond_48

    .line 3882
    :cond_46
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mUpdateSingleRule:Z
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1900(Lcom/android/internal/telephony/MMTelSSTransport;)Z

    move-result v58

    move-object/from16 v50, p0

    move-object/from16 v51, v75

    move-object/from16 v52, v11

    move-object/from16 v53, v12

    move-object/from16 v54, v13

    move/from16 v55, v14

    move/from16 v56, v15

    move/from16 v59, v18

    move/from16 v60, v8

    invoke-virtual/range {v50 .. v60}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->handleCreateNewRuleForExistingCB(Lcom/mediatek/simservs/client/SimservType;Lcom/mediatek/simservs/client/policy/RuleSet;Lcom/mediatek/simservs/client/policy/Rule;Ljava/lang/String;IILjava/lang/String;ZII)Z

    move-result v67

    .line 3886
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleSetCB():AI-addedNewRule="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v67

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3888
    if-eqz v15, :cond_47

    .line 3889
    const/16 v24, -0x1

    const/16 v25, -0x1

    move-object/from16 v19, p0

    move-object/from16 v20, v12

    move-object/from16 v21, v11

    move/from16 v22, v15

    move/from16 v23, v8

    invoke-virtual/range {v19 .. v25}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->copyOldRuleToNewRuleSetExceptSpecificMedia(Lcom/mediatek/simservs/client/policy/Rule;Lcom/mediatek/simservs/client/policy/RuleSet;IIII)Lcom/mediatek/simservs/client/policy/Rule;

    move-result-object v78

    .line 3892
    .restart local v78    # "newRule":Lcom/mediatek/simservs/client/policy/Rule;
    if-eqz v78, :cond_3f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mUpdateSingleRule:Z
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1900(Lcom/android/internal/telephony/MMTelSSTransport;)Z

    move-result v2

    if-eqz v2, :cond_3f

    const/4 v2, 0x1

    move/from16 v0, v18

    if-ne v2, v0, :cond_3f

    .line 3893
    move-object/from16 v0, v78

    iget-object v2, v0, Lcom/mediatek/simservs/client/policy/Rule;->mId:Ljava/lang/String;

    move-object/from16 v0, v75

    invoke-virtual {v0, v2}, Lcom/mediatek/simservs/client/IncomingCommunicationBarring;->saveRule(Ljava/lang/String;)V

    goto/16 :goto_11

    .line 3896
    .end local v78    # "newRule":Lcom/mediatek/simservs/client/policy/Rule;
    :cond_47
    const/16 v61, 0x1

    goto/16 :goto_11

    .line 3898
    :cond_48
    if-nez v15, :cond_3f

    const/4 v2, 0x1

    move/from16 v0, v61

    if-ne v0, v2, :cond_3f

    .line 3899
    const-string v2, "MMTelSS"

    const-string v3, "Already add rule for BAIC with serviceClass=0 case previously"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_11

    .line 3904
    :cond_49
    const-string v2, "MMTelSS"

    const-string v3, "handleSetCB():MT Copy old rule inot newRuleSet"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3905
    const/4 v2, -0x1

    const/4 v3, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v11, v2, v3}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->copyOldRuleToNewRuleSet(Lcom/mediatek/simservs/client/policy/Rule;Lcom/mediatek/simservs/client/policy/RuleSet;II)Lcom/mediatek/simservs/client/policy/Rule;

    goto/16 :goto_11

    .line 3912
    .end local v12    # "r":Lcom/mediatek/simservs/client/policy/Rule;
    .end local v66    # "action":Lcom/mediatek/simservs/client/policy/Actions;
    .end local v69    # "cond":Lcom/mediatek/simservs/client/policy/Conditions;
    .end local v73    # "i":I
    .end local v77    # "mediaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_4a
    if-nez v67, :cond_4c

    .line 3916
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleSetCB():MT add new rule for this time\'s request-facility="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ",lockState="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ",serviceClass="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3917
    const-string v41, ""

    .line 3919
    .restart local v41    # "newRuleID":Ljava/lang/String;
    const-string v2, "AI"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4d

    .line 3920
    move-object/from16 v41, v57

    .line 3924
    :cond_4b
    :goto_12
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleSetCB():MT add new rule with id="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v41

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3925
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mUpdateSingleRule:Z
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1900(Lcom/android/internal/telephony/MMTelSSTransport;)Z

    move-result v42

    move-object/from16 v35, p0

    move-object/from16 v36, v75

    move-object/from16 v37, v11

    move-object/from16 v38, v13

    move/from16 v39, v14

    move/from16 v40, v15

    move/from16 v43, v18

    move/from16 v44, v8

    invoke-virtual/range {v35 .. v44}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->handleCreateNewRuleForReqCB(Lcom/mediatek/simservs/client/SimservType;Lcom/mediatek/simservs/client/policy/RuleSet;Ljava/lang/String;IILjava/lang/String;ZII)Z

    move-result v67

    .line 3932
    .end local v41    # "newRuleID":Ljava/lang/String;
    :cond_4c
    invoke-virtual {v11}, Lcom/mediatek/simservs/client/policy/RuleSet;->getRules()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_4e

    .line 3933
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Dump MT SetCB XML:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v11}, Lcom/mediatek/simservs/client/policy/RuleSet;->toXmlString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3938
    :goto_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mUpdateSingleRule:Z
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1900(Lcom/android/internal/telephony/MMTelSSTransport;)Z

    move-result v2

    if-nez v2, :cond_4f

    .line 3939
    invoke-virtual/range {v75 .. v75}, Lcom/mediatek/simservs/client/IncomingCommunicationBarring;->saveRuleSet()V

    goto/16 :goto_c

    .line 3921
    .restart local v41    # "newRuleID":Ljava/lang/String;
    :cond_4d
    const-string v2, "IR"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4b

    .line 3922
    move-object/from16 v41, v49

    goto :goto_12

    .line 3935
    .end local v41    # "newRuleID":Ljava/lang/String;
    :cond_4e
    const-string v2, "MMTelSS"

    const-string v3, "Dump MT SetCB XML: ruleset with empty rules"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13

    .line 3941
    :cond_4f
    const/4 v2, 0x1

    move/from16 v0, v18

    if-le v0, v2, :cond_36

    .line 3942
    const/16 v79, 0x0

    .line 3943
    .restart local v79    # "newRuleList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    invoke-virtual {v11}, Lcom/mediatek/simservs/client/policy/RuleSet;->getRules()Ljava/util/List;

    move-result-object v79

    .line 3944
    const/16 v73, 0x0

    .restart local v73    # "i":I
    :goto_14
    invoke-interface/range {v79 .. v79}, Ljava/util/List;->size()I

    move-result v2

    move/from16 v0, v73

    if-ge v0, v2, :cond_36

    .line 3945
    move-object/from16 v0, v79

    move/from16 v1, v73

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v78

    check-cast v78, Lcom/mediatek/simservs/client/policy/Rule;

    .line 3946
    .restart local v78    # "newRule":Lcom/mediatek/simservs/client/policy/Rule;
    move-object/from16 v0, v78

    iget-object v2, v0, Lcom/mediatek/simservs/client/policy/Rule;->mId:Ljava/lang/String;

    move-object/from16 v0, v75

    invoke-virtual {v0, v2}, Lcom/mediatek/simservs/client/IncomingCommunicationBarring;->saveRule(Ljava/lang/String;)V

    .line 3944
    add-int/lit8 v73, v73, 0x1

    goto :goto_14

    .line 3950
    .end local v11    # "newRuleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    .end local v67    # "addedNewRule":Z
    .end local v73    # "i":I
    .end local v74    # "iRuleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    .end local v78    # "newRule":Lcom/mediatek/simservs/client/policy/Rule;
    .end local v79    # "newRuleList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    .end local v84    # "ruleList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    :cond_50
    const-string v2, "AB"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5c

    if-nez v14, :cond_5c

    .line 3952
    const/16 v21, 0x0

    .line 3953
    .local v21, "iNewRuleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    const/4 v4, 0x0

    .line 3954
    .local v4, "oNewRuleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    const/16 v81, 0x0

    .line 3955
    .local v81, "oldRuleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    const/16 v84, 0x0

    .line 3959
    .restart local v84    # "ruleList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    invoke-virtual {v10}, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;->getRuleSet()Lcom/mediatek/simservs/client/policy/RuleSet;

    move-result-object v81

    .line 3960
    if-eqz v81, :cond_51

    .line 3961
    invoke-virtual/range {v81 .. v81}, Lcom/mediatek/simservs/client/policy/RuleSet;->getRules()Ljava/util/List;

    move-result-object v84

    .line 3966
    :goto_15
    if-eqz v84, :cond_56

    .line 3967
    invoke-virtual {v10}, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;->createNewRuleSet()Lcom/mediatek/simservs/client/policy/RuleSet;

    move-result-object v4

    .line 3968
    const/16 v73, 0x0

    .restart local v73    # "i":I
    :goto_16
    invoke-interface/range {v84 .. v84}, Ljava/util/List;->size()I

    move-result v2

    move/from16 v0, v73

    if-ge v0, v2, :cond_52

    .line 3969
    move-object/from16 v0, v84

    move/from16 v1, v73

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/mediatek/simservs/client/policy/Rule;

    .line 3970
    .restart local v12    # "r":Lcom/mediatek/simservs/client/policy/Rule;
    const/4 v5, 0x1

    const/4 v6, -0x1

    const/4 v7, -0x1

    move-object/from16 v2, p0

    move-object v3, v12

    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->copyOldRuleToNewRuleSetWithDisabledCB(Lcom/mediatek/simservs/client/policy/Rule;Lcom/mediatek/simservs/client/policy/RuleSet;ZII)V

    .line 3968
    add-int/lit8 v73, v73, 0x1

    goto :goto_16

    .line 3963
    .end local v12    # "r":Lcom/mediatek/simservs/client/policy/Rule;
    .end local v73    # "i":I
    :cond_51
    const-string v2, "MMTelSS"

    const-string v3, "No MO related CB rules in remote server"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15

    .line 3973
    .restart local v73    # "i":I
    :cond_52
    invoke-virtual {v4}, Lcom/mediatek/simservs/client/policy/RuleSet;->getRules()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_54

    .line 3974
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Dump MO Disable All CB XML:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v4}, Lcom/mediatek/simservs/client/policy/RuleSet;->toXmlString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3978
    :goto_17
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mUpdateSingleRule:Z
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1900(Lcom/android/internal/telephony/MMTelSSTransport;)Z

    move-result v2

    if-nez v2, :cond_55

    .line 3979
    invoke-virtual {v10}, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;->saveRuleSet()V

    .line 3992
    .end local v73    # "i":I
    :cond_53
    :goto_18
    invoke-virtual/range {v75 .. v75}, Lcom/mediatek/simservs/client/IncomingCommunicationBarring;->getRuleSet()Lcom/mediatek/simservs/client/policy/RuleSet;

    move-result-object v81

    .line 3993
    if-eqz v81, :cond_57

    .line 3994
    invoke-virtual/range {v81 .. v81}, Lcom/mediatek/simservs/client/policy/RuleSet;->getRules()Ljava/util/List;

    move-result-object v84

    .line 3999
    :goto_19
    if-eqz v84, :cond_5b

    .line 4000
    invoke-virtual/range {v75 .. v75}, Lcom/mediatek/simservs/client/IncomingCommunicationBarring;->createNewRuleSet()Lcom/mediatek/simservs/client/policy/RuleSet;

    move-result-object v21

    .line 4001
    const/16 v73, 0x0

    .restart local v73    # "i":I
    :goto_1a
    invoke-interface/range {v84 .. v84}, Ljava/util/List;->size()I

    move-result v2

    move/from16 v0, v73

    if-ge v0, v2, :cond_58

    .line 4002
    move-object/from16 v0, v84

    move/from16 v1, v73

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/mediatek/simservs/client/policy/Rule;

    .line 4003
    .restart local v12    # "r":Lcom/mediatek/simservs/client/policy/Rule;
    const/16 v22, 0x1

    const/16 v23, -0x1

    const/16 v24, -0x1

    move-object/from16 v19, p0

    move-object/from16 v20, v12

    invoke-virtual/range {v19 .. v24}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->copyOldRuleToNewRuleSetWithDisabledCB(Lcom/mediatek/simservs/client/policy/Rule;Lcom/mediatek/simservs/client/policy/RuleSet;ZII)V

    .line 4001
    add-int/lit8 v73, v73, 0x1

    goto :goto_1a

    .line 3976
    .end local v12    # "r":Lcom/mediatek/simservs/client/policy/Rule;
    :cond_54
    const-string v2, "MMTelSS"

    const-string v3, "Dump MO Disable All CB XML: ruleset with empty rules"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_17

    .line 3981
    :cond_55
    const/16 v79, 0x0

    .line 3982
    .restart local v79    # "newRuleList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    invoke-virtual {v4}, Lcom/mediatek/simservs/client/policy/RuleSet;->getRules()Ljava/util/List;

    move-result-object v79

    .line 3983
    const/16 v73, 0x0

    :goto_1b
    invoke-interface/range {v79 .. v79}, Ljava/util/List;->size()I

    move-result v2

    move/from16 v0, v73

    if-ge v0, v2, :cond_53

    .line 3984
    move-object/from16 v0, v79

    move/from16 v1, v73

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v78

    check-cast v78, Lcom/mediatek/simservs/client/policy/Rule;

    .line 3985
    .restart local v78    # "newRule":Lcom/mediatek/simservs/client/policy/Rule;
    move-object/from16 v0, v78

    iget-object v2, v0, Lcom/mediatek/simservs/client/policy/Rule;->mId:Ljava/lang/String;

    invoke-virtual {v10, v2}, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;->saveRule(Ljava/lang/String;)V

    .line 3983
    add-int/lit8 v73, v73, 0x1

    goto :goto_1b

    .line 3989
    .end local v73    # "i":I
    .end local v78    # "newRule":Lcom/mediatek/simservs/client/policy/Rule;
    .end local v79    # "newRuleList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    :cond_56
    const-string v2, "MMTelSS"

    const-string v3, "No MO related CB rules in remote server"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_18

    .line 3996
    :cond_57
    const-string v2, "MMTelSS"

    const-string v3, "No MT related CB rules in remote server"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_19

    .line 4006
    .restart local v73    # "i":I
    :cond_58
    invoke-virtual/range {v21 .. v21}, Lcom/mediatek/simservs/client/policy/RuleSet;->getRules()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_59

    .line 4007
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Dump MT Disable All CB XML:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v21 .. v21}, Lcom/mediatek/simservs/client/policy/RuleSet;->toXmlString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4011
    :goto_1c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mUpdateSingleRule:Z
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1900(Lcom/android/internal/telephony/MMTelSSTransport;)Z

    move-result v2

    if-nez v2, :cond_5a

    .line 4012
    invoke-virtual/range {v75 .. v75}, Lcom/mediatek/simservs/client/IncomingCommunicationBarring;->saveRuleSet()V

    goto/16 :goto_c

    .line 4009
    :cond_59
    const-string v2, "MMTelSS"

    const-string v3, "Dump MT Disable All CB XML: ruleset with empty rules"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1c

    .line 4014
    :cond_5a
    const/16 v79, 0x0

    .line 4015
    .restart local v79    # "newRuleList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    invoke-virtual/range {v21 .. v21}, Lcom/mediatek/simservs/client/policy/RuleSet;->getRules()Ljava/util/List;

    move-result-object v79

    .line 4016
    const/16 v73, 0x0

    :goto_1d
    invoke-interface/range {v79 .. v79}, Ljava/util/List;->size()I

    move-result v2

    move/from16 v0, v73

    if-ge v0, v2, :cond_36

    .line 4017
    move-object/from16 v0, v79

    move/from16 v1, v73

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v78

    check-cast v78, Lcom/mediatek/simservs/client/policy/Rule;

    .line 4018
    .restart local v78    # "newRule":Lcom/mediatek/simservs/client/policy/Rule;
    move-object/from16 v0, v78

    iget-object v2, v0, Lcom/mediatek/simservs/client/policy/Rule;->mId:Ljava/lang/String;

    move-object/from16 v0, v75

    invoke-virtual {v0, v2}, Lcom/mediatek/simservs/client/IncomingCommunicationBarring;->saveRule(Ljava/lang/String;)V

    .line 4016
    add-int/lit8 v73, v73, 0x1

    goto :goto_1d

    .line 4022
    .end local v73    # "i":I
    .end local v78    # "newRule":Lcom/mediatek/simservs/client/policy/Rule;
    .end local v79    # "newRuleList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    :cond_5b
    const-string v2, "MMTelSS"

    const-string v3, "No MT related CB rules in remote server"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c

    .line 4027
    .end local v4    # "oNewRuleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    .end local v21    # "iNewRuleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    .end local v81    # "oldRuleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    .end local v84    # "ruleList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    :cond_5c
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unrecognized SET_CB facility= "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " and its parameters"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_2
    .catch Lcom/mediatek/simservs/xcap/XcapException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 4042
    .end local v10    # "ocb":Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;
    .end local v70    # "curTime":J
    .end local v75    # "icb":Lcom/mediatek/simservs/client/IncomingCommunicationBarring;
    .end local v76    # "it":I
    .restart local v86    # "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    :cond_5d
    const-string v2, "MMTelSS"

    const-string v3, "handleSetCB(): XcapException"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4043
    invoke-virtual/range {v86 .. v86}, Lcom/mediatek/simservs/xcap/XcapException;->printStackTrace()V

    .line 4044
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v2, :cond_60

    .line 4045
    invoke-virtual/range {v86 .. v86}, Lcom/mediatek/simservs/xcap/XcapException;->isConnectionError()Z

    move-result v2

    if-eqz v2, :cond_5f

    .line 4046
    const-string v2, "MMTelSS"

    const-string v3, "handleSetCB(): xcapException.isConnectionError()"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4047
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v3, 0x0

    new-instance v5, Ljava/net/UnknownHostException;

    invoke-direct {v5}, Ljava/net/UnknownHostException;-><init>()V

    invoke-static {v2, v3, v5}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 4051
    :goto_1e
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 4052
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v2

    if-eqz v2, :cond_5e

    .line 4053
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->releaseNetwork()V

    .line 4055
    :cond_5e
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 4049
    :cond_5f
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v3, 0x0

    move-object/from16 v0, v86

    invoke-static {v2, v3, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    goto :goto_1e

    .line 4087
    .end local v86    # "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    :cond_60
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v2, :cond_61

    .line 4088
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-static {v2, v3, v5}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 4089
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 4092
    :cond_61
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v2

    if-eqz v2, :cond_62

    .line 4093
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->releaseNetwork()V

    .line 4096
    :cond_62
    const/4 v2, 0x0

    goto/16 :goto_0
.end method

.method public handleSetCF(Lcom/android/internal/telephony/MMTelSSRequest;)I
    .locals 90
    .param p1, "rr"    # Lcom/android/internal/telephony/MMTelSSRequest;

    .prologue
    .line 3021
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 3022
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v83

    .line 3023
    .local v83, "reqNo":I
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v87

    .line 3025
    .local v87, "serialNo":I
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 3026
    .local v14, "setCFAction":I
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 3027
    .local v13, "setCFReason":I
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 3028
    .local v15, "setCFServiceClass":I
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 3029
    .local v16, "setCFNumber":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 3030
    .local v17, "setCFTimeSeconds":I
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 3031
    .local v8, "phoneId":I
    const/16 v82, 0x0

    .line 3033
    .local v82, "reportFlag":I
    const/16 v68, 0x0

    .line 3034
    .local v68, "AddRuleForCFUWithAllMediaType":Z
    const/16 v64, 0x0

    .line 3035
    .local v64, "AddRuleForCFBWithAllMediaType":Z
    const/16 v65, 0x0

    .line 3036
    .local v65, "AddRuleForCFNoAnswerWithAllMediaType":Z
    const/16 v66, 0x0

    .line 3037
    .local v66, "AddRuleForCFNotReachableWithAllMediaType":Z
    const/16 v67, 0x0

    .line 3039
    .local v67, "AddRuleForCFNotRegisteredWithAllMediaType":Z
    const-string v60, "CFU"

    .line 3040
    .local v60, "CFU_RuleID":Ljava/lang/String;
    const-string v18, "CFB"

    .line 3041
    .local v18, "CFB_RuleID":Ljava/lang/String;
    const-string v30, "CFNoAnswer"

    .line 3042
    .local v30, "CFNoAnswer_RuleID":Ljava/lang/String;
    const-string v40, "CFNotReachable"

    .line 3043
    .local v40, "CFNotReachable_RuleID":Ljava/lang/String;
    const-string v50, "CFNotReachable"

    .line 3045
    .local v50, "CFNotRegistered_RuleID":Ljava/lang/String;
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Read from CF parcel:req="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {v83 .. v83}, Lcom/android/internal/telephony/MMTelSSTransport;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",cfAction="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",reason="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",serviceClass="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",number="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",timeSec="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3047
    const-string v2, "persist.radio.xcap.cfn"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v69

    .line 3048
    .local v69, "XcapCFNum":Ljava/lang/String;
    const-string v2, "sip:"

    move-object/from16 v0, v69

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "sips:"

    move-object/from16 v0, v69

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "tel:"

    move-object/from16 v0, v69

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3049
    :cond_0
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleSetCF():get call forwarding num from EM setting:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v69

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3050
    const-string v2, "persist.radio.ss.mode"

    const-string v3, "Prefer XCAP"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v88

    .line 3051
    .local v88, "ss_mode":Ljava/lang/String;
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleSetCF():ss_mode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v88

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3052
    const-string v2, "Prefer XCAP"

    move-object/from16 v0, v88

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3053
    move-object/from16 v16, v69

    .line 3058
    .end local v88    # "ss_mode":Ljava/lang/String;
    :cond_1
    const/16 v2, 0x210

    if-ne v15, v2, :cond_2

    .line 3059
    const/16 v15, 0x200

    .line 3062
    :cond_2
    invoke-static {v8}, Lcom/android/internal/telephony/MMTelSSUtils;->isPreferXcap(I)Z

    move-result v2

    if-nez v2, :cond_4

    .line 3063
    const-string v2, "MMTelSS"

    const-string v3, "handleSetCF(): !isPreferXcap()"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3064
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v2, :cond_3

    .line 3065
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v3, 0x0

    new-instance v4, Ljava/net/UnknownHostException;

    invoke-direct {v4}, Ljava/net/UnknownHostException;-><init>()V

    invoke-static {v2, v3, v4}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 3066
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 3068
    :cond_3
    const/4 v2, 0x0

    .line 3432
    :goto_0
    return v2

    .line 3073
    :cond_4
    const/16 v20, 0x1

    .line 3075
    .local v20, "num_of_expansion":I
    const/4 v2, 0x5

    if-ne v13, v2, :cond_7

    .line 3077
    const/16 v20, 0x4

    .line 3084
    :cond_5
    :goto_1
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v74

    .line 3085
    .local v74, "curTime":J
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleSetCF(): mCdCache = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCdCache:Lcom/mediatek/simservs/client/CommunicationDiversion;
    invoke-static {v4}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/mediatek/simservs/client/CommunicationDiversion;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", curTime = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v74

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mCdCacheLastQueried = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCdCacheLastQueried:J
    invoke-static {v4}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1700(Lcom/android/internal/telephony/MMTelSSTransport;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", phoneId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3088
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-static {v8}, Lcom/android/internal/telephony/MMTelSSUtils;->getXui(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/telephony/MMTelSSTransport;->mXui:Ljava/lang/String;

    .line 3089
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-static {v8}, Lcom/android/internal/telephony/MMTelSSUtils;->getXcapRootUri(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/telephony/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    .line 3090
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-static {v8}, Lcom/android/internal/telephony/MMTelSSUtils;->getXIntendedId(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/telephony/MMTelSSTransport;->mXIntendedId:Ljava/lang/String;

    .line 3092
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v2, v2, Lcom/android/internal/telephony/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 3093
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleSetCF(): XcapRoot = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v4, v4, Lcom/android/internal/telephony/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3094
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v2, :cond_6

    .line 3095
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v3, 0x0

    new-instance v4, Ljava/net/UnknownHostException;

    invoke-direct {v4}, Ljava/net/UnknownHostException;-><init>()V

    invoke-static {v2, v3, v4}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 3096
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 3098
    :cond_6
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 3078
    .end local v74    # "curTime":J
    :cond_7
    const/4 v2, 0x4

    if-ne v13, v2, :cond_5

    .line 3080
    const/16 v20, 0x5

    goto/16 :goto_1

    .line 3100
    .restart local v74    # "curTime":J
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # invokes: Lcom/android/internal/telephony/MMTelSSTransport;->requestXcapNetwork(I)V
    invoke-static {v2, v8}, Lcom/android/internal/telephony/MMTelSSTransport;->access$300(Lcom/android/internal/telephony/MMTelSSTransport;I)V

    .line 3101
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v3, v3, Lcom/android/internal/telephony/MMTelSSTransport;->mXui:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v4, v4, Lcom/android/internal/telephony/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v5, v5, Lcom/android/internal/telephony/MMTelSSTransport;->mXIntendedId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v6, v6, Lcom/android/internal/telephony/MMTelSSTransport;->mUserName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v7, v7, Lcom/android/internal/telephony/MMTelSSTransport;->mPassword:Ljava/lang/String;

    invoke-virtual/range {v2 .. v8}, Lcom/android/internal/telephony/MMTelSSTransport;->setSimservsInitParameters(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 3103
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCdCache:Lcom/mediatek/simservs/client/CommunicationDiversion;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/mediatek/simservs/client/CommunicationDiversion;

    move-result-object v2

    if-eqz v2, :cond_e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCdCachePhoneId:I
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1800(Lcom/android/internal/telephony/MMTelSSTransport;)I

    move-result v2

    if-ne v8, v2, :cond_e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCdCache:Lcom/mediatek/simservs/client/CommunicationDiversion;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/mediatek/simservs/client/CommunicationDiversion;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/simservs/client/CommunicationDiversion;->isSupportEtag()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 3105
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleSetCF(): using ETAG mCdCache: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCdCache:Lcom/mediatek/simservs/client/CommunicationDiversion;
    invoke-static {v4}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/mediatek/simservs/client/CommunicationDiversion;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3106
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCdCache:Lcom/mediatek/simservs/client/CommunicationDiversion;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/mediatek/simservs/client/CommunicationDiversion;

    move-result-object v10

    .line 3107
    .local v10, "cd":Lcom/mediatek/simservs/client/CommunicationDiversion;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mNetwork:Landroid/net/Network;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$400(Lcom/android/internal/telephony/MMTelSSTransport;)Landroid/net/Network;

    move-result-object v2

    invoke-virtual {v10, v2}, Lcom/mediatek/simservs/client/CommunicationDiversion;->setNetwork(Landroid/net/Network;)V

    .line 3108
    invoke-virtual {v10}, Lcom/mediatek/simservs/client/CommunicationDiversion;->refresh()V

    .line 3109
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    move-wide/from16 v0, v74

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCdCacheLastQueried:J
    invoke-static {v2, v0, v1}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1702(Lcom/android/internal/telephony/MMTelSSTransport;J)J

    .line 3125
    :goto_2
    const/16 v78, 0x0

    .local v78, "it":I
    :goto_3
    move/from16 v0, v78

    move/from16 v1, v20

    if-ge v0, v1, :cond_40

    .line 3126
    const/4 v2, 0x1

    move/from16 v0, v20

    if-eq v0, v2, :cond_9

    .line 3127
    if-nez v78, :cond_11

    const/4 v13, 0x1

    .line 3135
    :cond_9
    :goto_4
    add-int/lit8 v2, v20, -0x1

    move/from16 v0, v78

    if-ne v0, v2, :cond_a

    .line 3136
    const/16 v82, 0x1

    .line 3139
    :cond_a
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleSetCF():it="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v78

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", num_of_expansion="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",cfReason="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3141
    invoke-virtual {v10}, Lcom/mediatek/simservs/client/CommunicationDiversion;->getRuleSet()Lcom/mediatek/simservs/client/policy/RuleSet;

    move-result-object v86

    .line 3142
    .local v86, "ruleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    const/16 v85, 0x0

    .line 3143
    .local v85, "ruleList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    invoke-virtual {v10}, Lcom/mediatek/simservs/client/CommunicationDiversion;->createNewRuleSet()Lcom/mediatek/simservs/client/policy/RuleSet;

    move-result-object v11

    .line 3144
    .local v11, "newRuleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    const/16 v71, 0x0

    .line 3147
    .local v71, "addedNewRule":Z
    if-eqz v86, :cond_15

    .line 3148
    invoke-virtual/range {v86 .. v86}, Lcom/mediatek/simservs/client/policy/RuleSet;->getRules()Ljava/util/List;

    move-result-object v85

    .line 3154
    :goto_5
    if-eqz v85, :cond_2e

    .line 3156
    const/16 v77, 0x0

    .local v77, "i":I
    :goto_6
    invoke-interface/range {v85 .. v85}, Ljava/util/List;->size()I

    move-result v2

    move/from16 v0, v77

    if-ge v0, v2, :cond_2e

    .line 3157
    move-object/from16 v0, v85

    move/from16 v1, v77

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/mediatek/simservs/client/policy/Rule;

    .line 3158
    .local v12, "r":Lcom/mediatek/simservs/client/policy/Rule;
    invoke-virtual {v12}, Lcom/mediatek/simservs/client/policy/Rule;->getConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v73

    .line 3159
    .local v73, "cond":Lcom/mediatek/simservs/client/policy/Conditions;
    invoke-virtual {v12}, Lcom/mediatek/simservs/client/policy/Rule;->getActions()Lcom/mediatek/simservs/client/policy/Actions;

    move-result-object v70

    .line 3160
    .local v70, "action":Lcom/mediatek/simservs/client/policy/Actions;
    const/16 v79, 0x0

    .line 3162
    .local v79, "mediaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v73, :cond_1a

    .line 3163
    invoke-virtual/range {v73 .. v73}, Lcom/mediatek/simservs/client/policy/Conditions;->getMedias()Ljava/util/List;

    move-result-object v79

    .line 3164
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleSetCF():busy="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v73 .. v73}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendBusy()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",NoAnswer="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v73 .. v73}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendNoAnswer()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",NoReachable="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v73 .. v73}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendNotReachable()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",NotRegistered="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v73 .. v73}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendNotRegistered()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3165
    invoke-virtual/range {v73 .. v73}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendBusy()Z

    move-result v2

    if-eqz v2, :cond_16

    .line 3166
    iget-object v0, v12, Lcom/mediatek/simservs/client/policy/Rule;->mId:Ljava/lang/String;

    move-object/from16 v18, v0

    .line 3167
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Update CFB_RuleID="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3191
    :cond_b
    :goto_7
    const/4 v2, 0x1

    if-ne v13, v2, :cond_1c

    if-eqz v73, :cond_1c

    invoke-virtual/range {v73 .. v73}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendBusy()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1c

    move-object/from16 v0, p0

    move-object/from16 v1, v79

    invoke-virtual {v0, v1, v15}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->containSpecificMedia(Ljava/util/List;I)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 3195
    if-nez v15, :cond_c

    if-nez v15, :cond_1b

    if-nez v64, :cond_1b

    .line 3196
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mUpdateSingleRule:Z
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1900(Lcom/android/internal/telephony/MMTelSSTransport;)Z

    move-result v19

    move-object/from16 v9, p0

    move/from16 v21, v8

    invoke-virtual/range {v9 .. v21}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->handleCreateNewRuleForExistingCF(Lcom/mediatek/simservs/client/CommunicationDiversion;Lcom/mediatek/simservs/client/policy/RuleSet;Lcom/mediatek/simservs/client/policy/Rule;IIILjava/lang/String;ILjava/lang/String;ZII)Z

    move-result v71

    .line 3200
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleSetCF():CFB-addedNewRule="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v71

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3201
    if-nez v15, :cond_d

    .line 3202
    const/16 v64, 0x1

    .line 3156
    :cond_d
    :goto_8
    add-int/lit8 v77, v77, 0x1

    goto/16 :goto_6

    .line 3110
    .end local v10    # "cd":Lcom/mediatek/simservs/client/CommunicationDiversion;
    .end local v11    # "newRuleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    .end local v12    # "r":Lcom/mediatek/simservs/client/policy/Rule;
    .end local v70    # "action":Lcom/mediatek/simservs/client/policy/Actions;
    .end local v71    # "addedNewRule":Z
    .end local v73    # "cond":Lcom/mediatek/simservs/client/policy/Conditions;
    .end local v77    # "i":I
    .end local v78    # "it":I
    .end local v79    # "mediaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v85    # "ruleList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    .end local v86    # "ruleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCdCache:Lcom/mediatek/simservs/client/CommunicationDiversion;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/mediatek/simservs/client/CommunicationDiversion;

    move-result-object v2

    if-eqz v2, :cond_f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCdCachePhoneId:I
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1800(Lcom/android/internal/telephony/MMTelSSTransport;)I

    move-result v2

    if-ne v8, v2, :cond_f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCdCacheLastQueried:J
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1700(Lcom/android/internal/telephony/MMTelSSTransport;)J

    move-result-wide v2

    cmp-long v2, v74, v2

    if-ltz v2, :cond_f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCdCacheLastQueried:J
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1700(Lcom/android/internal/telephony/MMTelSSTransport;)J

    move-result-wide v2

    sub-long v2, v74, v2

    const-wide/32 v4, 0x1d4c0

    cmp-long v2, v2, v4

    if-gez v2, :cond_f

    .line 3113
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleSetCF(): using mCdCache: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCdCache:Lcom/mediatek/simservs/client/CommunicationDiversion;
    invoke-static {v4}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/mediatek/simservs/client/CommunicationDiversion;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3114
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCdCache:Lcom/mediatek/simservs/client/CommunicationDiversion;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/mediatek/simservs/client/CommunicationDiversion;

    move-result-object v10

    .line 3115
    .restart local v10    # "cd":Lcom/mediatek/simservs/client/CommunicationDiversion;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mNetwork:Landroid/net/Network;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$400(Lcom/android/internal/telephony/MMTelSSTransport;)Landroid/net/Network;

    move-result-object v2

    invoke-virtual {v10, v2}, Lcom/mediatek/simservs/client/CommunicationDiversion;->setNetwork(Landroid/net/Network;)V
    :try_end_0
    .catch Lcom/mediatek/simservs/xcap/XcapException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_2

    .line 3378
    .end local v10    # "cd":Lcom/mediatek/simservs/client/CommunicationDiversion;
    .end local v74    # "curTime":J
    :catch_0
    move-exception v89

    .line 3379
    .local v89, "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    const/4 v3, 0x0

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCdCache:Lcom/mediatek/simservs/client/CommunicationDiversion;
    invoke-static {v2, v3}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1602(Lcom/android/internal/telephony/MMTelSSTransport;Lcom/mediatek/simservs/client/CommunicationDiversion;)Lcom/mediatek/simservs/client/CommunicationDiversion;

    .line 3380
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    const/4 v3, -0x1

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCdCachePhoneId:I
    invoke-static {v2, v3}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1802(Lcom/android/internal/telephony/MMTelSSTransport;I)I

    .line 3381
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    const-wide/16 v4, 0x0

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCdCacheLastQueried:J
    invoke-static {v2, v4, v5}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1702(Lcom/android/internal/telephony/MMTelSSTransport;J)J

    .line 3383
    invoke-virtual/range {v89 .. v89}, Lcom/mediatek/simservs/xcap/XcapException;->getHttpErrorCode()I

    move-result v2

    const/16 v3, 0x19c

    if-ne v2, v3, :cond_3d

    .line 3384
    const-string v2, "MMTelSS"

    const-string v3, "handleSetCF(): HTTP_ERROR_CODE_412"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3385
    const/16 v2, 0x19c

    goto/16 :goto_0

    .line 3117
    .end local v89    # "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    .restart local v74    # "curTime":J
    :cond_f
    :try_start_1
    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mSimservs:Lcom/mediatek/simservs/client/SimServs;
    invoke-static {}, Lcom/android/internal/telephony/MMTelSSTransport;->access$500()Lcom/mediatek/simservs/client/SimServs;

    move-result-object v2

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mNetwork:Landroid/net/Network;
    invoke-static {v4}, Lcom/android/internal/telephony/MMTelSSTransport;->access$400(Lcom/android/internal/telephony/MMTelSSTransport;)Landroid/net/Network;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/mediatek/simservs/client/SimServs;->getCommunicationDiversion(ZLandroid/net/Network;)Lcom/mediatek/simservs/client/CommunicationDiversion;

    move-result-object v10

    .line 3118
    .restart local v10    # "cd":Lcom/mediatek/simservs/client/CommunicationDiversion;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCdCache:Lcom/mediatek/simservs/client/CommunicationDiversion;
    invoke-static {v2, v10}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1602(Lcom/android/internal/telephony/MMTelSSTransport;Lcom/mediatek/simservs/client/CommunicationDiversion;)Lcom/mediatek/simservs/client/CommunicationDiversion;

    .line 3119
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCdCachePhoneId:I
    invoke-static {v2, v8}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1802(Lcom/android/internal/telephony/MMTelSSTransport;I)I

    .line 3120
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    move-wide/from16 v0, v74

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCdCacheLastQueried:J
    invoke-static {v2, v0, v1}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1702(Lcom/android/internal/telephony/MMTelSSTransport;J)J

    .line 3121
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleSetCF(): new mCdCache = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCdCache:Lcom/mediatek/simservs/client/CommunicationDiversion;
    invoke-static {v4}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/mediatek/simservs/client/CommunicationDiversion;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", curTime = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v74

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Lcom/mediatek/simservs/xcap/XcapException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_2

    .line 3402
    .end local v10    # "cd":Lcom/mediatek/simservs/client/CommunicationDiversion;
    .end local v74    # "curTime":J
    :catch_1
    move-exception v76

    .line 3405
    .local v76, "e":Ljava/lang/Exception;
    const-string v2, "MMTelSS"

    const-string v3, "handleSetCF():Start to Print Stack Trace"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3406
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    const/4 v3, 0x0

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCdCache:Lcom/mediatek/simservs/client/CommunicationDiversion;
    invoke-static {v2, v3}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1602(Lcom/android/internal/telephony/MMTelSSTransport;Lcom/mediatek/simservs/client/CommunicationDiversion;)Lcom/mediatek/simservs/client/CommunicationDiversion;

    .line 3407
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    const/4 v3, -0x1

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCdCachePhoneId:I
    invoke-static {v2, v3}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1802(Lcom/android/internal/telephony/MMTelSSTransport;I)I

    .line 3408
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    const-wide/16 v4, 0x0

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCdCacheLastQueried:J
    invoke-static {v2, v4, v5}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1702(Lcom/android/internal/telephony/MMTelSSTransport;J)J

    .line 3410
    invoke-virtual/range {v76 .. v76}, Ljava/lang/Exception;->printStackTrace()V

    .line 3411
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v2, :cond_40

    const/4 v2, 0x1

    move/from16 v0, v82

    if-ne v0, v2, :cond_40

    .line 3412
    const/4 v2, 0x2

    invoke-static {v2}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v72

    .line 3413
    .local v72, "ce":Lcom/android/internal/telephony/CommandException;
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v3, 0x0

    move-object/from16 v0, v72

    invoke-static {v2, v3, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 3414
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 3415
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v2

    if-eqz v2, :cond_10

    .line 3416
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->releaseNetwork()V

    .line 3418
    :cond_10
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 3128
    .end local v72    # "ce":Lcom/android/internal/telephony/CommandException;
    .end local v76    # "e":Ljava/lang/Exception;
    .restart local v10    # "cd":Lcom/mediatek/simservs/client/CommunicationDiversion;
    .restart local v74    # "curTime":J
    .restart local v78    # "it":I
    :cond_11
    const/4 v2, 0x1

    move/from16 v0, v78

    if-ne v0, v2, :cond_12

    const/4 v13, 0x2

    goto/16 :goto_4

    .line 3129
    :cond_12
    const/4 v2, 0x2

    move/from16 v0, v78

    if-ne v0, v2, :cond_13

    const/4 v13, 0x3

    goto/16 :goto_4

    .line 3130
    :cond_13
    const/4 v2, 0x3

    move/from16 v0, v78

    if-ne v0, v2, :cond_14

    const/4 v13, 0x6

    goto/16 :goto_4

    .line 3131
    :cond_14
    const/4 v2, 0x4

    move/from16 v0, v78

    if-ne v0, v2, :cond_9

    const/4 v13, 0x0

    goto/16 :goto_4

    .line 3150
    .restart local v11    # "newRuleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    .restart local v71    # "addedNewRule":Z
    .restart local v85    # "ruleList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    .restart local v86    # "ruleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    :cond_15
    :try_start_2
    const-string v2, "MMTelSS"

    const-string v3, "No CF related rules in remote server"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 3168
    .restart local v12    # "r":Lcom/mediatek/simservs/client/policy/Rule;
    .restart local v70    # "action":Lcom/mediatek/simservs/client/policy/Actions;
    .restart local v73    # "cond":Lcom/mediatek/simservs/client/policy/Conditions;
    .restart local v77    # "i":I
    .restart local v79    # "mediaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_16
    invoke-virtual/range {v73 .. v73}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendNoAnswer()Z

    move-result v2

    if-eqz v2, :cond_17

    .line 3169
    iget-object v0, v12, Lcom/mediatek/simservs/client/policy/Rule;->mId:Ljava/lang/String;

    move-object/from16 v30, v0

    .line 3170
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Update CFNoAnswer_RuleID="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v30

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 3171
    :cond_17
    invoke-virtual/range {v73 .. v73}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendNotReachable()Z

    move-result v2

    if-eqz v2, :cond_18

    .line 3172
    iget-object v0, v12, Lcom/mediatek/simservs/client/policy/Rule;->mId:Ljava/lang/String;

    move-object/from16 v40, v0

    .line 3173
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Update CFNotReachable_RuleID="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v40

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 3174
    :cond_18
    invoke-virtual/range {v73 .. v73}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendNotRegistered()Z

    move-result v2

    if-eqz v2, :cond_19

    .line 3175
    iget-object v0, v12, Lcom/mediatek/simservs/client/policy/Rule;->mId:Ljava/lang/String;

    move-object/from16 v50, v0

    .line 3176
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Update CFNotRegistered_RuleID="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v50

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 3178
    :cond_19
    iget-object v0, v12, Lcom/mediatek/simservs/client/policy/Rule;->mId:Ljava/lang/String;

    move-object/from16 v60, v0

    .line 3179
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Update CFU_RuleID="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v60

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 3182
    :cond_1a
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleSetCF():Empty cond (cond==null) for this rule="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3183
    const-string v2, "CFU"

    move-object/from16 v0, v60

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 3185
    iget-object v0, v12, Lcom/mediatek/simservs/client/policy/Rule;->mId:Ljava/lang/String;

    move-object/from16 v60, v0

    .line 3186
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Update CFU_RuleID="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v60

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 3204
    :cond_1b
    if-nez v15, :cond_d

    const/4 v2, 0x1

    move/from16 v0, v64

    if-ne v0, v2, :cond_d

    .line 3205
    const-string v2, "MMTelSS"

    const-string v3, "Already add rule for CFB with serviceClass=0 case previously"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 3208
    :cond_1c
    const/4 v2, 0x2

    if-ne v13, v2, :cond_22

    if-eqz v73, :cond_22

    invoke-virtual/range {v73 .. v73}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendNoAnswer()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_22

    move-object/from16 v0, p0

    move-object/from16 v1, v79

    invoke-virtual {v0, v1, v15}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->containSpecificMedia(Ljava/util/List;I)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 3212
    if-nez v15, :cond_1d

    if-nez v15, :cond_21

    if-nez v65, :cond_21

    .line 3213
    :cond_1d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mUpdateSingleRule:Z
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1900(Lcom/android/internal/telephony/MMTelSSTransport;)Z

    move-result v31

    move-object/from16 v21, p0

    move-object/from16 v22, v10

    move-object/from16 v23, v11

    move-object/from16 v24, v12

    move/from16 v25, v13

    move/from16 v26, v14

    move/from16 v27, v15

    move-object/from16 v28, v16

    move/from16 v29, v17

    move/from16 v32, v20

    move/from16 v33, v8

    invoke-virtual/range {v21 .. v33}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->handleCreateNewRuleForExistingCF(Lcom/mediatek/simservs/client/CommunicationDiversion;Lcom/mediatek/simservs/client/policy/RuleSet;Lcom/mediatek/simservs/client/policy/Rule;IIILjava/lang/String;ILjava/lang/String;ZII)Z

    move-result v71

    .line 3217
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleSetCF():CFNoAnswer-addedNewRule="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v71

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3220
    const/4 v2, 0x1

    move/from16 v0, v71

    if-ne v0, v2, :cond_1f

    const/4 v2, 0x1

    if-eq v14, v2, :cond_1e

    const/4 v2, 0x3

    if-ne v14, v2, :cond_1f

    .line 3221
    :cond_1e
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleSetCF():[C1]Enable CFNoAnswer with new_NoReplyTimer="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "org_NoReplyTimer="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v10}, Lcom/mediatek/simservs/client/CommunicationDiversion;->getNoReplyTimer()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3222
    if-lez v17, :cond_20

    invoke-virtual {v10}, Lcom/mediatek/simservs/client/CommunicationDiversion;->getNoReplyTimer()I

    move-result v2

    const/4 v3, -0x1

    if-le v2, v3, :cond_20

    .line 3223
    move/from16 v0, v17

    invoke-virtual {v10, v0}, Lcom/mediatek/simservs/client/CommunicationDiversion;->setNoReplyTimer(I)V

    .line 3230
    :cond_1f
    :goto_9
    if-nez v15, :cond_d

    .line 3231
    const/16 v65, 0x1

    goto/16 :goto_8

    .line 3225
    :cond_20
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No need to append setCFTimeSeconds: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 3233
    :cond_21
    if-nez v15, :cond_d

    const/4 v2, 0x1

    move/from16 v0, v65

    if-ne v0, v2, :cond_d

    .line 3234
    const-string v2, "MMTelSS"

    const-string v3, "Already add rule for CFNoAnswer with serviceClass=0 case previously"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 3237
    :cond_22
    const/4 v2, 0x3

    if-ne v13, v2, :cond_25

    if-eqz v73, :cond_25

    invoke-virtual/range {v73 .. v73}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendNotReachable()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_25

    move-object/from16 v0, p0

    move-object/from16 v1, v79

    invoke-virtual {v0, v1, v15}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->containSpecificMedia(Ljava/util/List;I)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 3241
    if-nez v15, :cond_23

    if-nez v15, :cond_24

    if-nez v66, :cond_24

    .line 3242
    :cond_23
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mUpdateSingleRule:Z
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1900(Lcom/android/internal/telephony/MMTelSSTransport;)Z

    move-result v41

    move-object/from16 v31, p0

    move-object/from16 v32, v10

    move-object/from16 v33, v11

    move-object/from16 v34, v12

    move/from16 v35, v13

    move/from16 v36, v14

    move/from16 v37, v15

    move-object/from16 v38, v16

    move/from16 v39, v17

    move/from16 v42, v20

    move/from16 v43, v8

    invoke-virtual/range {v31 .. v43}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->handleCreateNewRuleForExistingCF(Lcom/mediatek/simservs/client/CommunicationDiversion;Lcom/mediatek/simservs/client/policy/RuleSet;Lcom/mediatek/simservs/client/policy/Rule;IIILjava/lang/String;ILjava/lang/String;ZII)Z

    move-result v71

    .line 3246
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleSetCF():CFNoReachable-addedNewRule="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v71

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3247
    if-nez v15, :cond_d

    .line 3248
    const/16 v66, 0x1

    goto/16 :goto_8

    .line 3250
    :cond_24
    if-nez v15, :cond_d

    const/4 v2, 0x1

    move/from16 v0, v66

    if-ne v0, v2, :cond_d

    .line 3251
    const-string v2, "MMTelSS"

    const-string v3, "Already add rule for CFNoReachable with serviceClass=0 case previously"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 3254
    :cond_25
    const/4 v2, 0x6

    if-ne v13, v2, :cond_28

    if-eqz v73, :cond_28

    invoke-virtual/range {v73 .. v73}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendNotRegistered()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_28

    move-object/from16 v0, p0

    move-object/from16 v1, v79

    invoke-virtual {v0, v1, v15}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->containSpecificMedia(Ljava/util/List;I)Z

    move-result v2

    if-eqz v2, :cond_28

    .line 3258
    if-nez v15, :cond_26

    if-nez v15, :cond_27

    if-nez v67, :cond_27

    .line 3259
    :cond_26
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mUpdateSingleRule:Z
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1900(Lcom/android/internal/telephony/MMTelSSTransport;)Z

    move-result v51

    move-object/from16 v41, p0

    move-object/from16 v42, v10

    move-object/from16 v43, v11

    move-object/from16 v44, v12

    move/from16 v45, v13

    move/from16 v46, v14

    move/from16 v47, v15

    move-object/from16 v48, v16

    move/from16 v49, v17

    move/from16 v52, v20

    move/from16 v53, v8

    invoke-virtual/range {v41 .. v53}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->handleCreateNewRuleForExistingCF(Lcom/mediatek/simservs/client/CommunicationDiversion;Lcom/mediatek/simservs/client/policy/RuleSet;Lcom/mediatek/simservs/client/policy/Rule;IIILjava/lang/String;ILjava/lang/String;ZII)Z

    move-result v71

    .line 3263
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleSetCF():CFNoRegistered-addedNewRule="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v71

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3264
    if-nez v15, :cond_d

    .line 3265
    const/16 v67, 0x1

    goto/16 :goto_8

    .line 3267
    :cond_27
    if-nez v15, :cond_d

    const/4 v2, 0x1

    move/from16 v0, v67

    if-ne v0, v2, :cond_d

    .line 3268
    const-string v2, "MMTelSS"

    const-string v3, "Already add rule for CFNoRegistered with serviceClass=0 case previously"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 3270
    :cond_28
    if-nez v13, :cond_2d

    if-eqz v73, :cond_29

    invoke-virtual/range {v73 .. v73}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendBusy()Z

    move-result v2

    if-nez v2, :cond_29

    invoke-virtual/range {v73 .. v73}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendNoAnswer()Z

    move-result v2

    if-nez v2, :cond_29

    invoke-virtual/range {v73 .. v73}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendNotRegistered()Z

    move-result v2

    if-nez v2, :cond_29

    invoke-virtual/range {v73 .. v73}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendNotReachable()Z

    move-result v2

    if-eqz v2, :cond_2a

    :cond_29
    if-nez v73, :cond_2d

    :cond_2a
    move-object/from16 v0, p0

    move-object/from16 v1, v79

    invoke-virtual {v0, v1, v15}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->containSpecificMedia(Ljava/util/List;I)Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 3277
    if-nez v15, :cond_2b

    if-nez v15, :cond_2c

    if-nez v68, :cond_2c

    .line 3278
    :cond_2b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mUpdateSingleRule:Z
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1900(Lcom/android/internal/telephony/MMTelSSTransport;)Z

    move-result v61

    move-object/from16 v51, p0

    move-object/from16 v52, v10

    move-object/from16 v53, v11

    move-object/from16 v54, v12

    move/from16 v55, v13

    move/from16 v56, v14

    move/from16 v57, v15

    move-object/from16 v58, v16

    move/from16 v59, v17

    move/from16 v62, v20

    move/from16 v63, v8

    invoke-virtual/range {v51 .. v63}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->handleCreateNewRuleForExistingCF(Lcom/mediatek/simservs/client/CommunicationDiversion;Lcom/mediatek/simservs/client/policy/RuleSet;Lcom/mediatek/simservs/client/policy/Rule;IIILjava/lang/String;ILjava/lang/String;ZII)Z

    move-result v71

    .line 3282
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleSetCF():CFU-addedNewRule="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v71

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3283
    if-nez v15, :cond_d

    .line 3284
    const/16 v68, 0x1

    goto/16 :goto_8

    .line 3286
    :cond_2c
    if-nez v15, :cond_d

    const/4 v2, 0x1

    move/from16 v0, v68

    if-ne v0, v2, :cond_d

    .line 3287
    const-string v2, "MMTelSS"

    const-string v3, "Already add rule for CFU with serviceClass=0 case previously"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 3292
    :cond_2d
    const-string v2, "MMTelSS"

    const-string v3, "handleSetCF():Copy old rule to newRuleSet"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3293
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v11, v14, v13}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->copyOldRuleToNewRuleSet(Lcom/mediatek/simservs/client/policy/Rule;Lcom/mediatek/simservs/client/policy/RuleSet;II)Lcom/mediatek/simservs/client/policy/Rule;

    goto/16 :goto_8

    .line 3301
    .end local v12    # "r":Lcom/mediatek/simservs/client/policy/Rule;
    .end local v70    # "action":Lcom/mediatek/simservs/client/policy/Actions;
    .end local v73    # "cond":Lcom/mediatek/simservs/client/policy/Conditions;
    .end local v77    # "i":I
    .end local v79    # "mediaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2e
    if-nez v71, :cond_32

    const/4 v2, 0x1

    if-eq v14, v2, :cond_2f

    const/4 v2, 0x3

    if-ne v14, v2, :cond_32

    .line 3302
    :cond_2f
    const/16 v71, 0x1

    .line 3303
    const-string v2, ""

    invoke-virtual {v11, v2}, Lcom/mediatek/simservs/client/policy/RuleSet;->createNewRule(Ljava/lang/String;)Lcom/mediatek/simservs/client/policy/Rule;

    move-result-object v84

    .line 3304
    .local v84, "rule":Lcom/mediatek/simservs/client/policy/Rule;
    invoke-virtual/range {v84 .. v84}, Lcom/mediatek/simservs/client/policy/Rule;->createConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v73

    .line 3305
    .restart local v73    # "cond":Lcom/mediatek/simservs/client/policy/Conditions;
    invoke-virtual/range {v84 .. v84}, Lcom/mediatek/simservs/client/policy/Rule;->createActions()Lcom/mediatek/simservs/client/policy/Actions;

    move-result-object v70

    .line 3306
    .restart local v70    # "action":Lcom/mediatek/simservs/client/policy/Actions;
    invoke-static {v8}, Lcom/android/internal/telephony/MMTelSSUtils;->isOp01IccCard(I)Z

    move-result v2

    if-eqz v2, :cond_34

    invoke-static {}, Lcom/android/internal/telephony/MMTelSSUtils;->isNotifyCallerTest()Z

    move-result v2

    if-eqz v2, :cond_34

    .line 3307
    const/4 v2, 0x0

    move-object/from16 v0, v70

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/simservs/client/policy/Actions;->setFowardTo(Ljava/lang/String;Z)V

    .line 3311
    :goto_a
    invoke-virtual/range {v70 .. v70}, Lcom/mediatek/simservs/client/policy/Actions;->getFowardTo()Lcom/mediatek/simservs/client/policy/ForwardTo;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/mediatek/simservs/client/policy/ForwardTo;->setRevealIdentityToCaller(Z)V

    .line 3312
    invoke-virtual/range {v70 .. v70}, Lcom/mediatek/simservs/client/policy/Actions;->getFowardTo()Lcom/mediatek/simservs/client/policy/ForwardTo;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/mediatek/simservs/client/policy/ForwardTo;->setRevealIdentityToTarget(Z)V

    .line 3314
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleSetCF():Add rule for this time\'s enable reason="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",serviceClass="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3316
    const/4 v2, 0x1

    if-ne v13, v2, :cond_35

    .line 3317
    move-object/from16 v0, v84

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/mediatek/simservs/client/policy/Rule;->setId(Ljava/lang/String;)V

    .line 3318
    invoke-virtual/range {v73 .. v73}, Lcom/mediatek/simservs/client/policy/Conditions;->addBusy()V

    .line 3340
    :cond_30
    :goto_b
    invoke-static {v8}, Lcom/android/internal/telephony/MMTelSSUtils;->isOp06IccCard(I)Z

    move-result v2

    if-nez v2, :cond_31

    invoke-static {v8}, Lcom/android/internal/telephony/MMTelSSUtils;->isOp07IccCard(I)Z

    move-result v2

    if-nez v2, :cond_31

    .line 3342
    const/4 v2, 0x1

    if-ne v15, v2, :cond_3a

    .line 3343
    const-string v2, "audio"

    move-object/from16 v0, v73

    invoke-virtual {v0, v2}, Lcom/mediatek/simservs/client/policy/Conditions;->addMedia(Ljava/lang/String;)V

    .line 3350
    :cond_31
    :goto_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mUpdateSingleRule:Z
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1900(Lcom/android/internal/telephony/MMTelSSTransport;)Z

    move-result v2

    if-eqz v2, :cond_32

    const/4 v2, 0x1

    move/from16 v0, v20

    if-ne v0, v2, :cond_32

    .line 3351
    move-object/from16 v0, v84

    iget-object v2, v0, Lcom/mediatek/simservs/client/policy/Rule;->mId:Ljava/lang/String;

    invoke-virtual {v10, v2}, Lcom/mediatek/simservs/client/CommunicationDiversion;->saveRule(Ljava/lang/String;)V

    .line 3357
    .end local v70    # "action":Lcom/mediatek/simservs/client/policy/Actions;
    .end local v73    # "cond":Lcom/mediatek/simservs/client/policy/Conditions;
    .end local v84    # "rule":Lcom/mediatek/simservs/client/policy/Rule;
    :cond_32
    invoke-virtual {v11}, Lcom/mediatek/simservs/client/policy/RuleSet;->getRules()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_3b

    .line 3358
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Dump SetCF XML:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v11}, Lcom/mediatek/simservs/client/policy/RuleSet;->toXmlString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3363
    :goto_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mUpdateSingleRule:Z
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1900(Lcom/android/internal/telephony/MMTelSSTransport;)Z

    move-result v2

    if-nez v2, :cond_3c

    .line 3364
    invoke-virtual {v10}, Lcom/mediatek/simservs/client/CommunicationDiversion;->saveRuleSet()V

    .line 3125
    :cond_33
    add-int/lit8 v78, v78, 0x1

    goto/16 :goto_3

    .line 3309
    .restart local v70    # "action":Lcom/mediatek/simservs/client/policy/Actions;
    .restart local v73    # "cond":Lcom/mediatek/simservs/client/policy/Conditions;
    .restart local v84    # "rule":Lcom/mediatek/simservs/client/policy/Rule;
    :cond_34
    const/4 v2, 0x1

    move-object/from16 v0, v70

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/simservs/client/policy/Actions;->setFowardTo(Ljava/lang/String;Z)V

    goto/16 :goto_a

    .line 3319
    :cond_35
    const/4 v2, 0x2

    if-ne v13, v2, :cond_37

    .line 3321
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleSetCF():[C2]Enable CFNoAnswer with new_NoReplyTimer="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",org_NoReplyTimer="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v10}, Lcom/mediatek/simservs/client/CommunicationDiversion;->getNoReplyTimer()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3322
    if-lez v17, :cond_36

    invoke-virtual {v10}, Lcom/mediatek/simservs/client/CommunicationDiversion;->getNoReplyTimer()I

    move-result v2

    const/4 v3, -0x1

    if-le v2, v3, :cond_36

    .line 3323
    move/from16 v0, v17

    invoke-virtual {v10, v0}, Lcom/mediatek/simservs/client/CommunicationDiversion;->setNoReplyTimer(I)V

    .line 3328
    :goto_e
    move-object/from16 v0, v84

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/mediatek/simservs/client/policy/Rule;->setId(Ljava/lang/String;)V

    .line 3329
    invoke-virtual/range {v73 .. v73}, Lcom/mediatek/simservs/client/policy/Conditions;->addNoAnswer()V

    goto/16 :goto_b

    .line 3325
    :cond_36
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No need to append setCFTimeSeconds: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    .line 3330
    :cond_37
    const/4 v2, 0x3

    if-ne v13, v2, :cond_38

    .line 3331
    move-object/from16 v0, v84

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/mediatek/simservs/client/policy/Rule;->setId(Ljava/lang/String;)V

    .line 3332
    invoke-virtual/range {v73 .. v73}, Lcom/mediatek/simservs/client/policy/Conditions;->addNotReachable()V

    goto/16 :goto_b

    .line 3333
    :cond_38
    const/4 v2, 0x6

    if-ne v13, v2, :cond_39

    .line 3334
    move-object/from16 v0, v84

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Lcom/mediatek/simservs/client/policy/Rule;->setId(Ljava/lang/String;)V

    .line 3335
    invoke-virtual/range {v73 .. v73}, Lcom/mediatek/simservs/client/policy/Conditions;->addNotRegistered()V

    goto/16 :goto_b

    .line 3336
    :cond_39
    if-nez v13, :cond_30

    .line 3337
    move-object/from16 v0, v84

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Lcom/mediatek/simservs/client/policy/Rule;->setId(Ljava/lang/String;)V

    goto/16 :goto_b

    .line 3344
    :cond_3a
    const/16 v2, 0x200

    if-ne v15, v2, :cond_31

    .line 3346
    const-string v2, "video"

    move-object/from16 v0, v73

    invoke-virtual {v0, v2}, Lcom/mediatek/simservs/client/policy/Conditions;->addMedia(Ljava/lang/String;)V

    goto/16 :goto_c

    .line 3360
    .end local v70    # "action":Lcom/mediatek/simservs/client/policy/Actions;
    .end local v73    # "cond":Lcom/mediatek/simservs/client/policy/Conditions;
    .end local v84    # "rule":Lcom/mediatek/simservs/client/policy/Rule;
    :cond_3b
    const-string v2, "MMTelSS"

    const-string v3, "Dump SetCF XML: ruleset with empty rules"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d

    .line 3366
    :cond_3c
    const/4 v2, 0x1

    move/from16 v0, v20

    if-le v0, v2, :cond_33

    .line 3367
    const/16 v81, 0x0

    .line 3368
    .local v81, "newRuleList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    invoke-virtual {v11}, Lcom/mediatek/simservs/client/policy/RuleSet;->getRules()Ljava/util/List;

    move-result-object v81

    .line 3369
    const/16 v77, 0x0

    .restart local v77    # "i":I
    :goto_f
    invoke-interface/range {v81 .. v81}, Ljava/util/List;->size()I

    move-result v2

    move/from16 v0, v77

    if-ge v0, v2, :cond_33

    .line 3370
    move-object/from16 v0, v81

    move/from16 v1, v77

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v80

    check-cast v80, Lcom/mediatek/simservs/client/policy/Rule;

    .line 3371
    .local v80, "newRule":Lcom/mediatek/simservs/client/policy/Rule;
    move-object/from16 v0, v80

    iget-object v2, v0, Lcom/mediatek/simservs/client/policy/Rule;->mId:Ljava/lang/String;

    invoke-virtual {v10, v2}, Lcom/mediatek/simservs/client/CommunicationDiversion;->saveRule(Ljava/lang/String;)V
    :try_end_2
    .catch Lcom/mediatek/simservs/xcap/XcapException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 3369
    add-int/lit8 v77, v77, 0x1

    goto :goto_f

    .line 3387
    .end local v10    # "cd":Lcom/mediatek/simservs/client/CommunicationDiversion;
    .end local v11    # "newRuleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    .end local v71    # "addedNewRule":Z
    .end local v74    # "curTime":J
    .end local v77    # "i":I
    .end local v78    # "it":I
    .end local v80    # "newRule":Lcom/mediatek/simservs/client/policy/Rule;
    .end local v81    # "newRuleList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    .end local v85    # "ruleList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    .end local v86    # "ruleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    .restart local v89    # "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    :cond_3d
    const-string v2, "MMTelSS"

    const-string v3, "handleSetCF(): XcapException"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3388
    invoke-virtual/range {v89 .. v89}, Lcom/mediatek/simservs/xcap/XcapException;->printStackTrace()V

    .line 3389
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v2, :cond_40

    .line 3390
    invoke-virtual/range {v89 .. v89}, Lcom/mediatek/simservs/xcap/XcapException;->isConnectionError()Z

    move-result v2

    if-eqz v2, :cond_3f

    .line 3391
    const-string v2, "MMTelSS"

    const-string v3, "handleSetCF(): xcapException.isConnectionError()"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3392
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v3, 0x0

    new-instance v4, Ljava/net/UnknownHostException;

    invoke-direct {v4}, Ljava/net/UnknownHostException;-><init>()V

    invoke-static {v2, v3, v4}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 3396
    :goto_10
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 3397
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v2

    if-eqz v2, :cond_3e

    .line 3398
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->releaseNetwork()V

    .line 3400
    :cond_3e
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 3394
    :cond_3f
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v3, 0x0

    move-object/from16 v0, v89

    invoke-static {v2, v3, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    goto :goto_10

    .line 3423
    .end local v89    # "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    :cond_40
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v2, :cond_41

    const/4 v2, 0x1

    move/from16 v0, v82

    if-ne v0, v2, :cond_41

    .line 3424
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 3425
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 3428
    :cond_41
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v2

    if-eqz v2, :cond_42

    .line 3429
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->releaseNetwork()V

    .line 3432
    :cond_42
    const/4 v2, 0x0

    goto/16 :goto_0
.end method

.method public handleSetCFInTimeSlot(Lcom/android/internal/telephony/MMTelSSRequest;)I
    .locals 50
    .param p1, "rr"    # Lcom/android/internal/telephony/MMTelSSRequest;

    .prologue
    .line 4364
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 4365
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v42

    .line 4366
    .local v42, "reqNo":I
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v45

    .line 4368
    .local v45, "serialNo":I
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 4369
    .local v13, "setCFAction":I
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 4370
    .local v12, "setCFReason":I
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 4371
    .local v14, "setCFServiceClass":I
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 4372
    .local v15, "setCFNumber":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 4373
    .local v16, "setCFTimeSeconds":I
    const/4 v2, 0x2

    new-array v0, v2, [J

    move-object/from16 v47, v0

    .line 4375
    .local v47, "timeSlot":[J
    :try_start_0
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    move-object/from16 v0, v47

    invoke-virtual {v2, v0}, Landroid/os/Parcel;->readLongArray([J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4379
    :goto_0
    move-object/from16 v0, p0

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->convertToSeverTime([J)Ljava/lang/String;

    move-result-object v17

    .line 4380
    .local v17, "timeSlotString":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 4382
    .local v8, "phoneId":I
    const/16 v33, 0x0

    .line 4383
    .local v33, "addRuleForCFUWithAllMediaType":Z
    const-string v18, "CFU"

    .line 4385
    .local v18, "cfuRuleID":Ljava/lang/String;
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Read from CF parcel: req = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {v42 .. v42}, Lcom/android/internal/telephony/MMTelSSTransport;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", cfAction = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", reason = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", serviceClass = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", number = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", timeSec = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", timsSlot = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4391
    const-string v2, "persist.radio.xcap.cfn"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v48

    .line 4392
    .local v48, "xcapCFNum":Ljava/lang/String;
    const-string v2, "sip:"

    move-object/from16 v0, v48

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "sips:"

    move-object/from16 v0, v48

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "tel:"

    move-object/from16 v0, v48

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4395
    :cond_0
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleSetCFInTimeSlot(): get call forwarding num from EM setting: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v48

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4397
    const-string v2, "persist.radio.ss.mode"

    const-string v3, "Prefer XCAP"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v46

    .line 4398
    .local v46, "ssMode":Ljava/lang/String;
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleSetCFInTimeSlot(): ssMode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v46

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4399
    const-string v2, "Prefer XCAP"

    move-object/from16 v0, v46

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4400
    move-object/from16 v15, v48

    .line 4405
    .end local v46    # "ssMode":Ljava/lang/String;
    :cond_1
    const/16 v2, 0x210

    if-ne v14, v2, :cond_2

    .line 4407
    const/16 v14, 0x200

    .line 4410
    :cond_2
    invoke-static {v8}, Lcom/android/internal/telephony/MMTelSSUtils;->isPreferXcap(I)Z

    move-result v2

    if-nez v2, :cond_4

    .line 4411
    const-string v2, "MMTelSS"

    const-string v3, "handleSetCFInTimeSlot(): !isPreferXcap()"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4412
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v2, :cond_3

    .line 4413
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v3, 0x0

    new-instance v4, Ljava/net/UnknownHostException;

    invoke-direct {v4}, Ljava/net/UnknownHostException;-><init>()V

    invoke-static {v2, v3, v4}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 4414
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 4416
    :cond_3
    const/4 v2, 0x0

    .line 4631
    :goto_1
    return v2

    .line 4376
    .end local v8    # "phoneId":I
    .end local v17    # "timeSlotString":Ljava/lang/String;
    .end local v18    # "cfuRuleID":Ljava/lang/String;
    .end local v33    # "addRuleForCFUWithAllMediaType":Z
    .end local v48    # "xcapCFNum":Ljava/lang/String;
    :catch_0
    move-exception v37

    .line 4377
    .local v37, "e":Ljava/lang/Exception;
    const/16 v47, 0x0

    goto/16 :goto_0

    .line 4421
    .end local v37    # "e":Ljava/lang/Exception;
    .restart local v8    # "phoneId":I
    .restart local v17    # "timeSlotString":Ljava/lang/String;
    .restart local v18    # "cfuRuleID":Ljava/lang/String;
    .restart local v33    # "addRuleForCFUWithAllMediaType":Z
    .restart local v48    # "xcapCFNum":Ljava/lang/String;
    :cond_4
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v38

    .line 4422
    .local v38, "curTime":J
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleSetCFInTimeSlot(): mCdCache = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCdCache:Lcom/mediatek/simservs/client/CommunicationDiversion;
    invoke-static {v4}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/mediatek/simservs/client/CommunicationDiversion;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", curTime = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v38

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mCdCacheLastQueried = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCdCacheLastQueried:J
    invoke-static {v4}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1700(Lcom/android/internal/telephony/MMTelSSTransport;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", phoneId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4426
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-static {v8}, Lcom/android/internal/telephony/MMTelSSUtils;->getXui(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/telephony/MMTelSSTransport;->mXui:Ljava/lang/String;

    .line 4427
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-static {v8}, Lcom/android/internal/telephony/MMTelSSUtils;->getXcapRootUri(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/telephony/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    .line 4428
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-static {v8}, Lcom/android/internal/telephony/MMTelSSUtils;->getXIntendedId(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/telephony/MMTelSSTransport;->mXIntendedId:Ljava/lang/String;

    .line 4430
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v2, v2, Lcom/android/internal/telephony/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 4431
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleSetCFInTimeSlot(): XcapRoot = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v4, v4, Lcom/android/internal/telephony/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4432
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v2, :cond_5

    .line 4433
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v3, 0x0

    new-instance v4, Ljava/net/UnknownHostException;

    invoke-direct {v4}, Ljava/net/UnknownHostException;-><init>()V

    invoke-static {v2, v3, v4}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 4434
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 4436
    :cond_5
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 4438
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # invokes: Lcom/android/internal/telephony/MMTelSSTransport;->requestXcapNetwork(I)V
    invoke-static {v2, v8}, Lcom/android/internal/telephony/MMTelSSTransport;->access$300(Lcom/android/internal/telephony/MMTelSSTransport;I)V

    .line 4439
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v3, v3, Lcom/android/internal/telephony/MMTelSSTransport;->mXui:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v4, v4, Lcom/android/internal/telephony/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v5, v5, Lcom/android/internal/telephony/MMTelSSTransport;->mXIntendedId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v6, v6, Lcom/android/internal/telephony/MMTelSSTransport;->mUserName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v7, v7, Lcom/android/internal/telephony/MMTelSSTransport;->mPassword:Ljava/lang/String;

    invoke-virtual/range {v2 .. v8}, Lcom/android/internal/telephony/MMTelSSTransport;->setSimservsInitParameters(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 4442
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCdCache:Lcom/mediatek/simservs/client/CommunicationDiversion;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/mediatek/simservs/client/CommunicationDiversion;

    move-result-object v2

    if-eqz v2, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCdCachePhoneId:I
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1800(Lcom/android/internal/telephony/MMTelSSTransport;)I

    move-result v2

    if-ne v8, v2, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCdCache:Lcom/mediatek/simservs/client/CommunicationDiversion;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/mediatek/simservs/client/CommunicationDiversion;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/simservs/client/CommunicationDiversion;->isSupportEtag()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 4444
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleSetCFInTimeSlot(): using ETAG mCdCache: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCdCache:Lcom/mediatek/simservs/client/CommunicationDiversion;
    invoke-static {v4}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/mediatek/simservs/client/CommunicationDiversion;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4445
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCdCache:Lcom/mediatek/simservs/client/CommunicationDiversion;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/mediatek/simservs/client/CommunicationDiversion;

    move-result-object v10

    .line 4446
    .local v10, "cd":Lcom/mediatek/simservs/client/CommunicationDiversion;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mNetwork:Landroid/net/Network;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$400(Lcom/android/internal/telephony/MMTelSSTransport;)Landroid/net/Network;

    move-result-object v2

    invoke-virtual {v10, v2}, Lcom/mediatek/simservs/client/CommunicationDiversion;->setNetwork(Landroid/net/Network;)V

    .line 4447
    invoke-virtual {v10}, Lcom/mediatek/simservs/client/CommunicationDiversion;->refresh()V

    .line 4448
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    move-wide/from16 v0, v38

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCdCacheLastQueried:J
    invoke-static {v2, v0, v1}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1702(Lcom/android/internal/telephony/MMTelSSTransport;J)J

    .line 4464
    :goto_2
    invoke-virtual {v10}, Lcom/mediatek/simservs/client/CommunicationDiversion;->getRuleSet()Lcom/mediatek/simservs/client/policy/RuleSet;

    move-result-object v44

    .line 4465
    .local v44, "ruleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    const/16 v43, 0x0

    .line 4466
    .local v43, "ruleList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    invoke-virtual {v10}, Lcom/mediatek/simservs/client/CommunicationDiversion;->createNewRuleSet()Lcom/mediatek/simservs/client/policy/RuleSet;

    move-result-object v11

    .line 4467
    .local v11, "newRuleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    const/16 v34, 0x0

    .line 4469
    .local v34, "addedNewRule":Z
    if-eqz v44, :cond_10

    .line 4470
    invoke-virtual/range {v44 .. v44}, Lcom/mediatek/simservs/client/policy/RuleSet;->getRules()Ljava/util/List;

    move-result-object v43

    .line 4477
    :goto_3
    if-eqz v43, :cond_19

    .line 4479
    const/16 v40, 0x0

    .local v40, "i":I
    :goto_4
    invoke-interface/range {v43 .. v43}, Ljava/util/List;->size()I

    move-result v2

    move/from16 v0, v40

    if-ge v0, v2, :cond_19

    .line 4480
    move-object/from16 v0, v43

    move/from16 v1, v40

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/mediatek/simservs/client/policy/Rule;

    .line 4481
    .local v22, "r":Lcom/mediatek/simservs/client/policy/Rule;
    invoke-virtual/range {v22 .. v22}, Lcom/mediatek/simservs/client/policy/Rule;->getConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v36

    .line 4482
    .local v36, "cond":Lcom/mediatek/simservs/client/policy/Conditions;
    invoke-virtual/range {v22 .. v22}, Lcom/mediatek/simservs/client/policy/Rule;->getActions()Lcom/mediatek/simservs/client/policy/Actions;

    move-result-object v32

    .line 4483
    .local v32, "action":Lcom/mediatek/simservs/client/policy/Actions;
    const/16 v41, 0x0

    .line 4485
    .local v41, "mediaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v36, :cond_15

    .line 4486
    invoke-virtual/range {v36 .. v36}, Lcom/mediatek/simservs/client/policy/Conditions;->getMedias()Ljava/util/List;

    move-result-object v41

    .line 4487
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleSetCFInTimeSlot(): busy = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v36 .. v36}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendBusy()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", NoAnswer = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v36 .. v36}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendNoAnswer()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", NoReachable = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v36 .. v36}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendNotReachable()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", NotRegistered = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v36 .. v36}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendNotRegistered()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4492
    invoke-virtual/range {v36 .. v36}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendBusy()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 4493
    const-string v2, "MMTelSS"

    const-string v3, "The rule is CFB"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4514
    :cond_7
    :goto_5
    if-nez v12, :cond_18

    if-eqz v36, :cond_8

    invoke-virtual/range {v36 .. v36}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendBusy()Z

    move-result v2

    if-nez v2, :cond_8

    invoke-virtual/range {v36 .. v36}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendNoAnswer()Z

    move-result v2

    if-nez v2, :cond_8

    invoke-virtual/range {v36 .. v36}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendNotRegistered()Z

    move-result v2

    if-nez v2, :cond_8

    invoke-virtual/range {v36 .. v36}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendNotReachable()Z

    move-result v2

    if-eqz v2, :cond_9

    :cond_8
    if-nez v36, :cond_18

    :cond_9
    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-virtual {v0, v1, v14}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->containSpecificMedia(Ljava/util/List;I)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 4521
    if-nez v14, :cond_a

    if-nez v14, :cond_17

    if-nez v33, :cond_17

    .line 4524
    :cond_a
    const/4 v2, 0x1

    if-eq v13, v2, :cond_b

    const/4 v2, 0x3

    if-ne v13, v2, :cond_16

    .line 4526
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mUpdateSingleRule:Z
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1900(Lcom/android/internal/telephony/MMTelSSTransport;)Z

    move-result v19

    move-object/from16 v9, p0

    invoke-virtual/range {v9 .. v19}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->handleCreateNewRuleForCFInTimeSlot(Lcom/mediatek/simservs/client/CommunicationDiversion;Lcom/mediatek/simservs/client/policy/RuleSet;IIILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v34

    .line 4536
    :goto_6
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleSetCFInTimeSlot(): CFU-addedNewRule = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v34

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4538
    if-nez v14, :cond_c

    .line 4539
    const/16 v33, 0x1

    .line 4479
    :cond_c
    :goto_7
    add-int/lit8 v40, v40, 0x1

    goto/16 :goto_4

    .line 4449
    .end local v10    # "cd":Lcom/mediatek/simservs/client/CommunicationDiversion;
    .end local v11    # "newRuleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    .end local v22    # "r":Lcom/mediatek/simservs/client/policy/Rule;
    .end local v32    # "action":Lcom/mediatek/simservs/client/policy/Actions;
    .end local v34    # "addedNewRule":Z
    .end local v36    # "cond":Lcom/mediatek/simservs/client/policy/Conditions;
    .end local v40    # "i":I
    .end local v41    # "mediaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v43    # "ruleList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    .end local v44    # "ruleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCdCache:Lcom/mediatek/simservs/client/CommunicationDiversion;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/mediatek/simservs/client/CommunicationDiversion;

    move-result-object v2

    if-eqz v2, :cond_e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCdCachePhoneId:I
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1800(Lcom/android/internal/telephony/MMTelSSTransport;)I

    move-result v2

    if-ne v8, v2, :cond_e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCdCacheLastQueried:J
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1700(Lcom/android/internal/telephony/MMTelSSTransport;)J

    move-result-wide v2

    cmp-long v2, v38, v2

    if-ltz v2, :cond_e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCdCacheLastQueried:J
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1700(Lcom/android/internal/telephony/MMTelSSTransport;)J

    move-result-wide v2

    sub-long v2, v38, v2

    const-wide/32 v4, 0x1d4c0

    cmp-long v2, v2, v4

    if-gez v2, :cond_e

    .line 4452
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleSetCFInTimeSlot(): using mCdCache: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCdCache:Lcom/mediatek/simservs/client/CommunicationDiversion;
    invoke-static {v4}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/mediatek/simservs/client/CommunicationDiversion;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4453
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCdCache:Lcom/mediatek/simservs/client/CommunicationDiversion;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/mediatek/simservs/client/CommunicationDiversion;

    move-result-object v10

    .line 4454
    .restart local v10    # "cd":Lcom/mediatek/simservs/client/CommunicationDiversion;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mNetwork:Landroid/net/Network;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$400(Lcom/android/internal/telephony/MMTelSSTransport;)Landroid/net/Network;

    move-result-object v2

    invoke-virtual {v10, v2}, Lcom/mediatek/simservs/client/CommunicationDiversion;->setNetwork(Landroid/net/Network;)V
    :try_end_1
    .catch Lcom/mediatek/simservs/xcap/XcapException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto/16 :goto_2

    .line 4577
    .end local v10    # "cd":Lcom/mediatek/simservs/client/CommunicationDiversion;
    .end local v38    # "curTime":J
    :catch_1
    move-exception v49

    .line 4578
    .local v49, "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    const/4 v3, 0x0

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCdCache:Lcom/mediatek/simservs/client/CommunicationDiversion;
    invoke-static {v2, v3}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1602(Lcom/android/internal/telephony/MMTelSSTransport;Lcom/mediatek/simservs/client/CommunicationDiversion;)Lcom/mediatek/simservs/client/CommunicationDiversion;

    .line 4579
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    const/4 v3, -0x1

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCdCachePhoneId:I
    invoke-static {v2, v3}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1802(Lcom/android/internal/telephony/MMTelSSTransport;I)I

    .line 4580
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    const-wide/16 v4, 0x0

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCdCacheLastQueried:J
    invoke-static {v2, v4, v5}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1702(Lcom/android/internal/telephony/MMTelSSTransport;J)J

    .line 4582
    invoke-virtual/range {v49 .. v49}, Lcom/mediatek/simservs/xcap/XcapException;->getHttpErrorCode()I

    move-result v2

    const/16 v3, 0x19c

    if-ne v2, v3, :cond_20

    .line 4583
    const-string v2, "MMTelSS"

    const-string v3, "handleSetCFInTimeSlot(): HTTP_ERROR_CODE_412"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4584
    const/16 v2, 0x19c

    goto/16 :goto_1

    .line 4456
    .end local v49    # "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    .restart local v38    # "curTime":J
    :cond_e
    :try_start_2
    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mSimservs:Lcom/mediatek/simservs/client/SimServs;
    invoke-static {}, Lcom/android/internal/telephony/MMTelSSTransport;->access$500()Lcom/mediatek/simservs/client/SimServs;

    move-result-object v2

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mNetwork:Landroid/net/Network;
    invoke-static {v4}, Lcom/android/internal/telephony/MMTelSSTransport;->access$400(Lcom/android/internal/telephony/MMTelSSTransport;)Landroid/net/Network;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/mediatek/simservs/client/SimServs;->getCommunicationDiversion(ZLandroid/net/Network;)Lcom/mediatek/simservs/client/CommunicationDiversion;

    move-result-object v10

    .line 4457
    .restart local v10    # "cd":Lcom/mediatek/simservs/client/CommunicationDiversion;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCdCache:Lcom/mediatek/simservs/client/CommunicationDiversion;
    invoke-static {v2, v10}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1602(Lcom/android/internal/telephony/MMTelSSTransport;Lcom/mediatek/simservs/client/CommunicationDiversion;)Lcom/mediatek/simservs/client/CommunicationDiversion;

    .line 4458
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCdCachePhoneId:I
    invoke-static {v2, v8}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1802(Lcom/android/internal/telephony/MMTelSSTransport;I)I

    .line 4459
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    move-wide/from16 v0, v38

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCdCacheLastQueried:J
    invoke-static {v2, v0, v1}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1702(Lcom/android/internal/telephony/MMTelSSTransport;J)J

    .line 4460
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleSetCFInTimeSlot(): new mCdCache = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCdCache:Lcom/mediatek/simservs/client/CommunicationDiversion;
    invoke-static {v4}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/mediatek/simservs/client/CommunicationDiversion;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", curTime = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v38

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Lcom/mediatek/simservs/xcap/XcapException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_2

    .line 4601
    .end local v10    # "cd":Lcom/mediatek/simservs/client/CommunicationDiversion;
    .end local v38    # "curTime":J
    :catch_2
    move-exception v37

    .line 4604
    .restart local v37    # "e":Ljava/lang/Exception;
    const-string v2, "MMTelSS"

    const-string v3, "handleSetCFInTimeSlot(): Start to Print Stack Trace"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4605
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    const/4 v3, 0x0

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCdCache:Lcom/mediatek/simservs/client/CommunicationDiversion;
    invoke-static {v2, v3}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1602(Lcom/android/internal/telephony/MMTelSSTransport;Lcom/mediatek/simservs/client/CommunicationDiversion;)Lcom/mediatek/simservs/client/CommunicationDiversion;

    .line 4606
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    const/4 v3, -0x1

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCdCachePhoneId:I
    invoke-static {v2, v3}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1802(Lcom/android/internal/telephony/MMTelSSTransport;I)I

    .line 4607
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    const-wide/16 v4, 0x0

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCdCacheLastQueried:J
    invoke-static {v2, v4, v5}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1702(Lcom/android/internal/telephony/MMTelSSTransport;J)J

    .line 4609
    invoke-virtual/range {v37 .. v37}, Ljava/lang/Exception;->printStackTrace()V

    .line 4610
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v2, :cond_1c

    .line 4611
    const/4 v2, 0x2

    invoke-static {v2}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v35

    .line 4613
    .local v35, "ce":Lcom/android/internal/telephony/CommandException;
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v3, 0x0

    move-object/from16 v0, v35

    invoke-static {v2, v3, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 4614
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 4615
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v2

    if-eqz v2, :cond_f

    .line 4616
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->releaseNetwork()V

    .line 4618
    :cond_f
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 4472
    .end local v35    # "ce":Lcom/android/internal/telephony/CommandException;
    .end local v37    # "e":Ljava/lang/Exception;
    .restart local v10    # "cd":Lcom/mediatek/simservs/client/CommunicationDiversion;
    .restart local v11    # "newRuleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    .restart local v34    # "addedNewRule":Z
    .restart local v38    # "curTime":J
    .restart local v43    # "ruleList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    .restart local v44    # "ruleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    :cond_10
    :try_start_3
    const-string v2, "MMTelSS"

    const-string v3, "No CF related rules in remote server"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 4494
    .restart local v22    # "r":Lcom/mediatek/simservs/client/policy/Rule;
    .restart local v32    # "action":Lcom/mediatek/simservs/client/policy/Actions;
    .restart local v36    # "cond":Lcom/mediatek/simservs/client/policy/Conditions;
    .restart local v40    # "i":I
    .restart local v41    # "mediaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_11
    invoke-virtual/range {v36 .. v36}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendNoAnswer()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 4495
    const-string v2, "MMTelSS"

    const-string v3, "The rule is CFNoAnswer"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 4496
    :cond_12
    invoke-virtual/range {v36 .. v36}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendNotReachable()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 4497
    const-string v2, "MMTelSS"

    const-string v3, "The rule is CFNotReachable"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 4498
    :cond_13
    invoke-virtual/range {v36 .. v36}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendNotRegistered()Z

    move-result v2

    if-eqz v2, :cond_14

    .line 4499
    const-string v2, "MMTelSS"

    const-string v3, "The rule is CFNotRegistered"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 4501
    :cond_14
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/mediatek/simservs/client/policy/Rule;->mId:Ljava/lang/String;

    move-object/from16 v18, v0

    .line 4502
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Update cfuRuleID = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 4505
    :cond_15
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleSetCFInTimeSlot(): Empty cond (cond==null) for this rule = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4507
    const-string v2, "CFU"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 4509
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/mediatek/simservs/client/policy/Rule;->mId:Ljava/lang/String;

    move-object/from16 v18, v0

    .line 4510
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Update cfuRuleID = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 4531
    :cond_16
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mUpdateSingleRule:Z
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1900(Lcom/android/internal/telephony/MMTelSSTransport;)Z

    move-result v29

    const/16 v30, 0x1

    move-object/from16 v19, p0

    move-object/from16 v20, v10

    move-object/from16 v21, v11

    move/from16 v23, v12

    move/from16 v24, v13

    move/from16 v25, v14

    move-object/from16 v26, v15

    move/from16 v27, v16

    move-object/from16 v28, v18

    move/from16 v31, v8

    invoke-virtual/range {v19 .. v31}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->handleCreateNewRuleForExistingCF(Lcom/mediatek/simservs/client/CommunicationDiversion;Lcom/mediatek/simservs/client/policy/RuleSet;Lcom/mediatek/simservs/client/policy/Rule;IIILjava/lang/String;ILjava/lang/String;ZII)Z

    move-result v34

    goto/16 :goto_6

    .line 4541
    :cond_17
    if-nez v14, :cond_c

    const/4 v2, 0x1

    move/from16 v0, v33

    if-ne v0, v2, :cond_c

    .line 4543
    const-string v2, "MMTelSS"

    const-string v3, "Already add rule for CFU previously"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 4547
    :cond_18
    const-string v2, "MMTelSS"

    const-string v3, "handleSetCFInTimeSlot(): Copy old rule to newRuleSet"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4549
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v11, v13, v12}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->copyOldRuleToNewRuleSet(Lcom/mediatek/simservs/client/policy/Rule;Lcom/mediatek/simservs/client/policy/RuleSet;II)Lcom/mediatek/simservs/client/policy/Rule;

    goto/16 :goto_7

    .line 4556
    .end local v22    # "r":Lcom/mediatek/simservs/client/policy/Rule;
    .end local v32    # "action":Lcom/mediatek/simservs/client/policy/Actions;
    .end local v36    # "cond":Lcom/mediatek/simservs/client/policy/Conditions;
    .end local v40    # "i":I
    .end local v41    # "mediaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_19
    if-nez v34, :cond_1b

    const/4 v2, 0x1

    if-eq v13, v2, :cond_1a

    const/4 v2, 0x3

    if-ne v13, v2, :cond_1b

    .line 4559
    :cond_1a
    const/16 v34, 0x1

    .line 4560
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mUpdateSingleRule:Z
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1900(Lcom/android/internal/telephony/MMTelSSTransport;)Z

    move-result v19

    move-object/from16 v9, p0

    invoke-virtual/range {v9 .. v19}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->handleCreateNewRuleForCFInTimeSlot(Lcom/mediatek/simservs/client/CommunicationDiversion;Lcom/mediatek/simservs/client/policy/RuleSet;IIILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)Z

    .line 4568
    :cond_1b
    invoke-virtual {v11}, Lcom/mediatek/simservs/client/policy/RuleSet;->getRules()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1f

    .line 4569
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Dump SetCF XML: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v11}, Lcom/mediatek/simservs/client/policy/RuleSet;->toXmlString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4574
    :goto_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mUpdateSingleRule:Z
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1900(Lcom/android/internal/telephony/MMTelSSTransport;)Z

    move-result v2

    if-nez v2, :cond_1c

    .line 4575
    invoke-virtual {v10}, Lcom/mediatek/simservs/client/CommunicationDiversion;->saveRuleSet()V
    :try_end_3
    .catch Lcom/mediatek/simservs/xcap/XcapException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 4623
    .end local v10    # "cd":Lcom/mediatek/simservs/client/CommunicationDiversion;
    .end local v11    # "newRuleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    .end local v34    # "addedNewRule":Z
    .end local v38    # "curTime":J
    .end local v43    # "ruleList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    .end local v44    # "ruleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    :cond_1c
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v2, :cond_1d

    .line 4624
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 4625
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 4627
    :cond_1d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v2

    if-eqz v2, :cond_1e

    .line 4628
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->releaseNetwork()V

    .line 4631
    :cond_1e
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 4571
    .restart local v10    # "cd":Lcom/mediatek/simservs/client/CommunicationDiversion;
    .restart local v11    # "newRuleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    .restart local v34    # "addedNewRule":Z
    .restart local v38    # "curTime":J
    .restart local v43    # "ruleList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    .restart local v44    # "ruleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    :cond_1f
    :try_start_4
    const-string v2, "MMTelSS"

    const-string v3, "Dump SetCF XML: ruleset with empty rules"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Lcom/mediatek/simservs/xcap/XcapException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_8

    .line 4586
    .end local v10    # "cd":Lcom/mediatek/simservs/client/CommunicationDiversion;
    .end local v11    # "newRuleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    .end local v34    # "addedNewRule":Z
    .end local v38    # "curTime":J
    .end local v43    # "ruleList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    .end local v44    # "ruleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    .restart local v49    # "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    :cond_20
    const-string v2, "MMTelSS"

    const-string v3, "handleSetCFInTimeSlot(): XcapException"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4587
    invoke-virtual/range {v49 .. v49}, Lcom/mediatek/simservs/xcap/XcapException;->printStackTrace()V

    .line 4588
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v2, :cond_1c

    .line 4589
    invoke-virtual/range {v49 .. v49}, Lcom/mediatek/simservs/xcap/XcapException;->isConnectionError()Z

    move-result v2

    if-eqz v2, :cond_22

    .line 4590
    const-string v2, "MMTelSS"

    const-string v3, "handleSetCFInTimeSlot(): isConnectionError()"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4591
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v3, 0x0

    new-instance v4, Ljava/net/UnknownHostException;

    invoke-direct {v4}, Ljava/net/UnknownHostException;-><init>()V

    invoke-static {v2, v3, v4}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 4595
    :goto_9
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 4596
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v2

    if-eqz v2, :cond_21

    .line 4597
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->releaseNetwork()V

    .line 4599
    :cond_21
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 4593
    :cond_22
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v3, 0x0

    move-object/from16 v0, v49

    invoke-static {v2, v3, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    goto :goto_9
.end method

.method public handleSetCLIP(Lcom/android/internal/telephony/MMTelSSRequest;)V
    .locals 14
    .param p1, "rr"    # Lcom/android/internal/telephony/MMTelSSRequest;

    .prologue
    .line 2639
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 2640
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 2641
    .local v11, "reqNo":I
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 2643
    .local v12, "serialNo":I
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 2644
    .local v8, "clipEnable":I
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 2645
    .local v6, "phoneId":I
    const-string v0, "MMTelSS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Read from CLIP parcel:clipMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2647
    invoke-static {v6}, Lcom/android/internal/telephony/MMTelSSUtils;->isPreferXcap(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2648
    const-string v0, "MMTelSS"

    const-string v1, "handleSetCLIP(): !isPreferXcap()"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2649
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v0, :cond_0

    .line 2650
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v1, 0x0

    new-instance v2, Ljava/net/UnknownHostException;

    invoke-direct {v2}, Ljava/net/UnknownHostException;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 2651
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2721
    :cond_0
    :goto_0
    return-void

    .line 2657
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-static {v6}, Lcom/android/internal/telephony/MMTelSSUtils;->getXui(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/MMTelSSTransport;->mXui:Ljava/lang/String;

    .line 2658
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-static {v6}, Lcom/android/internal/telephony/MMTelSSUtils;->getXcapRootUri(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    .line 2659
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-static {v6}, Lcom/android/internal/telephony/MMTelSSUtils;->getXIntendedId(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/MMTelSSTransport;->mXIntendedId:Ljava/lang/String;

    .line 2661
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v0, v0, Lcom/android/internal/telephony/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2662
    const-string v0, "MMTelSS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleSetCLIP(): XcapRoot = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v2, v2, Lcom/android/internal/telephony/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2663
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v0, :cond_0

    .line 2664
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v1, 0x0

    new-instance v2, Ljava/net/UnknownHostException;

    invoke-direct {v2}, Ljava/net/UnknownHostException;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 2665
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catch Lcom/mediatek/simservs/xcap/XcapException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 2681
    :catch_0
    move-exception v13

    .line 2682
    .local v13, "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    const-string v0, "MMTelSS"

    const-string v1, "handleSetCLIP(): XcapException"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2683
    invoke-virtual {v13}, Lcom/mediatek/simservs/xcap/XcapException;->printStackTrace()V

    .line 2684
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v0, :cond_3

    .line 2685
    invoke-virtual {v13}, Lcom/mediatek/simservs/xcap/XcapException;->isConnectionError()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2686
    const-string v0, "MMTelSS"

    const-string v1, "handleSetCLIP(): xcapException.isConnectionError()"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2687
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v1, 0x0

    new-instance v2, Ljava/net/UnknownHostException;

    invoke-direct {v2}, Ljava/net/UnknownHostException;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 2691
    :goto_1
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2692
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v0}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2693
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v0}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->releaseNetwork()V

    goto/16 :goto_0

    .line 2670
    .end local v13    # "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # invokes: Lcom/android/internal/telephony/MMTelSSTransport;->requestXcapNetwork(I)V
    invoke-static {v0, v6}, Lcom/android/internal/telephony/MMTelSSTransport;->access$300(Lcom/android/internal/telephony/MMTelSSTransport;I)V

    .line 2672
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v1, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v1, v1, Lcom/android/internal/telephony/MMTelSSTransport;->mXui:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v2, v2, Lcom/android/internal/telephony/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v3, v3, Lcom/android/internal/telephony/MMTelSSTransport;->mXIntendedId:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v4, v4, Lcom/android/internal/telephony/MMTelSSTransport;->mUserName:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v5, v5, Lcom/android/internal/telephony/MMTelSSTransport;->mPassword:Ljava/lang/String;

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/MMTelSSTransport;->setSimservsInitParameters(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 2674
    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mSimservs:Lcom/mediatek/simservs/client/SimServs;
    invoke-static {}, Lcom/android/internal/telephony/MMTelSSTransport;->access$500()Lcom/mediatek/simservs/client/SimServs;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mNetwork:Landroid/net/Network;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$400(Lcom/android/internal/telephony/MMTelSSTransport;)Landroid/net/Network;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/simservs/client/SimServs;->getOriginatingIdentityPresentation(ZLandroid/net/Network;)Lcom/mediatek/simservs/client/OriginatingIdentityPresentation;

    move-result-object v10

    .line 2676
    .local v10, "oip":Lcom/mediatek/simservs/client/OriginatingIdentityPresentation;
    const/4 v0, 0x1

    if-ne v8, v0, :cond_5

    .line 2677
    const/4 v0, 0x1

    invoke-virtual {v10, v0}, Lcom/mediatek/simservs/client/OriginatingIdentityPresentation;->setActive(Z)V
    :try_end_1
    .catch Lcom/mediatek/simservs/xcap/XcapException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 2714
    .end local v10    # "oip":Lcom/mediatek/simservs/client/OriginatingIdentityPresentation;
    :cond_3
    :goto_2
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v0, :cond_4

    .line 2715
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 2716
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2718
    :cond_4
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v0}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2719
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v0}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->releaseNetwork()V

    goto/16 :goto_0

    .line 2679
    .restart local v10    # "oip":Lcom/mediatek/simservs/client/OriginatingIdentityPresentation;
    :cond_5
    const/4 v0, 0x0

    :try_start_2
    invoke-virtual {v10, v0}, Lcom/mediatek/simservs/client/OriginatingIdentityPresentation;->setActive(Z)V
    :try_end_2
    .catch Lcom/mediatek/simservs/xcap/XcapException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 2697
    .end local v10    # "oip":Lcom/mediatek/simservs/client/OriginatingIdentityPresentation;
    :catch_1
    move-exception v9

    .line 2700
    .local v9, "e":Ljava/lang/Exception;
    const-string v0, "MMTelSS"

    const-string v1, "handleSetCLIP():Start to Print Stack Trace"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2701
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    .line 2702
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v0, :cond_3

    .line 2703
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v7

    .line 2704
    .local v7, "ce":Lcom/android/internal/telephony/CommandException;
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v1, 0x0

    invoke-static {v0, v1, v7}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 2705
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2706
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v0}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2707
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v0}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->releaseNetwork()V

    goto/16 :goto_0

    .line 2689
    .end local v7    # "ce":Lcom/android/internal/telephony/CommandException;
    .end local v9    # "e":Ljava/lang/Exception;
    .restart local v13    # "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    :cond_6
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v1, 0x0

    invoke-static {v0, v1, v13}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    goto/16 :goto_1
.end method

.method public handleSetCLIR(Lcom/android/internal/telephony/MMTelSSRequest;)I
    .locals 18
    .param p1, "rr"    # Lcom/android/internal/telephony/MMTelSSRequest;

    .prologue
    .line 2512
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 2513
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 2514
    .local v15, "reqNo":I
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 2516
    .local v16, "serialNo":I
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 2517
    .local v10, "clirMode":I
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 2518
    .local v8, "phoneId":I
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Read from CLIR parcel:clirMode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2520
    invoke-static {v8}, Lcom/android/internal/telephony/MMTelSSUtils;->isPreferXcap(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2521
    const-string v2, "MMTelSS"

    const-string v3, "handleSetCLIR(): !isPreferXcap()"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2522
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v2, :cond_0

    .line 2523
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v3, 0x0

    new-instance v4, Ljava/net/UnknownHostException;

    invoke-direct {v4}, Ljava/net/UnknownHostException;-><init>()V

    invoke-static {v2, v3, v4}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 2524
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 2526
    :cond_0
    const/4 v2, 0x0

    .line 2635
    :goto_0
    return v2

    .line 2531
    :cond_1
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 2532
    .local v12, "curTime":J
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleSetCLIR(): mOirCache = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mOirCache:Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;
    invoke-static {v4}, Lcom/android/internal/telephony/MMTelSSTransport;->access$000(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", curTime = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mOirCacheLastQueried = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mOirCacheLastQueried:J
    invoke-static {v4}, Lcom/android/internal/telephony/MMTelSSTransport;->access$100(Lcom/android/internal/telephony/MMTelSSTransport;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", phoneId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2535
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-static {v8}, Lcom/android/internal/telephony/MMTelSSUtils;->getXui(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/telephony/MMTelSSTransport;->mXui:Ljava/lang/String;

    .line 2536
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-static {v8}, Lcom/android/internal/telephony/MMTelSSUtils;->getXcapRootUri(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/telephony/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    .line 2537
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-static {v8}, Lcom/android/internal/telephony/MMTelSSUtils;->getXIntendedId(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/telephony/MMTelSSTransport;->mXIntendedId:Ljava/lang/String;

    .line 2538
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v2, v2, Lcom/android/internal/telephony/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2539
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleSetCLIR(): XcapRoot = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v4, v4, Lcom/android/internal/telephony/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2540
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v2, :cond_2

    .line 2541
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v3, 0x0

    new-instance v4, Ljava/net/UnknownHostException;

    invoke-direct {v4}, Ljava/net/UnknownHostException;-><init>()V

    invoke-static {v2, v3, v4}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 2542
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 2544
    :cond_2
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 2546
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # invokes: Lcom/android/internal/telephony/MMTelSSTransport;->requestXcapNetwork(I)V
    invoke-static {v2, v8}, Lcom/android/internal/telephony/MMTelSSTransport;->access$300(Lcom/android/internal/telephony/MMTelSSTransport;I)V

    .line 2547
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v3, v3, Lcom/android/internal/telephony/MMTelSSTransport;->mXui:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v4, v4, Lcom/android/internal/telephony/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v5, v5, Lcom/android/internal/telephony/MMTelSSTransport;->mXIntendedId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v6, v6, Lcom/android/internal/telephony/MMTelSSTransport;->mUserName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v7, v7, Lcom/android/internal/telephony/MMTelSSTransport;->mPassword:Ljava/lang/String;

    invoke-virtual/range {v2 .. v8}, Lcom/android/internal/telephony/MMTelSSTransport;->setSimservsInitParameters(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 2550
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mOirCache:Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$000(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;

    move-result-object v2

    if-eqz v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mOirCachePhoneId:I
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$200(Lcom/android/internal/telephony/MMTelSSTransport;)I

    move-result v2

    if-ne v8, v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mOirCache:Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$000(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;->isSupportEtag()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 2552
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleSetCLIR(): using ETAG mOirCache: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mOirCache:Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;
    invoke-static {v4}, Lcom/android/internal/telephony/MMTelSSTransport;->access$000(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2553
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mOirCache:Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$000(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;

    move-result-object v14

    .line 2554
    .local v14, "oir":Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mNetwork:Landroid/net/Network;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$400(Lcom/android/internal/telephony/MMTelSSTransport;)Landroid/net/Network;

    move-result-object v2

    invoke-virtual {v14, v2}, Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;->setNetwork(Landroid/net/Network;)V

    .line 2555
    invoke-virtual {v14}, Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;->refresh()V

    .line 2556
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mOirCacheLastQueried:J
    invoke-static {v2, v12, v13}, Lcom/android/internal/telephony/MMTelSSTransport;->access$102(Lcom/android/internal/telephony/MMTelSSTransport;J)J

    .line 2572
    :goto_1
    const/4 v2, 0x1

    if-ne v10, v2, :cond_a

    .line 2573
    const/4 v2, 0x1

    invoke-virtual {v14, v2}, Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;->setDefaultPresentationRestricted(Z)V
    :try_end_0
    .catch Lcom/mediatek/simservs/xcap/XcapException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 2627
    .end local v12    # "curTime":J
    .end local v14    # "oir":Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;
    :cond_4
    :goto_2
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v2, :cond_5

    .line 2628
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 2629
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 2631
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 2632
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->releaseNetwork()V

    .line 2635
    :cond_6
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 2557
    .restart local v12    # "curTime":J
    :cond_7
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mOirCache:Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$000(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;

    move-result-object v2

    if-eqz v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mOirCachePhoneId:I
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$200(Lcom/android/internal/telephony/MMTelSSTransport;)I

    move-result v2

    if-ne v8, v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mOirCacheLastQueried:J
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$100(Lcom/android/internal/telephony/MMTelSSTransport;)J

    move-result-wide v2

    cmp-long v2, v12, v2

    if-ltz v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mOirCacheLastQueried:J
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$100(Lcom/android/internal/telephony/MMTelSSTransport;)J

    move-result-wide v2

    sub-long v2, v12, v2

    const-wide/32 v4, 0x1d4c0

    cmp-long v2, v2, v4

    if-gez v2, :cond_8

    .line 2560
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleSetCLIR(): using mOirCache: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mOirCache:Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;
    invoke-static {v4}, Lcom/android/internal/telephony/MMTelSSTransport;->access$000(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2561
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mOirCache:Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$000(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;

    move-result-object v14

    .line 2562
    .restart local v14    # "oir":Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mNetwork:Landroid/net/Network;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$400(Lcom/android/internal/telephony/MMTelSSTransport;)Landroid/net/Network;

    move-result-object v2

    invoke-virtual {v14, v2}, Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;->setNetwork(Landroid/net/Network;)V
    :try_end_1
    .catch Lcom/mediatek/simservs/xcap/XcapException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    .line 2579
    .end local v12    # "curTime":J
    .end local v14    # "oir":Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;
    :catch_0
    move-exception v17

    .line 2580
    .local v17, "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    const/4 v3, 0x0

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mOirCache:Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;
    invoke-static {v2, v3}, Lcom/android/internal/telephony/MMTelSSTransport;->access$002(Lcom/android/internal/telephony/MMTelSSTransport;Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;)Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;

    .line 2581
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    const/4 v3, -0x1

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mOirCachePhoneId:I
    invoke-static {v2, v3}, Lcom/android/internal/telephony/MMTelSSTransport;->access$202(Lcom/android/internal/telephony/MMTelSSTransport;I)I

    .line 2582
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    const-wide/16 v4, 0x0

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mOirCacheLastQueried:J
    invoke-static {v2, v4, v5}, Lcom/android/internal/telephony/MMTelSSTransport;->access$102(Lcom/android/internal/telephony/MMTelSSTransport;J)J

    .line 2584
    invoke-virtual/range {v17 .. v17}, Lcom/mediatek/simservs/xcap/XcapException;->getHttpErrorCode()I

    move-result v2

    const/16 v3, 0x19c

    if-ne v2, v3, :cond_c

    .line 2585
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    const/4 v3, 0x0

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mOirCache:Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;
    invoke-static {v2, v3}, Lcom/android/internal/telephony/MMTelSSTransport;->access$002(Lcom/android/internal/telephony/MMTelSSTransport;Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;)Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;

    .line 2586
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    const/4 v3, -0x1

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mOirCachePhoneId:I
    invoke-static {v2, v3}, Lcom/android/internal/telephony/MMTelSSTransport;->access$202(Lcom/android/internal/telephony/MMTelSSTransport;I)I

    .line 2587
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    const-wide/16 v4, 0x0

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mOirCacheLastQueried:J
    invoke-static {v2, v4, v5}, Lcom/android/internal/telephony/MMTelSSTransport;->access$102(Lcom/android/internal/telephony/MMTelSSTransport;J)J

    .line 2588
    const-string v2, "MMTelSS"

    const-string v3, "handleSetCLIR(): HTTP_ERROR_CODE_412"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2589
    const/16 v2, 0x19c

    goto/16 :goto_0

    .line 2564
    .end local v17    # "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    .restart local v12    # "curTime":J
    :cond_8
    :try_start_2
    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mSimservs:Lcom/mediatek/simservs/client/SimServs;
    invoke-static {}, Lcom/android/internal/telephony/MMTelSSTransport;->access$500()Lcom/mediatek/simservs/client/SimServs;

    move-result-object v2

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mNetwork:Landroid/net/Network;
    invoke-static {v4}, Lcom/android/internal/telephony/MMTelSSTransport;->access$400(Lcom/android/internal/telephony/MMTelSSTransport;)Landroid/net/Network;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/mediatek/simservs/client/SimServs;->getOriginatingIdentityPresentationRestriction(ZLandroid/net/Network;)Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;

    move-result-object v14

    .line 2565
    .restart local v14    # "oir":Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mOirCache:Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;
    invoke-static {v2, v14}, Lcom/android/internal/telephony/MMTelSSTransport;->access$002(Lcom/android/internal/telephony/MMTelSSTransport;Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;)Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;

    .line 2566
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mOirCachePhoneId:I
    invoke-static {v2, v8}, Lcom/android/internal/telephony/MMTelSSTransport;->access$202(Lcom/android/internal/telephony/MMTelSSTransport;I)I

    .line 2567
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mOirCacheLastQueried:J
    invoke-static {v2, v12, v13}, Lcom/android/internal/telephony/MMTelSSTransport;->access$102(Lcom/android/internal/telephony/MMTelSSTransport;J)J

    .line 2568
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleSetCLIR(): new mOirCache = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mOirCache:Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;
    invoke-static {v4}, Lcom/android/internal/telephony/MMTelSSTransport;->access$000(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", curTime = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Lcom/mediatek/simservs/xcap/XcapException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1

    .line 2606
    .end local v12    # "curTime":J
    .end local v14    # "oir":Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;
    :catch_1
    move-exception v11

    .line 2609
    .local v11, "e":Ljava/lang/Exception;
    const-string v2, "MMTelSS"

    const-string v3, "handleSetCLIR():Start to Print Stack Trace"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2610
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    const/4 v3, 0x0

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mOirCache:Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;
    invoke-static {v2, v3}, Lcom/android/internal/telephony/MMTelSSTransport;->access$002(Lcom/android/internal/telephony/MMTelSSTransport;Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;)Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;

    .line 2611
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    const/4 v3, -0x1

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mOirCachePhoneId:I
    invoke-static {v2, v3}, Lcom/android/internal/telephony/MMTelSSTransport;->access$202(Lcom/android/internal/telephony/MMTelSSTransport;I)I

    .line 2612
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    const-wide/16 v4, 0x0

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mOirCacheLastQueried:J
    invoke-static {v2, v4, v5}, Lcom/android/internal/telephony/MMTelSSTransport;->access$102(Lcom/android/internal/telephony/MMTelSSTransport;J)J

    .line 2614
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    .line 2615
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v2, :cond_4

    .line 2616
    const/4 v2, 0x2

    invoke-static {v2}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v9

    .line 2617
    .local v9, "ce":Lcom/android/internal/telephony/CommandException;
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v3, 0x0

    invoke-static {v2, v3, v9}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 2618
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 2619
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 2620
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->releaseNetwork()V

    .line 2622
    :cond_9
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 2574
    .end local v9    # "ce":Lcom/android/internal/telephony/CommandException;
    .end local v11    # "e":Ljava/lang/Exception;
    .restart local v12    # "curTime":J
    .restart local v14    # "oir":Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;
    :cond_a
    const/4 v2, 0x2

    if-ne v10, v2, :cond_b

    .line 2575
    const/4 v2, 0x0

    :try_start_3
    invoke-virtual {v14, v2}, Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;->setDefaultPresentationRestricted(Z)V

    goto/16 :goto_2

    .line 2577
    :cond_b
    const/4 v2, 0x0

    invoke-virtual {v14, v2}, Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;->setDefaultPresentationRestricted(Z)V
    :try_end_3
    .catch Lcom/mediatek/simservs/xcap/XcapException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_2

    .line 2591
    .end local v12    # "curTime":J
    .end local v14    # "oir":Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;
    .restart local v17    # "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    :cond_c
    const-string v2, "MMTelSS"

    const-string v3, "handleSetCLIR(): XcapException"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2592
    invoke-virtual/range {v17 .. v17}, Lcom/mediatek/simservs/xcap/XcapException;->printStackTrace()V

    .line 2593
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v2, :cond_4

    .line 2594
    invoke-virtual/range {v17 .. v17}, Lcom/mediatek/simservs/xcap/XcapException;->isConnectionError()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 2595
    const-string v2, "MMTelSS"

    const-string v3, "handleSetCLIR(): xcapException.isConnectionError()"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2596
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v3, 0x0

    new-instance v4, Ljava/net/UnknownHostException;

    invoke-direct {v4}, Ljava/net/UnknownHostException;-><init>()V

    invoke-static {v2, v3, v4}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 2600
    :goto_3
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 2601
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v2

    if-eqz v2, :cond_d

    .line 2602
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->releaseNetwork()V

    .line 2604
    :cond_d
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 2598
    :cond_e
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v3, 0x0

    move-object/from16 v0, v17

    invoke-static {v2, v3, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    goto :goto_3
.end method

.method public handleSetCOLP(Lcom/android/internal/telephony/MMTelSSRequest;)V
    .locals 14
    .param p1, "rr"    # Lcom/android/internal/telephony/MMTelSSRequest;

    .prologue
    .line 2812
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 2813
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 2814
    .local v10, "reqNo":I
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 2816
    .local v11, "serialNo":I
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 2817
    .local v8, "colpEnable":I
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 2818
    .local v6, "phoneId":I
    const-string v0, "MMTelSS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Read from COLP parcel:colpEnable="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2820
    invoke-static {v6}, Lcom/android/internal/telephony/MMTelSSUtils;->isPreferXcap(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2821
    const-string v0, "MMTelSS"

    const-string v1, "handleSetCOLP(): !isPreferXcap()"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2822
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v0, :cond_0

    .line 2823
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v1, 0x0

    new-instance v2, Ljava/net/UnknownHostException;

    invoke-direct {v2}, Ljava/net/UnknownHostException;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 2824
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2894
    :cond_0
    :goto_0
    return-void

    .line 2830
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-static {v6}, Lcom/android/internal/telephony/MMTelSSUtils;->getXui(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/MMTelSSTransport;->mXui:Ljava/lang/String;

    .line 2831
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-static {v6}, Lcom/android/internal/telephony/MMTelSSUtils;->getXcapRootUri(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    .line 2832
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-static {v6}, Lcom/android/internal/telephony/MMTelSSUtils;->getXIntendedId(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/MMTelSSTransport;->mXIntendedId:Ljava/lang/String;

    .line 2834
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v0, v0, Lcom/android/internal/telephony/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2835
    const-string v0, "MMTelSS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleSetCOLP(): XcapRoot = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v2, v2, Lcom/android/internal/telephony/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2836
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v0, :cond_0

    .line 2837
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v1, 0x0

    new-instance v2, Ljava/net/UnknownHostException;

    invoke-direct {v2}, Ljava/net/UnknownHostException;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 2838
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catch Lcom/mediatek/simservs/xcap/XcapException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 2854
    :catch_0
    move-exception v13

    .line 2855
    .local v13, "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    const-string v0, "MMTelSS"

    const-string v1, "handleSetCOLP(): XcapException"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2856
    invoke-virtual {v13}, Lcom/mediatek/simservs/xcap/XcapException;->printStackTrace()V

    .line 2857
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v0, :cond_3

    .line 2858
    invoke-virtual {v13}, Lcom/mediatek/simservs/xcap/XcapException;->isConnectionError()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2859
    const-string v0, "MMTelSS"

    const-string v1, "handleSetCOLP(): xcapException.isConnectionError()"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2860
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v1, 0x0

    new-instance v2, Ljava/net/UnknownHostException;

    invoke-direct {v2}, Ljava/net/UnknownHostException;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 2864
    :goto_1
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2865
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v0}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2866
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v0}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->releaseNetwork()V

    goto/16 :goto_0

    .line 2843
    .end local v13    # "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # invokes: Lcom/android/internal/telephony/MMTelSSTransport;->requestXcapNetwork(I)V
    invoke-static {v0, v6}, Lcom/android/internal/telephony/MMTelSSTransport;->access$300(Lcom/android/internal/telephony/MMTelSSTransport;I)V

    .line 2845
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v1, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v1, v1, Lcom/android/internal/telephony/MMTelSSTransport;->mXui:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v2, v2, Lcom/android/internal/telephony/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v3, v3, Lcom/android/internal/telephony/MMTelSSTransport;->mXIntendedId:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v4, v4, Lcom/android/internal/telephony/MMTelSSTransport;->mUserName:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v5, v5, Lcom/android/internal/telephony/MMTelSSTransport;->mPassword:Ljava/lang/String;

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/MMTelSSTransport;->setSimservsInitParameters(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 2847
    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mSimservs:Lcom/mediatek/simservs/client/SimServs;
    invoke-static {}, Lcom/android/internal/telephony/MMTelSSTransport;->access$500()Lcom/mediatek/simservs/client/SimServs;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mNetwork:Landroid/net/Network;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$400(Lcom/android/internal/telephony/MMTelSSTransport;)Landroid/net/Network;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/simservs/client/SimServs;->getTerminatingIdentityPresentation(ZLandroid/net/Network;)Lcom/mediatek/simservs/client/TerminatingIdentityPresentation;

    move-result-object v12

    .line 2849
    .local v12, "tip":Lcom/mediatek/simservs/client/TerminatingIdentityPresentation;
    const/4 v0, 0x1

    if-ne v8, v0, :cond_5

    .line 2850
    const/4 v0, 0x1

    invoke-virtual {v12, v0}, Lcom/mediatek/simservs/client/TerminatingIdentityPresentation;->setActive(Z)V
    :try_end_1
    .catch Lcom/mediatek/simservs/xcap/XcapException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 2887
    .end local v12    # "tip":Lcom/mediatek/simservs/client/TerminatingIdentityPresentation;
    :cond_3
    :goto_2
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v0, :cond_4

    .line 2888
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 2889
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2891
    :cond_4
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v0}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2892
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v0}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->releaseNetwork()V

    goto/16 :goto_0

    .line 2852
    .restart local v12    # "tip":Lcom/mediatek/simservs/client/TerminatingIdentityPresentation;
    :cond_5
    const/4 v0, 0x0

    :try_start_2
    invoke-virtual {v12, v0}, Lcom/mediatek/simservs/client/TerminatingIdentityPresentation;->setActive(Z)V
    :try_end_2
    .catch Lcom/mediatek/simservs/xcap/XcapException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 2870
    .end local v12    # "tip":Lcom/mediatek/simservs/client/TerminatingIdentityPresentation;
    :catch_1
    move-exception v9

    .line 2873
    .local v9, "e":Ljava/lang/Exception;
    const-string v0, "MMTelSS"

    const-string v1, "handleSetCOLP():Start to Print Stack Trace"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2874
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    .line 2875
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v0, :cond_3

    .line 2876
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v7

    .line 2877
    .local v7, "ce":Lcom/android/internal/telephony/CommandException;
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v1, 0x0

    invoke-static {v0, v1, v7}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 2878
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2879
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v0}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2880
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v0}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->releaseNetwork()V

    goto/16 :goto_0

    .line 2862
    .end local v7    # "ce":Lcom/android/internal/telephony/CommandException;
    .end local v9    # "e":Ljava/lang/Exception;
    .restart local v13    # "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    :cond_6
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v1, 0x0

    invoke-static {v0, v1, v13}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    goto/16 :goto_1
.end method

.method public handleSetCOLR(Lcom/android/internal/telephony/MMTelSSRequest;)V
    .locals 14
    .param p1, "rr"    # Lcom/android/internal/telephony/MMTelSSRequest;

    .prologue
    .line 2725
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 2726
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 2727
    .local v10, "reqNo":I
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 2729
    .local v11, "serialNo":I
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 2730
    .local v8, "colrMode":I
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 2731
    .local v6, "phoneId":I
    const-string v0, "MMTelSS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Read from COLR parcel:clirMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2733
    invoke-static {v6}, Lcom/android/internal/telephony/MMTelSSUtils;->isPreferXcap(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2734
    const-string v0, "MMTelSS"

    const-string v1, "handleSetCOLR(): !isPreferXcap()"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2735
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v0, :cond_0

    .line 2736
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v1, 0x0

    new-instance v2, Ljava/net/UnknownHostException;

    invoke-direct {v2}, Ljava/net/UnknownHostException;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 2737
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2809
    :cond_0
    :goto_0
    return-void

    .line 2743
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-static {v6}, Lcom/android/internal/telephony/MMTelSSUtils;->getXui(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/MMTelSSTransport;->mXui:Ljava/lang/String;

    .line 2744
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-static {v6}, Lcom/android/internal/telephony/MMTelSSUtils;->getXcapRootUri(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    .line 2745
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-static {v6}, Lcom/android/internal/telephony/MMTelSSUtils;->getXIntendedId(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/MMTelSSTransport;->mXIntendedId:Ljava/lang/String;

    .line 2747
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v0, v0, Lcom/android/internal/telephony/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2748
    const-string v0, "MMTelSS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleSetCOLR(): XcapRoot = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v2, v2, Lcom/android/internal/telephony/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2749
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v0, :cond_0

    .line 2750
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v1, 0x0

    new-instance v2, Ljava/net/UnknownHostException;

    invoke-direct {v2}, Ljava/net/UnknownHostException;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 2751
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catch Lcom/mediatek/simservs/xcap/XcapException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 2769
    :catch_0
    move-exception v13

    .line 2770
    .local v13, "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    const-string v0, "MMTelSS"

    const-string v1, "handleSetCOLR(): XcapException"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2771
    invoke-virtual {v13}, Lcom/mediatek/simservs/xcap/XcapException;->printStackTrace()V

    .line 2772
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v0, :cond_3

    .line 2773
    invoke-virtual {v13}, Lcom/mediatek/simservs/xcap/XcapException;->isConnectionError()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2774
    const-string v0, "MMTelSS"

    const-string v1, "handleSetCOLR(): xcapException.isConnectionError()"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2775
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v1, 0x0

    new-instance v2, Ljava/net/UnknownHostException;

    invoke-direct {v2}, Ljava/net/UnknownHostException;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 2779
    :goto_1
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2780
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v0}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2781
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v0}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->releaseNetwork()V

    goto/16 :goto_0

    .line 2756
    .end local v13    # "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # invokes: Lcom/android/internal/telephony/MMTelSSTransport;->requestXcapNetwork(I)V
    invoke-static {v0, v6}, Lcom/android/internal/telephony/MMTelSSTransport;->access$300(Lcom/android/internal/telephony/MMTelSSTransport;I)V

    .line 2758
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v1, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v1, v1, Lcom/android/internal/telephony/MMTelSSTransport;->mXui:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v2, v2, Lcom/android/internal/telephony/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v3, v3, Lcom/android/internal/telephony/MMTelSSTransport;->mXIntendedId:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v4, v4, Lcom/android/internal/telephony/MMTelSSTransport;->mUserName:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v5, v5, Lcom/android/internal/telephony/MMTelSSTransport;->mPassword:Ljava/lang/String;

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/MMTelSSTransport;->setSimservsInitParameters(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 2760
    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mSimservs:Lcom/mediatek/simservs/client/SimServs;
    invoke-static {}, Lcom/android/internal/telephony/MMTelSSTransport;->access$500()Lcom/mediatek/simservs/client/SimServs;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mNetwork:Landroid/net/Network;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$400(Lcom/android/internal/telephony/MMTelSSTransport;)Landroid/net/Network;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/simservs/client/SimServs;->getTerminatingIdentityPresentationRestriction(ZLandroid/net/Network;)Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;

    move-result-object v12

    .line 2762
    .local v12, "tir":Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;
    const/4 v0, 0x1

    if-ne v8, v0, :cond_5

    .line 2763
    const/4 v0, 0x1

    invoke-virtual {v12, v0}, Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;->setDefaultPresentationRestricted(Z)V
    :try_end_1
    .catch Lcom/mediatek/simservs/xcap/XcapException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 2802
    .end local v12    # "tir":Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;
    :cond_3
    :goto_2
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v0, :cond_4

    .line 2803
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 2804
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2806
    :cond_4
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v0}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2807
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v0}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->releaseNetwork()V

    goto/16 :goto_0

    .line 2764
    .restart local v12    # "tir":Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;
    :cond_5
    const/4 v0, 0x2

    if-ne v8, v0, :cond_6

    .line 2765
    const/4 v0, 0x0

    :try_start_2
    invoke-virtual {v12, v0}, Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;->setDefaultPresentationRestricted(Z)V
    :try_end_2
    .catch Lcom/mediatek/simservs/xcap/XcapException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 2785
    .end local v12    # "tir":Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;
    :catch_1
    move-exception v9

    .line 2788
    .local v9, "e":Ljava/lang/Exception;
    const-string v0, "MMTelSS"

    const-string v1, "handleSetCOLR():Start to Print Stack Trace"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2789
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    .line 2790
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v0, :cond_3

    .line 2791
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v7

    .line 2792
    .local v7, "ce":Lcom/android/internal/telephony/CommandException;
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v1, 0x0

    invoke-static {v0, v1, v7}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 2793
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2794
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v0}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2795
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v0}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->releaseNetwork()V

    goto/16 :goto_0

    .line 2767
    .end local v7    # "ce":Lcom/android/internal/telephony/CommandException;
    .end local v9    # "e":Ljava/lang/Exception;
    .restart local v12    # "tir":Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;
    :cond_6
    const/4 v0, 0x0

    :try_start_3
    invoke-virtual {v12, v0}, Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;->setDefaultPresentationRestricted(Z)V
    :try_end_3
    .catch Lcom/mediatek/simservs/xcap/XcapException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    .line 2777
    .end local v12    # "tir":Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;
    .restart local v13    # "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    :cond_7
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v1, 0x0

    invoke-static {v0, v1, v13}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    goto/16 :goto_1
.end method

.method public handleSetCW(Lcom/android/internal/telephony/MMTelSSRequest;)I
    .locals 19
    .param p1, "rr"    # Lcom/android/internal/telephony/MMTelSSRequest;

    .prologue
    .line 2899
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 2900
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 2901
    .local v15, "reqNo":I
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 2902
    .local v16, "serialNo":I
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 2903
    .local v14, "enabled":I
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 2904
    .local v17, "serviceClass":I
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 2906
    .local v8, "phoneId":I
    invoke-static {v8}, Lcom/android/internal/telephony/MMTelSSUtils;->isPreferXcap(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2907
    const-string v2, "MMTelSS"

    const-string v3, "handleSetCW(): !isPreferXcap()"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2908
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v2, :cond_0

    .line 2909
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v3, 0x0

    new-instance v4, Ljava/net/UnknownHostException;

    invoke-direct {v4}, Ljava/net/UnknownHostException;-><init>()V

    invoke-static {v2, v3, v4}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 2910
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 2912
    :cond_0
    const/4 v2, 0x0

    .line 3017
    :goto_0
    return v2

    .line 2917
    :cond_1
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 2918
    .local v10, "curTime":J
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleSetCW(): mCwCache = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCwCache:Lcom/mediatek/simservs/client/CommunicationWaiting;
    invoke-static {v4}, Lcom/android/internal/telephony/MMTelSSTransport;->access$700(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/mediatek/simservs/client/CommunicationWaiting;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", curTime = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mCwCacheLastQueried = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCwCacheLastQueried:J
    invoke-static {v4}, Lcom/android/internal/telephony/MMTelSSTransport;->access$800(Lcom/android/internal/telephony/MMTelSSTransport;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", phoneId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2921
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-static {v8}, Lcom/android/internal/telephony/MMTelSSUtils;->getXui(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/telephony/MMTelSSTransport;->mXui:Ljava/lang/String;

    .line 2922
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-static {v8}, Lcom/android/internal/telephony/MMTelSSUtils;->getXcapRootUri(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/telephony/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    .line 2923
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-static {v8}, Lcom/android/internal/telephony/MMTelSSUtils;->getXIntendedId(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/telephony/MMTelSSTransport;->mXIntendedId:Ljava/lang/String;

    .line 2925
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v2, v2, Lcom/android/internal/telephony/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2926
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleSetCW(): XcapRoot = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v4, v4, Lcom/android/internal/telephony/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2927
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v2, :cond_2

    .line 2928
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v3, 0x0

    new-instance v4, Ljava/net/UnknownHostException;

    invoke-direct {v4}, Ljava/net/UnknownHostException;-><init>()V

    invoke-static {v2, v3, v4}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 2929
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 2931
    :cond_2
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 2933
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # invokes: Lcom/android/internal/telephony/MMTelSSTransport;->requestXcapNetwork(I)V
    invoke-static {v2, v8}, Lcom/android/internal/telephony/MMTelSSTransport;->access$300(Lcom/android/internal/telephony/MMTelSSTransport;I)V

    .line 2934
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v3, v3, Lcom/android/internal/telephony/MMTelSSTransport;->mXui:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v4, v4, Lcom/android/internal/telephony/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v5, v5, Lcom/android/internal/telephony/MMTelSSTransport;->mXIntendedId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v6, v6, Lcom/android/internal/telephony/MMTelSSTransport;->mUserName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v7, v7, Lcom/android/internal/telephony/MMTelSSTransport;->mPassword:Ljava/lang/String;

    invoke-virtual/range {v2 .. v8}, Lcom/android/internal/telephony/MMTelSSTransport;->setSimservsInitParameters(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 2936
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCwCache:Lcom/mediatek/simservs/client/CommunicationWaiting;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$700(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/mediatek/simservs/client/CommunicationWaiting;

    move-result-object v2

    if-eqz v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCwCachePhoneId:I
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$900(Lcom/android/internal/telephony/MMTelSSTransport;)I

    move-result v2

    if-ne v8, v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCwCache:Lcom/mediatek/simservs/client/CommunicationWaiting;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$700(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/mediatek/simservs/client/CommunicationWaiting;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/simservs/client/CommunicationWaiting;->isSupportEtag()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 2938
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleSetCW(): using ETAG mCwCache: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCwCache:Lcom/mediatek/simservs/client/CommunicationWaiting;
    invoke-static {v4}, Lcom/android/internal/telephony/MMTelSSTransport;->access$700(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/mediatek/simservs/client/CommunicationWaiting;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2939
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCwCache:Lcom/mediatek/simservs/client/CommunicationWaiting;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$700(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/mediatek/simservs/client/CommunicationWaiting;

    move-result-object v12

    .line 2940
    .local v12, "cw":Lcom/mediatek/simservs/client/CommunicationWaiting;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mNetwork:Landroid/net/Network;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$400(Lcom/android/internal/telephony/MMTelSSTransport;)Landroid/net/Network;

    move-result-object v2

    invoke-virtual {v12, v2}, Lcom/mediatek/simservs/client/CommunicationWaiting;->setNetwork(Landroid/net/Network;)V

    .line 2941
    invoke-virtual {v12}, Lcom/mediatek/simservs/client/CommunicationWaiting;->refresh()V

    .line 2942
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCwCacheLastQueried:J
    invoke-static {v2, v10, v11}, Lcom/android/internal/telephony/MMTelSSTransport;->access$802(Lcom/android/internal/telephony/MMTelSSTransport;J)J

    .line 2957
    :goto_1
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleSetCW(): enabled = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2958
    const/4 v2, 0x1

    if-ne v14, v2, :cond_a

    .line 2959
    const/4 v2, 0x1

    invoke-virtual {v12, v2}, Lcom/mediatek/simservs/client/CommunicationWaiting;->setActive(Z)V
    :try_end_0
    .catch Lcom/mediatek/simservs/xcap/XcapException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 3008
    .end local v10    # "curTime":J
    .end local v12    # "cw":Lcom/mediatek/simservs/client/CommunicationWaiting;
    :cond_4
    :goto_2
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v2, :cond_5

    .line 3009
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 3010
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 3013
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 3014
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->releaseNetwork()V

    .line 3017
    :cond_6
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 2943
    .restart local v10    # "curTime":J
    :cond_7
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCwCache:Lcom/mediatek/simservs/client/CommunicationWaiting;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$700(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/mediatek/simservs/client/CommunicationWaiting;

    move-result-object v2

    if-eqz v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCwCachePhoneId:I
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$900(Lcom/android/internal/telephony/MMTelSSTransport;)I

    move-result v2

    if-ne v8, v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCwCacheLastQueried:J
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$800(Lcom/android/internal/telephony/MMTelSSTransport;)J

    move-result-wide v2

    cmp-long v2, v10, v2

    if-ltz v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCwCacheLastQueried:J
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$800(Lcom/android/internal/telephony/MMTelSSTransport;)J

    move-result-wide v2

    sub-long v2, v10, v2

    const-wide/32 v4, 0x1d4c0

    cmp-long v2, v2, v4

    if-gez v2, :cond_8

    .line 2946
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleSetCW(): using mCwCache: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCwCache:Lcom/mediatek/simservs/client/CommunicationWaiting;
    invoke-static {v4}, Lcom/android/internal/telephony/MMTelSSTransport;->access$700(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/mediatek/simservs/client/CommunicationWaiting;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2947
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCwCache:Lcom/mediatek/simservs/client/CommunicationWaiting;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$700(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/mediatek/simservs/client/CommunicationWaiting;

    move-result-object v12

    .line 2948
    .restart local v12    # "cw":Lcom/mediatek/simservs/client/CommunicationWaiting;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mNetwork:Landroid/net/Network;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$400(Lcom/android/internal/telephony/MMTelSSTransport;)Landroid/net/Network;

    move-result-object v2

    invoke-virtual {v12, v2}, Lcom/mediatek/simservs/client/CommunicationWaiting;->setNetwork(Landroid/net/Network;)V
    :try_end_1
    .catch Lcom/mediatek/simservs/xcap/XcapException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    .line 2963
    .end local v10    # "curTime":J
    .end local v12    # "cw":Lcom/mediatek/simservs/client/CommunicationWaiting;
    :catch_0
    move-exception v18

    .line 2964
    .local v18, "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    const/4 v3, 0x0

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCwCache:Lcom/mediatek/simservs/client/CommunicationWaiting;
    invoke-static {v2, v3}, Lcom/android/internal/telephony/MMTelSSTransport;->access$702(Lcom/android/internal/telephony/MMTelSSTransport;Lcom/mediatek/simservs/client/CommunicationWaiting;)Lcom/mediatek/simservs/client/CommunicationWaiting;

    .line 2965
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    const/4 v3, -0x1

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCwCachePhoneId:I
    invoke-static {v2, v3}, Lcom/android/internal/telephony/MMTelSSTransport;->access$902(Lcom/android/internal/telephony/MMTelSSTransport;I)I

    .line 2966
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    const-wide/16 v4, 0x0

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCwCacheLastQueried:J
    invoke-static {v2, v4, v5}, Lcom/android/internal/telephony/MMTelSSTransport;->access$802(Lcom/android/internal/telephony/MMTelSSTransport;J)J

    .line 2968
    invoke-virtual/range {v18 .. v18}, Lcom/mediatek/simservs/xcap/XcapException;->getHttpErrorCode()I

    move-result v2

    const/16 v3, 0x19c

    if-ne v2, v3, :cond_b

    .line 2969
    const-string v2, "MMTelSS"

    const-string v3, "handleSetCW(): HTTP_ERROR_CODE_412"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2970
    const/16 v2, 0x19c

    goto/16 :goto_0

    .line 2950
    .end local v18    # "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    .restart local v10    # "curTime":J
    :cond_8
    :try_start_2
    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mSimservs:Lcom/mediatek/simservs/client/SimServs;
    invoke-static {}, Lcom/android/internal/telephony/MMTelSSTransport;->access$500()Lcom/mediatek/simservs/client/SimServs;

    move-result-object v2

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mNetwork:Landroid/net/Network;
    invoke-static {v4}, Lcom/android/internal/telephony/MMTelSSTransport;->access$400(Lcom/android/internal/telephony/MMTelSSTransport;)Landroid/net/Network;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/mediatek/simservs/client/SimServs;->getCommunicationWaiting(ZLandroid/net/Network;)Lcom/mediatek/simservs/client/CommunicationWaiting;

    move-result-object v12

    .line 2951
    .restart local v12    # "cw":Lcom/mediatek/simservs/client/CommunicationWaiting;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCwCache:Lcom/mediatek/simservs/client/CommunicationWaiting;
    invoke-static {v2, v12}, Lcom/android/internal/telephony/MMTelSSTransport;->access$702(Lcom/android/internal/telephony/MMTelSSTransport;Lcom/mediatek/simservs/client/CommunicationWaiting;)Lcom/mediatek/simservs/client/CommunicationWaiting;

    .line 2952
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCwCachePhoneId:I
    invoke-static {v2, v8}, Lcom/android/internal/telephony/MMTelSSTransport;->access$902(Lcom/android/internal/telephony/MMTelSSTransport;I)I

    .line 2953
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCwCacheLastQueried:J
    invoke-static {v2, v10, v11}, Lcom/android/internal/telephony/MMTelSSTransport;->access$802(Lcom/android/internal/telephony/MMTelSSTransport;J)J

    .line 2954
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleSetCW(): new mCwCache = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCwCache:Lcom/mediatek/simservs/client/CommunicationWaiting;
    invoke-static {v4}, Lcom/android/internal/telephony/MMTelSSTransport;->access$700(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/mediatek/simservs/client/CommunicationWaiting;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", curTime = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Lcom/mediatek/simservs/xcap/XcapException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1

    .line 2987
    .end local v10    # "curTime":J
    .end local v12    # "cw":Lcom/mediatek/simservs/client/CommunicationWaiting;
    :catch_1
    move-exception v13

    .line 2990
    .local v13, "e":Ljava/lang/Exception;
    const-string v2, "MMTelSS"

    const-string v3, "handleSetCW():Start to Print Stack Trace"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2991
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    const/4 v3, 0x0

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCwCache:Lcom/mediatek/simservs/client/CommunicationWaiting;
    invoke-static {v2, v3}, Lcom/android/internal/telephony/MMTelSSTransport;->access$702(Lcom/android/internal/telephony/MMTelSSTransport;Lcom/mediatek/simservs/client/CommunicationWaiting;)Lcom/mediatek/simservs/client/CommunicationWaiting;

    .line 2992
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    const/4 v3, -0x1

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCwCachePhoneId:I
    invoke-static {v2, v3}, Lcom/android/internal/telephony/MMTelSSTransport;->access$902(Lcom/android/internal/telephony/MMTelSSTransport;I)I

    .line 2993
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    const-wide/16 v4, 0x0

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCwCacheLastQueried:J
    invoke-static {v2, v4, v5}, Lcom/android/internal/telephony/MMTelSSTransport;->access$802(Lcom/android/internal/telephony/MMTelSSTransport;J)J

    .line 2995
    invoke-virtual {v13}, Ljava/lang/Exception;->printStackTrace()V

    .line 2996
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v2, :cond_4

    .line 2997
    const/4 v2, 0x2

    invoke-static {v2}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v9

    .line 2998
    .local v9, "ce":Lcom/android/internal/telephony/CommandException;
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v3, 0x0

    invoke-static {v2, v3, v9}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 2999
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 3000
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 3001
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->releaseNetwork()V

    .line 3003
    :cond_9
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 2961
    .end local v9    # "ce":Lcom/android/internal/telephony/CommandException;
    .end local v13    # "e":Ljava/lang/Exception;
    .restart local v10    # "curTime":J
    .restart local v12    # "cw":Lcom/mediatek/simservs/client/CommunicationWaiting;
    :cond_a
    const/4 v2, 0x0

    :try_start_3
    invoke-virtual {v12, v2}, Lcom/mediatek/simservs/client/CommunicationWaiting;->setActive(Z)V
    :try_end_3
    .catch Lcom/mediatek/simservs/xcap/XcapException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_2

    .line 2972
    .end local v10    # "curTime":J
    .end local v12    # "cw":Lcom/mediatek/simservs/client/CommunicationWaiting;
    .restart local v18    # "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    :cond_b
    const-string v2, "MMTelSS"

    const-string v3, "handleSetCW(): XcapException"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2973
    invoke-virtual/range {v18 .. v18}, Lcom/mediatek/simservs/xcap/XcapException;->printStackTrace()V

    .line 2974
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v2, :cond_4

    .line 2975
    invoke-virtual/range {v18 .. v18}, Lcom/mediatek/simservs/xcap/XcapException;->isConnectionError()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 2976
    const-string v2, "MMTelSS"

    const-string v3, "handleSetCW(): xcapException.isConnectionError()"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2977
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v3, 0x0

    new-instance v4, Ljava/net/UnknownHostException;

    invoke-direct {v4}, Ljava/net/UnknownHostException;-><init>()V

    invoke-static {v2, v3, v4}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 2981
    :goto_3
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 2982
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v2

    if-eqz v2, :cond_c

    .line 2983
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->releaseNetwork()V

    .line 2985
    :cond_c
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 2979
    :cond_d
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v3, 0x0

    move-object/from16 v0, v18

    invoke-static {v2, v3, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    goto :goto_3
.end method

.method public hasExtraMedia(Ljava/util/List;I)Z
    .locals 3
    .param p2, "serviceClass"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)Z"
        }
    .end annotation

    .prologue
    .local p1, "mediaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x1

    .line 616
    const/4 v0, 0x0

    .line 617
    .local v0, "found":Z
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->containSpecificMedia(Ljava/util/List;I)Z

    move-result v0

    .line 618
    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v1, :cond_0

    .line 621
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isBAIC(Lcom/mediatek/simservs/client/policy/Conditions;I)Z
    .locals 2
    .param p1, "cond"    # Lcom/mediatek/simservs/client/policy/Conditions;
    .param p2, "serviceClass"    # I

    .prologue
    const/4 v0, 0x1

    .line 649
    if-nez p1, :cond_1

    .line 657
    :cond_0
    :goto_0
    return v0

    .line 651
    :cond_1
    invoke-virtual {p1}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendInternational()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p1}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendRoaming()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p1}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendAnonymous()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p1}, Lcom/mediatek/simservs/client/policy/Conditions;->getMedias()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->containSpecificMedia(Ljava/util/List;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 657
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isBAOC(Lcom/mediatek/simservs/client/policy/Conditions;I)Z
    .locals 2
    .param p1, "cond"    # Lcom/mediatek/simservs/client/policy/Conditions;
    .param p2, "serviceClass"    # I

    .prologue
    const/4 v0, 0x1

    .line 636
    if-nez p1, :cond_1

    .line 643
    :cond_0
    :goto_0
    return v0

    .line 638
    :cond_1
    invoke-virtual {p1}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendInternational()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p1}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendRoaming()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p1}, Lcom/mediatek/simservs/client/policy/Conditions;->getMedias()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->containSpecificMedia(Ljava/util/List;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 643
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public run()V
    .locals 0

    .prologue
    .line 593
    return-void
.end method
