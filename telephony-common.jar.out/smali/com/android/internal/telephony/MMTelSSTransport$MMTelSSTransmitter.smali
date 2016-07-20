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

    .line 4720
    const/4 v5, 0x0

    .line 4721
    .local v5, "timeSlot":[J
    if-eqz p1, :cond_0

    .line 4722
    const-string v6, ","

    invoke-virtual {p1, v6, v8}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v4

    .line 4723
    .local v4, "timeArray":[Ljava/lang/String;
    array-length v6, v4

    if-ne v6, v8, :cond_0

    .line 4724
    new-array v5, v8, [J

    .line 4725
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v8, :cond_0

    .line 4726
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v6, "HH:mm"

    invoke-direct {v1, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 4727
    .local v1, "dateFormat":Ljava/text/SimpleDateFormat;
    const-string v6, "GMT+8"

    invoke-static {v6}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 4729
    :try_start_0
    aget-object v6, v4, v3

    invoke-virtual {v1, v6}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 4730
    .local v0, "date":Ljava/util/Date;
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    aput-wide v6, v5, v3
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4725
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4731
    .end local v0    # "date":Ljava/util/Date;
    :catch_0
    move-exception v2

    .line 4732
    .local v2, "e":Ljava/text/ParseException;
    invoke-virtual {v2}, Ljava/text/ParseException;->printStackTrace()V

    .line 4733
    const/4 v6, 0x0

    .line 4738
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
    .line 4742
    const/4 v3, 0x0

    .line 4743
    .local v3, "timeSlotString":Ljava/lang/String;
    if-eqz p1, :cond_0

    array-length v4, p1

    const/4 v5, 0x2

    if-eq v4, v5, :cond_1

    .line 4744
    :cond_0
    const/4 v4, 0x0

    .line 4756
    :goto_0
    return-object v4

    .line 4746
    :cond_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v4, p1

    if-ge v2, v4, :cond_3

    .line 4747
    new-instance v0, Ljava/util/Date;

    aget-wide v4, p1, v2

    invoke-direct {v0, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 4748
    .local v0, "date":Ljava/util/Date;
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v4, "HH:mm"

    invoke-direct {v1, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 4749
    .local v1, "dateFormat":Ljava/text/SimpleDateFormat;
    const-string v4, "GMT+8"

    invoke-static {v4}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 4750
    if-nez v2, :cond_2

    .line 4751
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .line 4746
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 4753
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

    .line 4756
    goto :goto_0
.end method

.method public copyOldRuleToNewRuleSet(Lcom/mediatek/simservs/client/policy/Rule;Lcom/mediatek/simservs/client/policy/RuleSet;II)Lcom/mediatek/simservs/client/policy/Rule;
    .locals 11
    .param p1, "oldRule"    # Lcom/mediatek/simservs/client/policy/Rule;
    .param p2, "newRuleSet"    # Lcom/mediatek/simservs/client/policy/RuleSet;
    .param p3, "cfAction"    # I
    .param p4, "cfReason"    # I

    .prologue
    .line 2299
    invoke-virtual {p1}, Lcom/mediatek/simservs/client/policy/Rule;->getConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v5

    .line 2300
    .local v5, "oldCond":Lcom/mediatek/simservs/client/policy/Conditions;
    invoke-virtual {p1}, Lcom/mediatek/simservs/client/policy/Rule;->getActions()Lcom/mediatek/simservs/client/policy/Actions;

    move-result-object v4

    .line 2302
    .local v4, "oldAction":Lcom/mediatek/simservs/client/policy/Actions;
    iget-object v8, p1, Lcom/mediatek/simservs/client/policy/Rule;->mId:Ljava/lang/String;

    invoke-virtual {p2, v8}, Lcom/mediatek/simservs/client/policy/RuleSet;->createNewRule(Ljava/lang/String;)Lcom/mediatek/simservs/client/policy/Rule;

    move-result-object v3

    .line 2303
    .local v3, "newRule":Lcom/mediatek/simservs/client/policy/Rule;
    invoke-virtual {v3}, Lcom/mediatek/simservs/client/policy/Rule;->createConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v2

    .line 2304
    .local v2, "newCond":Lcom/mediatek/simservs/client/policy/Conditions;
    invoke-virtual {v3}, Lcom/mediatek/simservs/client/policy/Rule;->createActions()Lcom/mediatek/simservs/client/policy/Actions;

    move-result-object v1

    .line 2306
    .local v1, "newAction":Lcom/mediatek/simservs/client/policy/Actions;
    if-eqz v5, :cond_b

    .line 2307
    invoke-virtual {v5}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendBusy()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 2308
    invoke-virtual {v2}, Lcom/mediatek/simservs/client/policy/Conditions;->addBusy()V

    .line 2310
    :cond_0
    invoke-virtual {v5}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendCommunicationDiverted()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 2311
    invoke-virtual {v2}, Lcom/mediatek/simservs/client/policy/Conditions;->addCommunicationDiverted()V

    .line 2313
    :cond_1
    invoke-virtual {v5}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendInternational()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 2314
    invoke-virtual {v2}, Lcom/mediatek/simservs/client/policy/Conditions;->addInternational()V

    .line 2316
    :cond_2
    invoke-virtual {v5}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendInternationalExHc()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 2317
    invoke-virtual {v2}, Lcom/mediatek/simservs/client/policy/Conditions;->addInternationalExHc()V

    .line 2319
    :cond_3
    invoke-virtual {v5}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendNoAnswer()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 2320
    invoke-virtual {v2}, Lcom/mediatek/simservs/client/policy/Conditions;->addNoAnswer()V

    .line 2322
    :cond_4
    invoke-virtual {v5}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendNotReachable()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 2323
    invoke-virtual {v2}, Lcom/mediatek/simservs/client/policy/Conditions;->addNotReachable()V

    .line 2325
    :cond_5
    invoke-virtual {v5}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendNotRegistered()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 2326
    invoke-virtual {v2}, Lcom/mediatek/simservs/client/policy/Conditions;->addNotRegistered()V

    .line 2328
    :cond_6
    invoke-virtual {v5}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendPresenceStatus()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 2329
    invoke-virtual {v2}, Lcom/mediatek/simservs/client/policy/Conditions;->addPresenceStatus()V

    .line 2331
    :cond_7
    invoke-virtual {v5}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendRoaming()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 2332
    invoke-virtual {v2}, Lcom/mediatek/simservs/client/policy/Conditions;->addRoaming()V

    .line 2334
    :cond_8
    invoke-virtual {v5}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendRuleDeactivated()Z

    move-result v8

    if-eqz v8, :cond_9

    .line 2335
    invoke-virtual {v2}, Lcom/mediatek/simservs/client/policy/Conditions;->addRuleDeactivated()V

    .line 2338
    :cond_9
    invoke-virtual {v5}, Lcom/mediatek/simservs/client/policy/Conditions;->getMedias()Ljava/util/List;

    move-result-object v7

    .line 2339
    .local v7, "oldMediaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v7, :cond_a

    .line 2340
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    if-ge v0, v8, :cond_a

    .line 2341
    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v2, v8}, Lcom/mediatek/simservs/client/policy/Conditions;->addMedia(Ljava/lang/String;)V

    .line 2340
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2345
    .end local v0    # "i":I
    :cond_a
    invoke-virtual {v5}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendTime()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/mediatek/simservs/client/policy/Conditions;->addTime(Ljava/lang/String;)V

    .line 2348
    .end local v7    # "oldMediaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_b
    invoke-virtual {v4}, Lcom/mediatek/simservs/client/policy/Actions;->getFowardTo()Lcom/mediatek/simservs/client/policy/ForwardTo;

    move-result-object v6

    .line 2349
    .local v6, "oldForward":Lcom/mediatek/simservs/client/policy/ForwardTo;
    if-eqz v6, :cond_d

    .line 2350
    const/4 v8, 0x4

    if-ne p3, v8, :cond_c

    if-nez p4, :cond_c

    .line 2352
    const-string v8, "MMTelSS"

    const-string v9, "No need to append the original numebr in Erasure."

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2353
    const-string v8, ""

    invoke-virtual {v6}, Lcom/mediatek/simservs/client/policy/ForwardTo;->isNotifyCaller()Z

    move-result v9

    invoke-virtual {v1, v8, v9}, Lcom/mediatek/simservs/client/policy/Actions;->setFowardTo(Ljava/lang/String;Z)V

    .line 2357
    :goto_1
    invoke-virtual {v1}, Lcom/mediatek/simservs/client/policy/Actions;->getFowardTo()Lcom/mediatek/simservs/client/policy/ForwardTo;

    move-result-object v8

    invoke-virtual {v6}, Lcom/mediatek/simservs/client/policy/ForwardTo;->isRevealIdentityToCaller()Z

    move-result v9

    invoke-virtual {v8, v9}, Lcom/mediatek/simservs/client/policy/ForwardTo;->setRevealIdentityToCaller(Z)V

    .line 2359
    invoke-virtual {v1}, Lcom/mediatek/simservs/client/policy/Actions;->getFowardTo()Lcom/mediatek/simservs/client/policy/ForwardTo;

    move-result-object v8

    invoke-virtual {v6}, Lcom/mediatek/simservs/client/policy/ForwardTo;->isRevealIdentityToTarget()Z

    move-result v9

    invoke-virtual {v8, v9}, Lcom/mediatek/simservs/client/policy/ForwardTo;->setRevealIdentityToTarget(Z)V

    .line 2366
    :goto_2
    invoke-virtual {v4}, Lcom/mediatek/simservs/client/policy/Actions;->isAllow()Z

    move-result v8

    invoke-virtual {v1, v8}, Lcom/mediatek/simservs/client/policy/Actions;->setAllow(Z)V

    .line 2367
    return-object v3

    .line 2355
    :cond_c
    invoke-virtual {v6}, Lcom/mediatek/simservs/client/policy/ForwardTo;->getTarget()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6}, Lcom/mediatek/simservs/client/policy/ForwardTo;->isNotifyCaller()Z

    move-result v9

    invoke-virtual {v1, v8, v9}, Lcom/mediatek/simservs/client/policy/Actions;->setFowardTo(Ljava/lang/String;Z)V

    goto :goto_1

    .line 2362
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
    .line 2401
    invoke-virtual {p1}, Lcom/mediatek/simservs/client/policy/Rule;->getConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v6

    .line 2402
    .local v6, "oldCond":Lcom/mediatek/simservs/client/policy/Conditions;
    invoke-virtual {p1}, Lcom/mediatek/simservs/client/policy/Rule;->getActions()Lcom/mediatek/simservs/client/policy/Actions;

    move-result-object v5

    .line 2452
    .local v5, "oldAction":Lcom/mediatek/simservs/client/policy/Actions;
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Lcom/mediatek/simservs/client/policy/Conditions;->getMedias()Ljava/util/List;

    move-result-object v9

    invoke-virtual {p0, v9, p3}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->hasExtraMedia(Ljava/util/List;I)Z

    move-result v9

    if-nez v9, :cond_0

    .line 2455
    const/4 v4, 0x0

    .line 2540
    :goto_0
    return-object v4

    .line 2458
    :cond_0
    iget-object v9, p1, Lcom/mediatek/simservs/client/policy/Rule;->mId:Ljava/lang/String;

    invoke-virtual {p2, v9}, Lcom/mediatek/simservs/client/policy/RuleSet;->createNewRule(Ljava/lang/String;)Lcom/mediatek/simservs/client/policy/Rule;

    move-result-object v4

    .line 2459
    .local v4, "newRule":Lcom/mediatek/simservs/client/policy/Rule;
    invoke-virtual {v4}, Lcom/mediatek/simservs/client/policy/Rule;->createConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v3

    .line 2460
    .local v3, "newCond":Lcom/mediatek/simservs/client/policy/Conditions;
    invoke-virtual {v4}, Lcom/mediatek/simservs/client/policy/Rule;->createActions()Lcom/mediatek/simservs/client/policy/Actions;

    move-result-object v2

    .line 2462
    .local v2, "newAction":Lcom/mediatek/simservs/client/policy/Actions;
    if-eqz v6, :cond_e

    .line 2463
    invoke-virtual {v6}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendBusy()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 2464
    invoke-virtual {v3}, Lcom/mediatek/simservs/client/policy/Conditions;->addBusy()V

    .line 2466
    :cond_1
    invoke-virtual {v6}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendCommunicationDiverted()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 2467
    invoke-virtual {v3}, Lcom/mediatek/simservs/client/policy/Conditions;->addCommunicationDiverted()V

    .line 2469
    :cond_2
    invoke-virtual {v6}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendInternational()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 2470
    invoke-virtual {v3}, Lcom/mediatek/simservs/client/policy/Conditions;->addInternational()V

    .line 2472
    :cond_3
    invoke-virtual {v6}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendInternationalExHc()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 2473
    invoke-virtual {v3}, Lcom/mediatek/simservs/client/policy/Conditions;->addInternationalExHc()V

    .line 2475
    :cond_4
    invoke-virtual {v6}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendNoAnswer()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 2476
    invoke-virtual {v3}, Lcom/mediatek/simservs/client/policy/Conditions;->addNoAnswer()V

    .line 2478
    :cond_5
    invoke-virtual {v6}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendNotReachable()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 2479
    invoke-virtual {v3}, Lcom/mediatek/simservs/client/policy/Conditions;->addNotReachable()V

    .line 2481
    :cond_6
    invoke-virtual {v6}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendNotRegistered()Z

    move-result v9

    if-eqz v9, :cond_7

    .line 2482
    invoke-virtual {v3}, Lcom/mediatek/simservs/client/policy/Conditions;->addNotRegistered()V

    .line 2484
    :cond_7
    invoke-virtual {v6}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendPresenceStatus()Z

    move-result v9

    if-eqz v9, :cond_8

    .line 2485
    invoke-virtual {v3}, Lcom/mediatek/simservs/client/policy/Conditions;->addPresenceStatus()V

    .line 2487
    :cond_8
    invoke-virtual {v6}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendRoaming()Z

    move-result v9

    if-eqz v9, :cond_9

    .line 2488
    invoke-virtual {v3}, Lcom/mediatek/simservs/client/policy/Conditions;->addRoaming()V

    .line 2490
    :cond_9
    invoke-virtual {v6}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendRuleDeactivated()Z

    move-result v9

    if-eqz v9, :cond_a

    .line 2491
    invoke-virtual {v3}, Lcom/mediatek/simservs/client/policy/Conditions;->addRuleDeactivated()V

    .line 2494
    :cond_a
    invoke-virtual {v6}, Lcom/mediatek/simservs/client/policy/Conditions;->getMedias()Ljava/util/List;

    move-result-object v8

    .line 2495
    .local v8, "oldMediaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v8, :cond_c

    .line 2496
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    if-ge v1, v9, :cond_c

    .line 2497
    invoke-virtual {p0, p3}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->getMediaType(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_b

    .line 2498
    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v3, v9}, Lcom/mediatek/simservs/client/policy/Conditions;->addMedia(Ljava/lang/String;)V

    .line 2496
    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2503
    .end local v1    # "i":I
    :cond_c
    invoke-virtual {v6}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendTime()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Lcom/mediatek/simservs/client/policy/Conditions;->addTime(Ljava/lang/String;)V

    .line 2521
    .end local v8    # "oldMediaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_d
    invoke-virtual {v5}, Lcom/mediatek/simservs/client/policy/Actions;->getFowardTo()Lcom/mediatek/simservs/client/policy/ForwardTo;

    move-result-object v7

    .line 2522
    .local v7, "oldForward":Lcom/mediatek/simservs/client/policy/ForwardTo;
    if-eqz v7, :cond_11

    .line 2523
    const/4 v9, 0x4

    move/from16 v0, p5

    if-ne v0, v9, :cond_10

    if-nez p6, :cond_10

    .line 2525
    const-string v9, "MMTelSS"

    const-string v10, "No need to append the original numebr in Erasure."

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2526
    const-string v9, ""

    invoke-virtual {v7}, Lcom/mediatek/simservs/client/policy/ForwardTo;->isNotifyCaller()Z

    move-result v10

    invoke-virtual {v2, v9, v10}, Lcom/mediatek/simservs/client/policy/Actions;->setFowardTo(Ljava/lang/String;Z)V

    .line 2530
    :goto_2
    invoke-virtual {v2}, Lcom/mediatek/simservs/client/policy/Actions;->getFowardTo()Lcom/mediatek/simservs/client/policy/ForwardTo;

    move-result-object v9

    invoke-virtual {v7}, Lcom/mediatek/simservs/client/policy/ForwardTo;->isRevealIdentityToCaller()Z

    move-result v10

    invoke-virtual {v9, v10}, Lcom/mediatek/simservs/client/policy/ForwardTo;->setRevealIdentityToCaller(Z)V

    .line 2532
    invoke-virtual {v2}, Lcom/mediatek/simservs/client/policy/Actions;->getFowardTo()Lcom/mediatek/simservs/client/policy/ForwardTo;

    move-result-object v9

    invoke-virtual {v7}, Lcom/mediatek/simservs/client/policy/ForwardTo;->isRevealIdentityToTarget()Z

    move-result v10

    invoke-virtual {v9, v10}, Lcom/mediatek/simservs/client/policy/ForwardTo;->setRevealIdentityToTarget(Z)V

    .line 2538
    :goto_3
    invoke-virtual {v5}, Lcom/mediatek/simservs/client/policy/Actions;->isAllow()Z

    move-result v9

    invoke-virtual {v2, v9}, Lcom/mediatek/simservs/client/policy/Actions;->setAllow(Z)V

    goto/16 :goto_0

    .line 2507
    .end local v7    # "oldForward":Lcom/mediatek/simservs/client/policy/ForwardTo;
    :cond_e
    invoke-static/range {p4 .. p4}, Lcom/android/internal/telephony/MMTelSSUtils;->isOp06IccCard(I)Z

    move-result v9

    if-nez v9, :cond_d

    invoke-static/range {p4 .. p4}, Lcom/android/internal/telephony/MMTelSSUtils;->isOp07IccCard(I)Z

    move-result v9

    if-nez v9, :cond_d

    .line 2509
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 2510
    .restart local v8    # "oldMediaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v9, "audio"

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2511
    const-string v9, "video"

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2512
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_4
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    if-ge v1, v9, :cond_d

    .line 2513
    invoke-virtual {p0, p3}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->getMediaType(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_f

    .line 2515
    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v3, v9}, Lcom/mediatek/simservs/client/policy/Conditions;->addMedia(Ljava/lang/String;)V

    .line 2512
    :cond_f
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 2528
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

    .line 2535
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
    .line 2372
    const/4 v0, 0x0

    .line 2373
    .local v0, "newAction":Lcom/mediatek/simservs/client/policy/Actions;
    const/4 v1, 0x0

    .line 2374
    .local v1, "newCond":Lcom/mediatek/simservs/client/policy/Conditions;
    invoke-virtual {p1}, Lcom/mediatek/simservs/client/policy/Rule;->getActions()Lcom/mediatek/simservs/client/policy/Actions;

    move-result-object v3

    .line 2375
    .local v3, "oldAction":Lcom/mediatek/simservs/client/policy/Actions;
    invoke-virtual {p1}, Lcom/mediatek/simservs/client/policy/Rule;->getConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v4

    .line 2377
    .local v4, "oldCond":Lcom/mediatek/simservs/client/policy/Conditions;
    iget-object v5, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget v5, v5, Lcom/android/internal/telephony/MMTelSSTransport;->mDisableRuleMode:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2

    .line 2378
    invoke-virtual {v3}, Lcom/mediatek/simservs/client/policy/Actions;->isAllow()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v4}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendRuleDeactivated()Z

    move-result v5

    if-nez v5, :cond_1

    .line 2396
    :cond_0
    :goto_0
    return-void

    .line 2381
    :cond_1
    invoke-virtual {p0, p1, p2, p4, p5}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->copyOldRuleToNewRuleSet(Lcom/mediatek/simservs/client/policy/Rule;Lcom/mediatek/simservs/client/policy/RuleSet;II)Lcom/mediatek/simservs/client/policy/Rule;

    goto :goto_0

    .line 2383
    :cond_2
    iget-object v5, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget v5, v5, Lcom/android/internal/telephony/MMTelSSTransport;->mDisableRuleMode:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_3

    .line 2384
    invoke-virtual {p0, p1, p2, p4, p5}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->copyOldRuleToNewRuleSet(Lcom/mediatek/simservs/client/policy/Rule;Lcom/mediatek/simservs/client/policy/RuleSet;II)Lcom/mediatek/simservs/client/policy/Rule;

    move-result-object v2

    .line 2385
    .local v2, "newRule":Lcom/mediatek/simservs/client/policy/Rule;
    if-eqz v2, :cond_0

    invoke-virtual {v3}, Lcom/mediatek/simservs/client/policy/Actions;->isAllow()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v4}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendRuleDeactivated()Z

    move-result v5

    if-nez v5, :cond_0

    .line 2386
    invoke-virtual {v2}, Lcom/mediatek/simservs/client/policy/Rule;->createConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v1

    .line 2387
    invoke-virtual {v1}, Lcom/mediatek/simservs/client/policy/Conditions;->addRuleDeactivated()V

    goto :goto_0

    .line 2389
    .end local v2    # "newRule":Lcom/mediatek/simservs/client/policy/Rule;
    :cond_3
    iget-object v5, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget v5, v5, Lcom/android/internal/telephony/MMTelSSTransport;->mDisableRuleMode:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_0

    .line 2390
    invoke-virtual {p0, p1, p2, p4, p5}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->copyOldRuleToNewRuleSet(Lcom/mediatek/simservs/client/policy/Rule;Lcom/mediatek/simservs/client/policy/RuleSet;II)Lcom/mediatek/simservs/client/policy/Rule;

    move-result-object v2

    .line 2391
    .restart local v2    # "newRule":Lcom/mediatek/simservs/client/policy/Rule;
    if-eqz v2, :cond_0

    invoke-virtual {v3}, Lcom/mediatek/simservs/client/policy/Actions;->isAllow()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v4}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendRuleDeactivated()Z

    move-result v5

    if-nez v5, :cond_0

    .line 2392
    invoke-virtual {v2}, Lcom/mediatek/simservs/client/policy/Rule;->createActions()Lcom/mediatek/simservs/client/policy/Actions;

    move-result-object v0

    .line 2393
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
    .line 4675
    invoke-virtual {p2, p9}, Lcom/mediatek/simservs/client/policy/RuleSet;->createNewRule(Ljava/lang/String;)Lcom/mediatek/simservs/client/policy/Rule;

    move-result-object v2

    .line 4676
    .local v2, "cfRule":Lcom/mediatek/simservs/client/policy/Rule;
    invoke-virtual {v2}, Lcom/mediatek/simservs/client/policy/Rule;->createConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v1

    .line 4677
    .local v1, "cfCond":Lcom/mediatek/simservs/client/policy/Conditions;
    invoke-virtual {v2}, Lcom/mediatek/simservs/client/policy/Rule;->createActions()Lcom/mediatek/simservs/client/policy/Actions;

    move-result-object v0

    .line 4678
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

    .line 4683
    const/4 v3, 0x1

    if-ne p5, v3, :cond_3

    .line 4684
    const-string v3, "audio"

    invoke-virtual {v1, v3}, Lcom/mediatek/simservs/client/policy/Conditions;->addMedia(Ljava/lang/String;)V

    .line 4693
    :cond_0
    :goto_0
    const/4 v3, 0x1

    if-ne p3, v3, :cond_5

    .line 4694
    invoke-virtual {v1}, Lcom/mediatek/simservs/client/policy/Conditions;->addBusy()V

    .line 4704
    :cond_1
    :goto_1
    invoke-virtual {v1, p8}, Lcom/mediatek/simservs/client/policy/Conditions;->addTime(Ljava/lang/String;)V

    .line 4705
    invoke-static {}, Lcom/android/internal/telephony/MMTelSSUtils;->isNotifyCallerTest()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 4706
    const/4 v3, 0x0

    invoke-virtual {v0, p6, v3}, Lcom/mediatek/simservs/client/policy/Actions;->setFowardTo(Ljava/lang/String;Z)V

    .line 4710
    :goto_2
    invoke-virtual {v0}, Lcom/mediatek/simservs/client/policy/Actions;->getFowardTo()Lcom/mediatek/simservs/client/policy/ForwardTo;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/mediatek/simservs/client/policy/ForwardTo;->setRevealIdentityToCaller(Z)V

    .line 4711
    invoke-virtual {v0}, Lcom/mediatek/simservs/client/policy/Actions;->getFowardTo()Lcom/mediatek/simservs/client/policy/ForwardTo;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/mediatek/simservs/client/policy/ForwardTo;->setRevealIdentityToTarget(Z)V

    .line 4713
    if-eqz p10, :cond_2

    .line 4714
    invoke-virtual {p1, p9}, Lcom/mediatek/simservs/client/CommunicationDiversion;->saveRule(Ljava/lang/String;)V

    .line 4716
    :cond_2
    const/4 v3, 0x1

    return v3

    .line 4685
    :cond_3
    const/16 v3, 0x200

    if-ne p5, v3, :cond_4

    .line 4686
    const-string v3, "video"

    invoke-virtual {v1, v3}, Lcom/mediatek/simservs/client/policy/Conditions;->addMedia(Ljava/lang/String;)V

    goto :goto_0

    .line 4687
    :cond_4
    if-nez p5, :cond_0

    .line 4688
    const-string v3, "MMTelSS"

    const-string v4, "if op01,do not add video!"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4689
    const-string v3, "audio"

    invoke-virtual {v1, v3}, Lcom/mediatek/simservs/client/policy/Conditions;->addMedia(Ljava/lang/String;)V

    goto :goto_0

    .line 4695
    :cond_5
    const/4 v3, 0x2

    if-ne p3, v3, :cond_6

    .line 4696
    invoke-virtual {v1}, Lcom/mediatek/simservs/client/policy/Conditions;->addNoAnswer()V

    goto :goto_1

    .line 4697
    :cond_6
    const/4 v3, 0x3

    if-ne p3, v3, :cond_7

    .line 4698
    invoke-virtual {v1}, Lcom/mediatek/simservs/client/policy/Conditions;->addNotReachable()V

    goto :goto_1

    .line 4699
    :cond_7
    const/4 v3, 0x6

    if-ne p3, v3, :cond_8

    .line 4700
    invoke-virtual {v1}, Lcom/mediatek/simservs/client/policy/Conditions;->addNotRegistered()V

    goto :goto_1

    .line 4701
    :cond_8
    if-nez p3, :cond_1

    goto :goto_1

    .line 4708
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
    .line 2142
    invoke-virtual/range {p3 .. p3}, Lcom/mediatek/simservs/client/policy/Rule;->getConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v8

    .line 2143
    .local v8, "cond":Lcom/mediatek/simservs/client/policy/Conditions;
    invoke-virtual/range {p3 .. p3}, Lcom/mediatek/simservs/client/policy/Rule;->getActions()Lcom/mediatek/simservs/client/policy/Actions;

    move-result-object v2

    .line 2144
    .local v2, "action":Lcom/mediatek/simservs/client/policy/Actions;
    const/4 v5, 0x1

    .line 2145
    .local v5, "cbAllow":Z
    const/4 v3, 0x0

    .line 2148
    .local v3, "addRuleDeactivatedNode":Z
    const-string v12, "persist.radio.ss.xrdm"

    const/4 v13, 0x2

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 2149
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

    .line 2150
    iget-object v12, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    iput v13, v12, Lcom/android/internal/telephony/MMTelSSTransport;->mDisableRuleMode:I

    .line 2152
    const/4 v12, 0x1

    move/from16 v0, p5

    if-ne v0, v12, :cond_5

    .line 2154
    const/4 v5, 0x0

    .line 2172
    :cond_0
    :goto_0
    move-object/from16 v0, p2

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Lcom/mediatek/simservs/client/policy/RuleSet;->createNewRule(Ljava/lang/String;)Lcom/mediatek/simservs/client/policy/Rule;

    move-result-object v7

    .line 2173
    .local v7, "cbRule":Lcom/mediatek/simservs/client/policy/Rule;
    invoke-virtual {v7}, Lcom/mediatek/simservs/client/policy/Rule;->createConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v6

    .line 2174
    .local v6, "cbCond":Lcom/mediatek/simservs/client/policy/Conditions;
    invoke-virtual {v7}, Lcom/mediatek/simservs/client/policy/Rule;->createActions()Lcom/mediatek/simservs/client/policy/Actions;

    move-result-object v4

    .line 2177
    .local v4, "cbAction":Lcom/mediatek/simservs/client/policy/Actions;
    invoke-static/range {p10 .. p10}, Lcom/android/internal/telephony/MMTelSSUtils;->isOp06IccCard(I)Z

    move-result v12

    if-nez v12, :cond_1

    invoke-static/range {p10 .. p10}, Lcom/android/internal/telephony/MMTelSSUtils;->isOp07IccCard(I)Z

    move-result v12

    if-nez v12, :cond_1

    .line 2179
    const/4 v12, 0x1

    move/from16 v0, p6

    if-ne v0, v12, :cond_9

    .line 2180
    const-string v12, "audio"

    invoke-virtual {v6, v12}, Lcom/mediatek/simservs/client/policy/Conditions;->addMedia(Ljava/lang/String;)V

    .line 2193
    :cond_1
    :goto_1
    iget-object v12, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget v12, v12, Lcom/android/internal/telephony/MMTelSSTransport;->mDisableRuleMode:I

    const/4 v13, 0x2

    if-ne v12, v13, :cond_2

    const/4 v12, 0x1

    if-ne v3, v12, :cond_2

    .line 2194
    invoke-virtual {v6}, Lcom/mediatek/simservs/client/policy/Conditions;->addRuleDeactivated()V

    .line 2197
    :cond_2
    const-string v12, "IR"

    move-object/from16 v0, p4

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_b

    .line 2198
    invoke-virtual {v6}, Lcom/mediatek/simservs/client/policy/Conditions;->addRoaming()V

    .line 2199
    invoke-virtual {v4, v5}, Lcom/mediatek/simservs/client/policy/Actions;->setAllow(Z)V

    .line 2214
    :cond_3
    :goto_2
    if-eqz p8, :cond_4

    const/4 v12, 0x1

    move/from16 v0, p9

    if-ne v12, v0, :cond_4

    .line 2215
    move-object/from16 v0, p1

    instance-of v12, v0, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;

    if-eqz v12, :cond_f

    move-object/from16 v10, p1

    .line 2216
    check-cast v10, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;

    .line 2217
    .local v10, "ocb":Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;
    move-object/from16 v0, p7

    invoke-virtual {v10, v0}, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;->saveRule(Ljava/lang/String;)V

    .line 2224
    .end local v10    # "ocb":Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;
    :cond_4
    :goto_3
    const/4 v12, 0x1

    .end local v4    # "cbAction":Lcom/mediatek/simservs/client/policy/Actions;
    .end local v6    # "cbCond":Lcom/mediatek/simservs/client/policy/Conditions;
    .end local v7    # "cbRule":Lcom/mediatek/simservs/client/policy/Rule;
    :goto_4
    return v12

    .line 2157
    :cond_5
    iget-object v12, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget v12, v12, Lcom/android/internal/telephony/MMTelSSTransport;->mDisableRuleMode:I

    const/4 v13, 0x1

    if-ne v12, v13, :cond_7

    .line 2158
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

    .line 2159
    if-eqz p8, :cond_6

    .line 2160
    const-string v12, "MMTelSS"

    const-string v13, "handleCreateNewRuleForExistingCB(): ERROR: DISABLE_MODE_DELETE_RULE but updateSingleRule"

    invoke-static {v12, v13}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2162
    :cond_6
    const/4 v12, 0x0

    goto :goto_4

    .line 2163
    :cond_7
    iget-object v12, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget v12, v12, Lcom/android/internal/telephony/MMTelSSTransport;->mDisableRuleMode:I

    const/4 v13, 0x2

    if-ne v12, v13, :cond_8

    .line 2165
    const/4 v3, 0x1

    .line 2166
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 2167
    :cond_8
    iget-object v12, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget v12, v12, Lcom/android/internal/telephony/MMTelSSTransport;->mDisableRuleMode:I

    const/4 v13, 0x3

    if-ne v12, v13, :cond_0

    .line 2168
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 2181
    .restart local v4    # "cbAction":Lcom/mediatek/simservs/client/policy/Actions;
    .restart local v6    # "cbCond":Lcom/mediatek/simservs/client/policy/Conditions;
    .restart local v7    # "cbRule":Lcom/mediatek/simservs/client/policy/Rule;
    :cond_9
    const/16 v12, 0x200

    move/from16 v0, p6

    if-ne v0, v12, :cond_a

    .line 2182
    const-string v12, "video"

    invoke-virtual {v6, v12}, Lcom/mediatek/simservs/client/policy/Conditions;->addMedia(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2183
    :cond_a
    if-nez p6, :cond_1

    .line 2184
    const-string v12, "MMTelSS"

    const-string v13, "if op01,do not add video!"

    invoke-static {v12, v13}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2185
    const-string v12, "audio"

    invoke-virtual {v6, v12}, Lcom/mediatek/simservs/client/policy/Conditions;->addMedia(Ljava/lang/String;)V

    .line 2186
    invoke-static/range {p10 .. p10}, Lcom/android/internal/telephony/MMTelSSUtils;->isOp01IccCard(I)Z

    move-result v12

    if-nez v12, :cond_1

    .line 2187
    const-string v12, "video"

    invoke-virtual {v6, v12}, Lcom/mediatek/simservs/client/policy/Conditions;->addMedia(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2200
    :cond_b
    const-string v12, "AI"

    move-object/from16 v0, p4

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_c

    .line 2202
    invoke-virtual {v4, v5}, Lcom/mediatek/simservs/client/policy/Actions;->setAllow(Z)V

    goto/16 :goto_2

    .line 2203
    :cond_c
    const-string v12, "OI"

    move-object/from16 v0, p4

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_d

    .line 2204
    invoke-virtual {v6}, Lcom/mediatek/simservs/client/policy/Conditions;->addInternational()V

    .line 2205
    invoke-virtual {v4, v5}, Lcom/mediatek/simservs/client/policy/Actions;->setAllow(Z)V

    goto/16 :goto_2

    .line 2206
    :cond_d
    const-string v12, "OX"

    move-object/from16 v0, p4

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_e

    .line 2207
    invoke-virtual {v6}, Lcom/mediatek/simservs/client/policy/Conditions;->addInternationalExHc()V

    .line 2208
    invoke-virtual {v4, v5}, Lcom/mediatek/simservs/client/policy/Actions;->setAllow(Z)V

    goto/16 :goto_2

    .line 2209
    :cond_e
    const-string v12, "AO"

    move-object/from16 v0, p4

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 2211
    invoke-virtual {v4, v5}, Lcom/mediatek/simservs/client/policy/Actions;->setAllow(Z)V

    goto/16 :goto_2

    .line 2218
    :cond_f
    move-object/from16 v0, p1

    instance-of v12, v0, Lcom/mediatek/simservs/client/IncomingCommunicationBarring;

    if-eqz v12, :cond_4

    move-object/from16 v9, p1

    .line 2219
    check-cast v9, Lcom/mediatek/simservs/client/IncomingCommunicationBarring;

    .line 2220
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
    .line 2008
    invoke-virtual/range {p3 .. p3}, Lcom/mediatek/simservs/client/policy/Rule;->getConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v16

    .line 2009
    .local v16, "cond":Lcom/mediatek/simservs/client/policy/Conditions;
    invoke-virtual/range {p3 .. p3}, Lcom/mediatek/simservs/client/policy/Rule;->getActions()Lcom/mediatek/simservs/client/policy/Actions;

    move-result-object v12

    .line 2012
    .local v12, "action":Lcom/mediatek/simservs/client/policy/Actions;
    const-string v5, "persist.radio.ss.xrdm"

    const/4 v6, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 2013
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

    .line 2014
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v5, Lcom/android/internal/telephony/MMTelSSTransport;->mDisableRuleMode:I

    .line 2017
    const/4 v5, 0x1

    move/from16 v0, p5

    if-eq v0, v5, :cond_0

    const/4 v5, 0x3

    move/from16 v0, p5

    if-ne v0, v5, :cond_d

    .line 2019
    :cond_0
    move-object/from16 v0, p2

    move-object/from16 v1, p9

    invoke-virtual {v0, v1}, Lcom/mediatek/simservs/client/policy/RuleSet;->createNewRule(Ljava/lang/String;)Lcom/mediatek/simservs/client/policy/Rule;

    move-result-object v15

    .line 2020
    .local v15, "cfRule":Lcom/mediatek/simservs/client/policy/Rule;
    invoke-virtual {v15}, Lcom/mediatek/simservs/client/policy/Rule;->createConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v14

    .line 2021
    .local v14, "cfCond":Lcom/mediatek/simservs/client/policy/Conditions;
    invoke-virtual {v15}, Lcom/mediatek/simservs/client/policy/Rule;->createActions()Lcom/mediatek/simservs/client/policy/Actions;

    move-result-object v13

    .line 2022
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

    .line 2024
    invoke-static/range {p12 .. p12}, Lcom/android/internal/telephony/MMTelSSUtils;->isOp06IccCard(I)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-static/range {p12 .. p12}, Lcom/android/internal/telephony/MMTelSSUtils;->isOp07IccCard(I)Z

    move-result v5

    if-nez v5, :cond_1

    .line 2026
    const/4 v5, 0x1

    move/from16 v0, p6

    if-ne v0, v5, :cond_6

    .line 2027
    const-string v5, "audio"

    invoke-virtual {v14, v5}, Lcom/mediatek/simservs/client/policy/Conditions;->addMedia(Ljava/lang/String;)V

    .line 2039
    :cond_1
    :goto_0
    const/4 v5, 0x1

    move/from16 v0, p4

    if-ne v0, v5, :cond_8

    .line 2040
    invoke-virtual {v14}, Lcom/mediatek/simservs/client/policy/Conditions;->addBusy()V

    .line 2052
    :cond_2
    :goto_1
    if-eqz p7, :cond_3

    invoke-virtual/range {p7 .. p7}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2053
    :cond_3
    invoke-virtual {v12}, Lcom/mediatek/simservs/client/policy/Actions;->getFowardTo()Lcom/mediatek/simservs/client/policy/ForwardTo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mediatek/simservs/client/policy/ForwardTo;->getTarget()Ljava/lang/String;

    move-result-object p7

    .line 2054
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

    .line 2059
    :cond_4
    invoke-static/range {p12 .. p12}, Lcom/android/internal/telephony/MMTelSSUtils;->isOp01IccCard(I)Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-static {}, Lcom/android/internal/telephony/MMTelSSUtils;->isNotifyCallerTest()Z

    move-result v5

    if-eqz v5, :cond_c

    .line 2060
    const/4 v5, 0x0

    move-object/from16 v0, p7

    invoke-virtual {v13, v0, v5}, Lcom/mediatek/simservs/client/policy/Actions;->setFowardTo(Ljava/lang/String;Z)V

    .line 2064
    :goto_2
    invoke-virtual {v13}, Lcom/mediatek/simservs/client/policy/Actions;->getFowardTo()Lcom/mediatek/simservs/client/policy/ForwardTo;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/mediatek/simservs/client/policy/ForwardTo;->setRevealIdentityToCaller(Z)V

    .line 2065
    invoke-virtual {v13}, Lcom/mediatek/simservs/client/policy/Actions;->getFowardTo()Lcom/mediatek/simservs/client/policy/ForwardTo;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/mediatek/simservs/client/policy/ForwardTo;->setRevealIdentityToTarget(Z)V

    .line 2066
    if-eqz p10, :cond_5

    const/4 v5, 0x1

    move/from16 v0, p11

    if-ne v5, v0, :cond_5

    .line 2067
    move-object/from16 v0, p1

    move-object/from16 v1, p9

    invoke-virtual {v0, v1}, Lcom/mediatek/simservs/client/CommunicationDiversion;->saveRule(Ljava/lang/String;)V

    .line 2069
    :cond_5
    const/4 v5, 0x1

    .line 2131
    .end local v13    # "cfAction":Lcom/mediatek/simservs/client/policy/Actions;
    .end local v14    # "cfCond":Lcom/mediatek/simservs/client/policy/Conditions;
    .end local v15    # "cfRule":Lcom/mediatek/simservs/client/policy/Rule;
    :goto_3
    return v5

    .line 2028
    .restart local v13    # "cfAction":Lcom/mediatek/simservs/client/policy/Actions;
    .restart local v14    # "cfCond":Lcom/mediatek/simservs/client/policy/Conditions;
    .restart local v15    # "cfRule":Lcom/mediatek/simservs/client/policy/Rule;
    :cond_6
    const/16 v5, 0x200

    move/from16 v0, p6

    if-ne v0, v5, :cond_7

    .line 2029
    const-string v5, "video"

    invoke-virtual {v14, v5}, Lcom/mediatek/simservs/client/policy/Conditions;->addMedia(Ljava/lang/String;)V

    goto :goto_0

    .line 2030
    :cond_7
    if-nez p6, :cond_1

    .line 2031
    const-string v5, "MMTelSS"

    const-string v6, "if op01,do not add video!"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2032
    const-string v5, "audio"

    invoke-virtual {v14, v5}, Lcom/mediatek/simservs/client/policy/Conditions;->addMedia(Ljava/lang/String;)V

    .line 2033
    invoke-static/range {p12 .. p12}, Lcom/android/internal/telephony/MMTelSSUtils;->isOp01IccCard(I)Z

    move-result v5

    if-nez v5, :cond_1

    .line 2034
    const-string v5, "video"

    invoke-virtual {v14, v5}, Lcom/mediatek/simservs/client/policy/Conditions;->addMedia(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2041
    :cond_8
    const/4 v5, 0x2

    move/from16 v0, p4

    if-ne v0, v5, :cond_9

    .line 2042
    invoke-virtual {v14}, Lcom/mediatek/simservs/client/policy/Conditions;->addNoAnswer()V

    goto/16 :goto_1

    .line 2043
    :cond_9
    const/4 v5, 0x3

    move/from16 v0, p4

    if-ne v0, v5, :cond_a

    .line 2044
    invoke-virtual {v14}, Lcom/mediatek/simservs/client/policy/Conditions;->addNotReachable()V

    goto/16 :goto_1

    .line 2045
    :cond_a
    const/4 v5, 0x6

    move/from16 v0, p4

    if-ne v0, v5, :cond_b

    .line 2046
    invoke-virtual {v14}, Lcom/mediatek/simservs/client/policy/Conditions;->addNotRegistered()V

    goto/16 :goto_1

    .line 2047
    :cond_b
    if-nez p4, :cond_2

    goto/16 :goto_1

    .line 2062
    :cond_c
    const/4 v5, 0x1

    move-object/from16 v0, p7

    invoke-virtual {v13, v0, v5}, Lcom/mediatek/simservs/client/policy/Actions;->setFowardTo(Ljava/lang/String;Z)V

    goto :goto_2

    .line 2072
    .end local v13    # "cfAction":Lcom/mediatek/simservs/client/policy/Actions;
    .end local v14    # "cfCond":Lcom/mediatek/simservs/client/policy/Conditions;
    .end local v15    # "cfRule":Lcom/mediatek/simservs/client/policy/Rule;
    :cond_d
    if-nez p6, :cond_11

    .line 2073
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget v5, v5, Lcom/android/internal/telephony/MMTelSSTransport;->mDisableRuleMode:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_f

    .line 2074
    const-string v5, "MMTelSS"

    const-string v6, "Disable CF for serviceClass=0 (all media types):neither create new rule nor copy old rule to new rule set"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2075
    if-eqz p10, :cond_e

    .line 2076
    const-string v5, "MMTelSS"

    const-string v6, "handleCreateNewRuleForExistingCF(): ERROR: DISABLE_MODE_DELETE_RULE but updateSingleRule"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2078
    :cond_e
    const/4 v5, 0x0

    goto :goto_3

    .line 2079
    :cond_f
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget v5, v5, Lcom/android/internal/telephony/MMTelSSTransport;->mDisableRuleMode:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_19

    .line 2080
    const-string v5, "MMTelSS"

    const-string v6, "Disable CF for serviceClass=0 (all media types):copy old rule with <rule-deactivated> into new rule set"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2081
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p2

    move/from16 v3, p5

    move/from16 v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->copyOldRuleToNewRuleSet(Lcom/mediatek/simservs/client/policy/Rule;Lcom/mediatek/simservs/client/policy/RuleSet;II)Lcom/mediatek/simservs/client/policy/Rule;

    move-result-object v18

    .line 2082
    .local v18, "nr":Lcom/mediatek/simservs/client/policy/Rule;
    invoke-virtual/range {v18 .. v18}, Lcom/mediatek/simservs/client/policy/Rule;->getConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mediatek/simservs/client/policy/Conditions;->addRuleDeactivated()V

    .line 2083
    if-eqz p10, :cond_10

    const/4 v5, 0x1

    move/from16 v0, p11

    if-ne v5, v0, :cond_10

    .line 2084
    move-object/from16 v0, v18

    iget-object v5, v0, Lcom/mediatek/simservs/client/policy/Rule;->mId:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/mediatek/simservs/client/CommunicationDiversion;->saveRule(Ljava/lang/String;)V

    .line 2086
    :cond_10
    const/4 v5, 0x1

    goto/16 :goto_3

    .line 2088
    .end local v18    # "nr":Lcom/mediatek/simservs/client/policy/Rule;
    :cond_11
    invoke-virtual/range {v16 .. v16}, Lcom/mediatek/simservs/client/policy/Conditions;->getMedias()Ljava/util/List;

    move-result-object v5

    move-object/from16 v0, p0

    move/from16 v1, p6

    invoke-virtual {v0, v5, v1}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->hasExtraMedia(Ljava/util/List;I)Z

    move-result v5

    if-eqz v5, :cond_15

    .line 2089
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

    .line 2091
    invoke-virtual/range {v5 .. v11}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->copyOldRuleToNewRuleSetExceptSpecificMedia(Lcom/mediatek/simservs/client/policy/Rule;Lcom/mediatek/simservs/client/policy/RuleSet;IIII)Lcom/mediatek/simservs/client/policy/Rule;

    move-result-object v17

    .line 2093
    .local v17, "newRule":Lcom/mediatek/simservs/client/policy/Rule;
    if-eqz v17, :cond_12

    .line 2094
    move-object/from16 v0, v17

    iget-object v5, v0, Lcom/mediatek/simservs/client/policy/Rule;->mId:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/mediatek/simservs/client/CommunicationDiversion;->saveRule(Ljava/lang/String;)V

    .line 2096
    :cond_12
    const/4 v5, 0x1

    goto/16 :goto_3

    .line 2098
    .end local v17    # "newRule":Lcom/mediatek/simservs/client/policy/Rule;
    :cond_13
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget v5, v5, Lcom/android/internal/telephony/MMTelSSTransport;->mDisableRuleMode:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_14

    .line 2099
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

    .line 2101
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p2

    move/from16 v3, p5

    move/from16 v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->copyOldRuleToNewRuleSet(Lcom/mediatek/simservs/client/policy/Rule;Lcom/mediatek/simservs/client/policy/RuleSet;II)Lcom/mediatek/simservs/client/policy/Rule;

    move-result-object v18

    .line 2102
    .restart local v18    # "nr":Lcom/mediatek/simservs/client/policy/Rule;
    invoke-virtual/range {v18 .. v18}, Lcom/mediatek/simservs/client/policy/Rule;->getConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mediatek/simservs/client/policy/Conditions;->addRuleDeactivated()V

    .line 2105
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

    .line 2108
    invoke-virtual/range {v5 .. v11}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->copyOldRuleToNewRuleSetExceptSpecificMedia(Lcom/mediatek/simservs/client/policy/Rule;Lcom/mediatek/simservs/client/policy/RuleSet;IIII)Lcom/mediatek/simservs/client/policy/Rule;

    .line 2110
    const/4 v5, 0x1

    goto/16 :goto_3

    .line 2113
    :cond_15
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget v5, v5, Lcom/android/internal/telephony/MMTelSSTransport;->mDisableRuleMode:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_17

    .line 2114
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

    .line 2116
    if-eqz p10, :cond_16

    .line 2117
    const-string v5, "MMTelSS"

    const-string v6, "handleCreateNewRuleForExistingCF(): ERROR: DISABLE_MODE_DELETE_RULE but updateSingleRule"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2119
    :cond_16
    const/4 v5, 0x0

    goto/16 :goto_3

    .line 2120
    :cond_17
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget v5, v5, Lcom/android/internal/telephony/MMTelSSTransport;->mDisableRuleMode:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_19

    .line 2121
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

    .line 2123
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p2

    move/from16 v3, p5

    move/from16 v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->copyOldRuleToNewRuleSet(Lcom/mediatek/simservs/client/policy/Rule;Lcom/mediatek/simservs/client/policy/RuleSet;II)Lcom/mediatek/simservs/client/policy/Rule;

    move-result-object v18

    .line 2124
    .restart local v18    # "nr":Lcom/mediatek/simservs/client/policy/Rule;
    invoke-virtual/range {v18 .. v18}, Lcom/mediatek/simservs/client/policy/Rule;->getConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mediatek/simservs/client/policy/Conditions;->addRuleDeactivated()V

    .line 2125
    if-eqz p10, :cond_18

    const/4 v5, 0x1

    move/from16 v0, p11

    if-ne v5, v0, :cond_18

    .line 2126
    move-object/from16 v0, v18

    iget-object v5, v0, Lcom/mediatek/simservs/client/policy/Rule;->mId:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/mediatek/simservs/client/CommunicationDiversion;->saveRule(Ljava/lang/String;)V

    .line 2128
    :cond_18
    const/4 v5, 0x1

    goto/16 :goto_3

    .line 2131
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
    .line 2232
    const/4 v2, 0x1

    .line 2234
    .local v2, "cbAllow":Z
    const/4 v7, 0x1

    if-ne p4, v7, :cond_3

    .line 2236
    const/4 v2, 0x0

    .line 2246
    invoke-virtual {p2, p6}, Lcom/mediatek/simservs/client/policy/RuleSet;->createNewRule(Ljava/lang/String;)Lcom/mediatek/simservs/client/policy/Rule;

    move-result-object v4

    .line 2247
    .local v4, "cbRule":Lcom/mediatek/simservs/client/policy/Rule;
    invoke-virtual {v4}, Lcom/mediatek/simservs/client/policy/Rule;->createConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v3

    .line 2248
    .local v3, "cbCond":Lcom/mediatek/simservs/client/policy/Conditions;
    invoke-virtual {v4}, Lcom/mediatek/simservs/client/policy/Rule;->createActions()Lcom/mediatek/simservs/client/policy/Actions;

    move-result-object v1

    .line 2251
    .local v1, "cbAction":Lcom/mediatek/simservs/client/policy/Actions;
    invoke-static/range {p9 .. p9}, Lcom/android/internal/telephony/MMTelSSUtils;->isOp06IccCard(I)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-static/range {p9 .. p9}, Lcom/android/internal/telephony/MMTelSSUtils;->isOp07IccCard(I)Z

    move-result v7

    if-nez v7, :cond_0

    .line 2253
    const/4 v7, 0x1

    if-ne p5, v7, :cond_4

    .line 2254
    const-string v7, "audio"

    invoke-virtual {v3, v7}, Lcom/mediatek/simservs/client/policy/Conditions;->addMedia(Ljava/lang/String;)V

    .line 2266
    :cond_0
    :goto_0
    const-string v7, "IR"

    invoke-virtual {p3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 2267
    invoke-virtual {v3}, Lcom/mediatek/simservs/client/policy/Conditions;->addRoaming()V

    .line 2268
    invoke-virtual {v1, v2}, Lcom/mediatek/simservs/client/policy/Actions;->setAllow(Z)V

    .line 2283
    :cond_1
    :goto_1
    if-eqz p7, :cond_2

    const/4 v7, 0x1

    move/from16 v0, p8

    if-ne v7, v0, :cond_2

    .line 2284
    instance-of v7, p1, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;

    if-eqz v7, :cond_a

    move-object v6, p1

    .line 2285
    check-cast v6, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;

    .line 2286
    .local v6, "ocb":Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;
    invoke-virtual {v6, p6}, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;->saveRule(Ljava/lang/String;)V

    .line 2293
    .end local v6    # "ocb":Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;
    :cond_2
    :goto_2
    const/4 v7, 0x1

    .end local v1    # "cbAction":Lcom/mediatek/simservs/client/policy/Actions;
    .end local v3    # "cbCond":Lcom/mediatek/simservs/client/policy/Conditions;
    .end local v4    # "cbRule":Lcom/mediatek/simservs/client/policy/Rule;
    :goto_3
    return v7

    .line 2241
    :cond_3
    const/4 v2, 0x1

    .line 2242
    const-string v7, "MMTelSS"

    const-string v8, "Disable one non-existed rule!Return from handleCreateNewRuleForReqCB() directly!"

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2243
    const/4 v7, 0x0

    goto :goto_3

    .line 2255
    .restart local v1    # "cbAction":Lcom/mediatek/simservs/client/policy/Actions;
    .restart local v3    # "cbCond":Lcom/mediatek/simservs/client/policy/Conditions;
    .restart local v4    # "cbRule":Lcom/mediatek/simservs/client/policy/Rule;
    :cond_4
    const/16 v7, 0x200

    if-ne p5, v7, :cond_5

    .line 2256
    const-string v7, "video"

    invoke-virtual {v3, v7}, Lcom/mediatek/simservs/client/policy/Conditions;->addMedia(Ljava/lang/String;)V

    goto :goto_0

    .line 2257
    :cond_5
    if-nez p5, :cond_0

    .line 2258
    const-string v7, "MMTelSS"

    const-string v8, "if op01,do not add video!"

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2259
    const-string v7, "audio"

    invoke-virtual {v3, v7}, Lcom/mediatek/simservs/client/policy/Conditions;->addMedia(Ljava/lang/String;)V

    .line 2260
    invoke-static/range {p9 .. p9}, Lcom/android/internal/telephony/MMTelSSUtils;->isOp01IccCard(I)Z

    move-result v7

    if-nez v7, :cond_0

    .line 2261
    const-string v7, "video"

    invoke-virtual {v3, v7}, Lcom/mediatek/simservs/client/policy/Conditions;->addMedia(Ljava/lang/String;)V

    goto :goto_0

    .line 2269
    :cond_6
    const-string v7, "AI"

    invoke-virtual {p3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 2271
    invoke-virtual {v1, v2}, Lcom/mediatek/simservs/client/policy/Actions;->setAllow(Z)V

    goto :goto_1

    .line 2272
    :cond_7
    const-string v7, "OI"

    invoke-virtual {p3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 2273
    invoke-virtual {v3}, Lcom/mediatek/simservs/client/policy/Conditions;->addInternational()V

    .line 2274
    invoke-virtual {v1, v2}, Lcom/mediatek/simservs/client/policy/Actions;->setAllow(Z)V

    goto :goto_1

    .line 2275
    :cond_8
    const-string v7, "OX"

    invoke-virtual {p3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 2276
    invoke-virtual {v3}, Lcom/mediatek/simservs/client/policy/Conditions;->addInternationalExHc()V

    .line 2277
    invoke-virtual {v1, v2}, Lcom/mediatek/simservs/client/policy/Actions;->setAllow(Z)V

    goto :goto_1

    .line 2278
    :cond_9
    const-string v7, "AO"

    invoke-virtual {p3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 2280
    invoke-virtual {v1, v2}, Lcom/mediatek/simservs/client/policy/Actions;->setAllow(Z)V

    goto :goto_1

    .line 2287
    :cond_a
    instance-of v7, p1, Lcom/mediatek/simservs/client/IncomingCommunicationBarring;

    if-eqz v7, :cond_2

    move-object v5, p1

    .line 2288
    check-cast v5, Lcom/mediatek/simservs/client/IncomingCommunicationBarring;

    .line 2289
    .local v5, "icb":Lcom/mediatek/simservs/client/IncomingCommunicationBarring;
    invoke-virtual {v5, p6}, Lcom/mediatek/simservs/client/IncomingCommunicationBarring;->saveRule(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public handleGetCB(Lcom/android/internal/telephony/MMTelSSRequest;)V
    .locals 31
    .param p1, "rr"    # Lcom/android/internal/telephony/MMTelSSRequest;

    .prologue
    .line 1252
    const/16 v25, -0x1

    .line 1253
    .local v25, "reqNo":I
    const/16 v28, -0x1

    .line 1254
    .local v28, "serialNo":I
    const/4 v11, -0x1

    .line 1256
    .local v11, "cbServiceClass":I
    const-string v10, ""

    .line 1257
    .local v10, "cBFacility":Ljava/lang/String;
    const/4 v2, 0x1

    new-array v0, v2, [I

    move-object/from16 v17, v0

    .line 1259
    .local v17, "get_cb_response":[I
    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v3, v17, v2

    .line 1262
    :try_start_0
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 1263
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v25

    .line 1264
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v28

    .line 1265
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 1266
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 1267
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 1268
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

    .line 1270
    invoke-static {v8}, Lcom/android/internal/telephony/MMTelSSUtils;->isPreferXcap(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1271
    const-string v2, "MMTelSS"

    const-string v3, "handleGetCB(): !isPreferXcap()"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1272
    new-instance v2, Ljava/net/UnknownHostException;

    invoke-direct {v2}, Ljava/net/UnknownHostException;-><init>()V

    throw v2
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/mediatek/simservs/xcap/XcapException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 1534
    .end local v8    # "phoneId":I
    :catch_0
    move-exception v29

    .line 1535
    .local v29, "unknownHostException":Ljava/net/UnknownHostException;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    const/4 v3, 0x0

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mOcbCache:Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;
    invoke-static {v2, v3}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1002(Lcom/android/internal/telephony/MMTelSSTransport;Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;)Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;

    .line 1536
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    const/4 v3, -0x1

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mOcbCachePhoneId:I
    invoke-static {v2, v3}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1202(Lcom/android/internal/telephony/MMTelSSTransport;I)I

    .line 1537
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    const-wide/16 v4, 0x0

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mOcbCacheLastQueried:J
    invoke-static {v2, v4, v5}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1102(Lcom/android/internal/telephony/MMTelSSTransport;J)J

    .line 1538
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    const/4 v3, 0x0

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mIcbCache:Lcom/mediatek/simservs/client/IncomingCommunicationBarring;
    invoke-static {v2, v3}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1302(Lcom/android/internal/telephony/MMTelSSTransport;Lcom/mediatek/simservs/client/IncomingCommunicationBarring;)Lcom/mediatek/simservs/client/IncomingCommunicationBarring;

    .line 1539
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    const/4 v3, -0x1

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mIcbCachePhoneId:I
    invoke-static {v2, v3}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1502(Lcom/android/internal/telephony/MMTelSSTransport;I)I

    .line 1540
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    const-wide/16 v4, 0x0

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mIcbCacheLastQueried:J
    invoke-static {v2, v4, v5}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1402(Lcom/android/internal/telephony/MMTelSSTransport;J)J

    .line 1542
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v2, :cond_15

    .line 1543
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v3, 0x0

    move-object/from16 v0, v29

    invoke-static {v2, v3, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1544
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 1545
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1546
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->releaseNetwork()V

    .line 1622
    .end local v29    # "unknownHostException":Ljava/net/UnknownHostException;
    :cond_0
    :goto_0
    return-void

    .line 1275
    .restart local v8    # "phoneId":I
    :cond_1
    const/16 v22, 0x0

    .line 1278
    .local v22, "num_of_comparision":I
    const/16 v2, 0x210

    if-ne v11, v2, :cond_2

    .line 1279
    const/16 v11, 0x200

    .line 1282
    :cond_2
    if-nez v11, :cond_6

    .line 1283
    const/4 v11, 0x1

    .line 1285
    const/16 v22, 0x2

    .line 1286
    :try_start_1
    const-string v2, "MMTelSS"

    const-string v3, "cbServiceClass==0, try to 1st match by using SERVICE_CLASS_VOICE"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1294
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

    .line 1298
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 1299
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

    .line 1301
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

    .line 1303
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

    .line 1304
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # invokes: Lcom/android/internal/telephony/MMTelSSTransport;->requestXcapNetwork(I)V
    invoke-static {v2, v8}, Lcom/android/internal/telephony/MMTelSSTransport;->access$300(Lcom/android/internal/telephony/MMTelSSTransport;I)V

    .line 1305
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mOcbCache:Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1000(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;

    move-result-object v23

    .line 1306
    .local v23, "ocb":Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mNetwork:Landroid/net/Network;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$400(Lcom/android/internal/telephony/MMTelSSTransport;)Landroid/net/Network;

    move-result-object v2

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;->setNetwork(Landroid/net/Network;)V

    .line 1307
    invoke-virtual/range {v23 .. v23}, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;->refresh()V

    .line 1308
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mOcbCacheLastQueried:J
    invoke-static {v2, v14, v15}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1102(Lcom/android/internal/telephony/MMTelSSTransport;J)J

    .line 1337
    :goto_2
    invoke-virtual/range {v23 .. v23}, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;->getRuleSet()Lcom/mediatek/simservs/client/policy/RuleSet;

    move-result-object v27

    .line 1338
    .local v27, "ruleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    const/16 v26, 0x0

    .line 1340
    .local v26, "ruleList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    if-eqz v27, :cond_b

    .line 1341
    invoke-virtual/range {v27 .. v27}, Lcom/mediatek/simservs/client/policy/RuleSet;->getRules()Ljava/util/List;

    move-result-object v26

    .line 1342
    if-nez v26, :cond_a

    .line 1343
    const-string v2, "MMTelSS"

    const-string v3, "Dump Get MO CB XML: ruleset with empty rules"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1352
    :goto_3
    if-eqz v26, :cond_14

    .line 1353
    const/16 v20, 0x0

    .local v20, "it":I
    :goto_4
    move/from16 v0, v20

    move/from16 v1, v22

    if-ge v0, v1, :cond_15

    .line 1354
    const/4 v2, 0x1

    move/from16 v0, v20

    if-ne v0, v2, :cond_4

    const/4 v2, 0x1

    if-ne v11, v2, :cond_4

    .line 1356
    const/16 v11, 0x200

    .line 1357
    const-string v2, "MMTelSS"

    const-string v3, "cbServiceClass==0, try to 2nd match by using SERVICE_CLASS_VIDEO"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1360
    :cond_4
    const/16 v18, 0x0

    .local v18, "i":I
    :goto_5
    invoke-interface/range {v26 .. v26}, Ljava/util/List;->size()I

    move-result v2

    move/from16 v0, v18

    if-ge v0, v2, :cond_5

    .line 1361
    move-object/from16 v0, v26

    move/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/mediatek/simservs/client/policy/Rule;

    .line 1362
    .local v24, "r":Lcom/mediatek/simservs/client/policy/Rule;
    invoke-virtual/range {v24 .. v24}, Lcom/mediatek/simservs/client/policy/Rule;->getConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v13

    .line 1363
    .local v13, "cond":Lcom/mediatek/simservs/client/policy/Conditions;
    invoke-virtual/range {v24 .. v24}, Lcom/mediatek/simservs/client/policy/Rule;->getActions()Lcom/mediatek/simservs/client/policy/Actions;

    move-result-object v9

    .line 1364
    .local v9, "action":Lcom/mediatek/simservs/client/policy/Actions;
    const/16 v21, 0x0

    .line 1366
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

    .line 1367
    if-eqz v13, :cond_c

    .line 1368
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

    .line 1369
    invoke-virtual {v13}, Lcom/mediatek/simservs/client/policy/Conditions;->getMedias()Ljava/util/List;

    move-result-object v21

    .line 1374
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

    .line 1377
    invoke-virtual {v9}, Lcom/mediatek/simservs/client/policy/Actions;->isAllow()Z

    move-result v2

    if-nez v2, :cond_d

    if-eqz v13, :cond_d

    invoke-virtual {v13}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendRuleDeactivated()Z

    move-result v2

    if-nez v2, :cond_d

    .line 1379
    const/4 v2, 0x0

    aget v3, v17, v2

    or-int/2addr v3, v11

    aput v3, v17, v2

    .line 1353
    .end local v9    # "action":Lcom/mediatek/simservs/client/policy/Actions;
    .end local v13    # "cond":Lcom/mediatek/simservs/client/policy/Conditions;
    .end local v21    # "mediaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v24    # "r":Lcom/mediatek/simservs/client/policy/Rule;
    :cond_5
    :goto_7
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_4

    .line 1289
    .end local v14    # "curTime":J
    .end local v18    # "i":I
    .end local v20    # "it":I
    .end local v23    # "ocb":Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;
    .end local v26    # "ruleList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    .end local v27    # "ruleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    :cond_6
    const/16 v22, 0x1

    goto/16 :goto_1

    .line 1309
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

    .line 1312
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

    .line 1313
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mOcbCache:Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1000(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;

    move-result-object v23

    .restart local v23    # "ocb":Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;
    goto/16 :goto_2

    .line 1315
    .end local v23    # "ocb":Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # invokes: Lcom/android/internal/telephony/MMTelSSTransport;->requestXcapNetwork(I)V
    invoke-static {v2, v8}, Lcom/android/internal/telephony/MMTelSSTransport;->access$300(Lcom/android/internal/telephony/MMTelSSTransport;I)V

    .line 1317
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-static {v8}, Lcom/android/internal/telephony/MMTelSSUtils;->getXui(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/telephony/MMTelSSTransport;->mXui:Ljava/lang/String;

    .line 1318
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-static {v8}, Lcom/android/internal/telephony/MMTelSSUtils;->getXcapRootUri(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/telephony/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    .line 1319
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-static {v8}, Lcom/android/internal/telephony/MMTelSSUtils;->getXIntendedId(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/telephony/MMTelSSTransport;->mXIntendedId:Ljava/lang/String;

    .line 1321
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v2, v2, Lcom/android/internal/telephony/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1322
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

    .line 1323
    new-instance v2, Ljava/net/UnknownHostException;

    invoke-direct {v2}, Ljava/net/UnknownHostException;-><init>()V

    throw v2
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/mediatek/simservs/xcap/XcapException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 1550
    .end local v8    # "phoneId":I
    .end local v14    # "curTime":J
    .end local v22    # "num_of_comparision":I
    :catch_1
    move-exception v30

    .line 1551
    .local v30, "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    const-string v2, "MMTelSS"

    const-string v3, "handleGetCB(): XcapException"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1552
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    const/4 v3, 0x0

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mOcbCache:Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;
    invoke-static {v2, v3}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1002(Lcom/android/internal/telephony/MMTelSSTransport;Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;)Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;

    .line 1553
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    const/4 v3, -0x1

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mOcbCachePhoneId:I
    invoke-static {v2, v3}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1202(Lcom/android/internal/telephony/MMTelSSTransport;I)I

    .line 1554
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    const-wide/16 v4, 0x0

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mOcbCacheLastQueried:J
    invoke-static {v2, v4, v5}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1102(Lcom/android/internal/telephony/MMTelSSTransport;J)J

    .line 1555
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    const/4 v3, 0x0

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mIcbCache:Lcom/mediatek/simservs/client/IncomingCommunicationBarring;
    invoke-static {v2, v3}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1302(Lcom/android/internal/telephony/MMTelSSTransport;Lcom/mediatek/simservs/client/IncomingCommunicationBarring;)Lcom/mediatek/simservs/client/IncomingCommunicationBarring;

    .line 1556
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    const/4 v3, -0x1

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mIcbCachePhoneId:I
    invoke-static {v2, v3}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1502(Lcom/android/internal/telephony/MMTelSSTransport;I)I

    .line 1557
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    const-wide/16 v4, 0x0

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mIcbCacheLastQueried:J
    invoke-static {v2, v4, v5}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1402(Lcom/android/internal/telephony/MMTelSSTransport;J)J

    .line 1559
    invoke-virtual/range {v30 .. v30}, Lcom/mediatek/simservs/xcap/XcapException;->printStackTrace()V

    .line 1560
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v2, :cond_15

    .line 1561
    invoke-virtual/range {v30 .. v30}, Lcom/mediatek/simservs/xcap/XcapException;->isConnectionError()Z

    move-result v2

    if-eqz v2, :cond_28

    .line 1562
    const-string v2, "MMTelSS"

    const-string v3, "handleGetCB(): xcapException.isConnectionError()"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1563
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v3, 0x0

    new-instance v4, Ljava/net/UnknownHostException;

    invoke-direct {v4}, Ljava/net/UnknownHostException;-><init>()V

    invoke-static {v2, v3, v4}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1567
    :goto_8
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 1568
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1569
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->releaseNetwork()V

    goto/16 :goto_0

    .line 1326
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

    .line 1329
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

    .line 1330
    .restart local v23    # "ocb":Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    move-object/from16 v0, v23

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mOcbCache:Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;
    invoke-static {v2, v0}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1002(Lcom/android/internal/telephony/MMTelSSTransport;Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;)Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;

    .line 1331
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mOcbCachePhoneId:I
    invoke-static {v2, v8}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1202(Lcom/android/internal/telephony/MMTelSSTransport;I)I

    .line 1332
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mOcbCacheLastQueried:J
    invoke-static {v2, v14, v15}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1102(Lcom/android/internal/telephony/MMTelSSTransport;J)J

    .line 1333
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

    .line 1573
    .end local v8    # "phoneId":I
    .end local v14    # "curTime":J
    .end local v22    # "num_of_comparision":I
    .end local v23    # "ocb":Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;
    :catch_2
    move-exception v16

    .line 1574
    .local v16, "e":Ljava/lang/Exception;
    const-string v2, "MMTelSS"

    const-string v3, "handleGetCB():Start to Print Stack Trace"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1575
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    const/4 v3, 0x0

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mOcbCache:Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;
    invoke-static {v2, v3}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1002(Lcom/android/internal/telephony/MMTelSSTransport;Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;)Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;

    .line 1576
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    const/4 v3, -0x1

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mOcbCachePhoneId:I
    invoke-static {v2, v3}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1202(Lcom/android/internal/telephony/MMTelSSTransport;I)I

    .line 1577
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    const-wide/16 v4, 0x0

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mOcbCacheLastQueried:J
    invoke-static {v2, v4, v5}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1102(Lcom/android/internal/telephony/MMTelSSTransport;J)J

    .line 1578
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    const/4 v3, 0x0

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mIcbCache:Lcom/mediatek/simservs/client/IncomingCommunicationBarring;
    invoke-static {v2, v3}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1302(Lcom/android/internal/telephony/MMTelSSTransport;Lcom/mediatek/simservs/client/IncomingCommunicationBarring;)Lcom/mediatek/simservs/client/IncomingCommunicationBarring;

    .line 1579
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    const/4 v3, -0x1

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mIcbCachePhoneId:I
    invoke-static {v2, v3}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1502(Lcom/android/internal/telephony/MMTelSSTransport;I)I

    .line 1580
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    const-wide/16 v4, 0x0

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mIcbCacheLastQueried:J
    invoke-static {v2, v4, v5}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1402(Lcom/android/internal/telephony/MMTelSSTransport;J)J

    .line 1582
    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v3, v17, v2

    .line 1583
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Exception;->printStackTrace()V

    .line 1584
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v2, :cond_15

    .line 1585
    const/4 v2, 0x2

    invoke-static {v2}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v12

    .line 1586
    .local v12, "ce":Lcom/android/internal/telephony/CommandException;
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v3, 0x0

    invoke-static {v2, v3, v12}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1587
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 1588
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1589
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->releaseNetwork()V

    goto/16 :goto_0

    .line 1345
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

    .line 1348
    :cond_b
    const-string v2, "MMTelSS"

    const-string v3, "No MO related CB rules in remote server"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 1371
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

    .line 1381
    :cond_d
    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v3, v17, v2

    goto/16 :goto_7

    .line 1384
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

    .line 1387
    invoke-virtual {v9}, Lcom/mediatek/simservs/client/policy/Actions;->isAllow()Z

    move-result v2

    if-nez v2, :cond_10

    if-eqz v13, :cond_10

    invoke-virtual {v13}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendRuleDeactivated()Z

    move-result v2

    if-nez v2, :cond_10

    .line 1389
    const/4 v2, 0x0

    aget v3, v17, v2

    or-int/2addr v3, v11

    aput v3, v17, v2

    .line 1360
    :cond_f
    :goto_9
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_5

    .line 1391
    :cond_10
    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v3, v17, v2

    goto :goto_9

    .line 1393
    :cond_11
    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v11}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->isBAOC(Lcom/mediatek/simservs/client/policy/Conditions;I)Z

    move-result v2

    if-eqz v2, :cond_f

    const-string v2, "AO"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 1397
    invoke-virtual {v9}, Lcom/mediatek/simservs/client/policy/Actions;->isAllow()Z

    move-result v2

    if-nez v2, :cond_13

    if-eqz v13, :cond_12

    if-eqz v13, :cond_13

    invoke-virtual {v13}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendRuleDeactivated()Z

    move-result v2

    if-nez v2, :cond_13

    .line 1399
    :cond_12
    const/4 v2, 0x0

    aget v3, v17, v2

    or-int/2addr v3, v11

    aput v3, v17, v2

    goto/16 :goto_7

    .line 1401
    :cond_13
    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v3, v17, v2

    goto/16 :goto_7

    .line 1409
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

    .line 1410
    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v3, v17, v2
    :try_end_3
    .catch Ljava/net/UnknownHostException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lcom/mediatek/simservs/xcap/XcapException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 1597
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

    .line 1615
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v3, 0x0

    move-object/from16 v0, v17

    invoke-static {v2, v0, v3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1616
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 1619
    :cond_16
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1620
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->releaseNetwork()V

    goto/16 :goto_0

    .line 1413
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

    .line 1416
    :cond_18
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 1417
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

    .line 1419
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

    .line 1421
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

    .line 1422
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # invokes: Lcom/android/internal/telephony/MMTelSSTransport;->requestXcapNetwork(I)V
    invoke-static {v2, v8}, Lcom/android/internal/telephony/MMTelSSTransport;->access$300(Lcom/android/internal/telephony/MMTelSSTransport;I)V

    .line 1423
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mIcbCache:Lcom/mediatek/simservs/client/IncomingCommunicationBarring;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1300(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/mediatek/simservs/client/IncomingCommunicationBarring;

    move-result-object v19

    .line 1424
    .local v19, "icb":Lcom/mediatek/simservs/client/IncomingCommunicationBarring;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mNetwork:Landroid/net/Network;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$400(Lcom/android/internal/telephony/MMTelSSTransport;)Landroid/net/Network;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lcom/mediatek/simservs/client/IncomingCommunicationBarring;->setNetwork(Landroid/net/Network;)V

    .line 1425
    invoke-virtual/range {v19 .. v19}, Lcom/mediatek/simservs/client/IncomingCommunicationBarring;->refresh()V

    .line 1426
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mIcbCacheLastQueried:J
    invoke-static {v2, v14, v15}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1402(Lcom/android/internal/telephony/MMTelSSTransport;J)J

    .line 1455
    :goto_b
    invoke-virtual/range {v19 .. v19}, Lcom/mediatek/simservs/client/IncomingCommunicationBarring;->getRuleSet()Lcom/mediatek/simservs/client/policy/RuleSet;

    move-result-object v27

    .line 1456
    .restart local v27    # "ruleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    const/16 v26, 0x0

    .line 1458
    .restart local v26    # "ruleList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    if-eqz v27, :cond_1f

    .line 1459
    invoke-virtual/range {v27 .. v27}, Lcom/mediatek/simservs/client/policy/RuleSet;->getRules()Ljava/util/List;

    move-result-object v26

    .line 1460
    if-nez v26, :cond_1e

    .line 1461
    const-string v2, "MMTelSS"

    const-string v3, "Dump Get MT CB XML: ruleset with empty rules"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1470
    :goto_c
    if-eqz v26, :cond_26

    .line 1471
    const/16 v20, 0x0

    .restart local v20    # "it":I
    :goto_d
    move/from16 v0, v20

    move/from16 v1, v22

    if-ge v0, v1, :cond_15

    .line 1472
    const/4 v2, 0x1

    move/from16 v0, v20

    if-ne v0, v2, :cond_19

    const/4 v2, 0x1

    if-ne v11, v2, :cond_19

    .line 1474
    const/16 v11, 0x200

    .line 1475
    const-string v2, "MMTelSS"

    const-string v3, "cbServiceClass==0, try to 2nd match by using SERVICE_CLASS_VIDEO"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1477
    :cond_19
    const/16 v18, 0x0

    .restart local v18    # "i":I
    :goto_e
    invoke-interface/range {v26 .. v26}, Ljava/util/List;->size()I

    move-result v2

    move/from16 v0, v18

    if-ge v0, v2, :cond_25

    .line 1478
    move-object/from16 v0, v26

    move/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/mediatek/simservs/client/policy/Rule;

    .line 1479
    .restart local v24    # "r":Lcom/mediatek/simservs/client/policy/Rule;
    invoke-virtual/range {v24 .. v24}, Lcom/mediatek/simservs/client/policy/Rule;->getConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v13

    .line 1480
    .restart local v13    # "cond":Lcom/mediatek/simservs/client/policy/Conditions;
    invoke-virtual/range {v24 .. v24}, Lcom/mediatek/simservs/client/policy/Rule;->getActions()Lcom/mediatek/simservs/client/policy/Actions;

    move-result-object v9

    .line 1481
    .restart local v9    # "action":Lcom/mediatek/simservs/client/policy/Actions;
    const/16 v21, 0x0

    .line 1483
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

    .line 1484
    if-eqz v13, :cond_20

    .line 1485
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

    .line 1486
    invoke-virtual {v13}, Lcom/mediatek/simservs/client/policy/Conditions;->getMedias()Ljava/util/List;

    move-result-object v21

    .line 1491
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

    .line 1494
    invoke-virtual {v9}, Lcom/mediatek/simservs/client/policy/Actions;->isAllow()Z

    move-result v2

    if-nez v2, :cond_21

    if-eqz v13, :cond_21

    invoke-virtual {v13}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendRuleDeactivated()Z

    move-result v2

    if-nez v2, :cond_21

    .line 1496
    const/4 v2, 0x0

    aget v3, v17, v2

    or-int/2addr v3, v11

    aput v3, v17, v2

    .line 1477
    :cond_1a
    :goto_10
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_e

    .line 1427
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

    .line 1430
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

    .line 1431
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mIcbCache:Lcom/mediatek/simservs/client/IncomingCommunicationBarring;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1300(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/mediatek/simservs/client/IncomingCommunicationBarring;

    move-result-object v19

    .restart local v19    # "icb":Lcom/mediatek/simservs/client/IncomingCommunicationBarring;
    goto/16 :goto_b

    .line 1433
    .end local v19    # "icb":Lcom/mediatek/simservs/client/IncomingCommunicationBarring;
    :cond_1c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # invokes: Lcom/android/internal/telephony/MMTelSSTransport;->requestXcapNetwork(I)V
    invoke-static {v2, v8}, Lcom/android/internal/telephony/MMTelSSTransport;->access$300(Lcom/android/internal/telephony/MMTelSSTransport;I)V

    .line 1435
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-static {v8}, Lcom/android/internal/telephony/MMTelSSUtils;->getXui(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/telephony/MMTelSSTransport;->mXui:Ljava/lang/String;

    .line 1436
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-static {v8}, Lcom/android/internal/telephony/MMTelSSUtils;->getXcapRootUri(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/telephony/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    .line 1437
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-static {v8}, Lcom/android/internal/telephony/MMTelSSUtils;->getXIntendedId(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/telephony/MMTelSSTransport;->mXIntendedId:Ljava/lang/String;

    .line 1439
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v2, v2, Lcom/android/internal/telephony/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 1440
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

    .line 1441
    new-instance v2, Ljava/net/UnknownHostException;

    invoke-direct {v2}, Ljava/net/UnknownHostException;-><init>()V

    throw v2

    .line 1444
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

    .line 1447
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

    .line 1448
    .restart local v19    # "icb":Lcom/mediatek/simservs/client/IncomingCommunicationBarring;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    move-object/from16 v0, v19

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mIcbCache:Lcom/mediatek/simservs/client/IncomingCommunicationBarring;
    invoke-static {v2, v0}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1302(Lcom/android/internal/telephony/MMTelSSTransport;Lcom/mediatek/simservs/client/IncomingCommunicationBarring;)Lcom/mediatek/simservs/client/IncomingCommunicationBarring;

    .line 1449
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mIcbCachePhoneId:I
    invoke-static {v2, v8}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1502(Lcom/android/internal/telephony/MMTelSSTransport;I)I

    .line 1450
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mIcbCacheLastQueried:J
    invoke-static {v2, v14, v15}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1402(Lcom/android/internal/telephony/MMTelSSTransport;J)J

    .line 1451
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

    .line 1463
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

    .line 1466
    :cond_1f
    const-string v2, "MMTelSS"

    const-string v3, "No MT related CB rules in remote server"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c

    .line 1488
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

    .line 1498
    :cond_21
    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v3, v17, v2

    goto/16 :goto_10

    .line 1500
    :cond_22
    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v11}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->isBAIC(Lcom/mediatek/simservs/client/policy/Conditions;I)Z

    move-result v2

    if-eqz v2, :cond_1a

    const-string v2, "AI"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 1504
    invoke-virtual {v9}, Lcom/mediatek/simservs/client/policy/Actions;->isAllow()Z

    move-result v2

    if-nez v2, :cond_24

    if-eqz v13, :cond_23

    if-eqz v13, :cond_24

    invoke-virtual {v13}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendRuleDeactivated()Z

    move-result v2

    if-nez v2, :cond_24

    .line 1506
    :cond_23
    const/4 v2, 0x0

    aget v3, v17, v2

    or-int/2addr v3, v11

    aput v3, v17, v2

    goto/16 :goto_10

    .line 1508
    :cond_24
    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v3, v17, v2

    goto/16 :goto_10

    .line 1471
    .end local v9    # "action":Lcom/mediatek/simservs/client/policy/Actions;
    .end local v13    # "cond":Lcom/mediatek/simservs/client/policy/Conditions;
    .end local v21    # "mediaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v24    # "r":Lcom/mediatek/simservs/client/policy/Rule;
    :cond_25
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_d

    .line 1516
    .end local v18    # "i":I
    .end local v20    # "it":I
    :cond_26
    const-string v2, "MMTelSS"

    const-string v3, "ruleList is null, MT CB is disabled"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1517
    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v3, v17, v2

    goto/16 :goto_a

    .line 1531
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

    .line 1565
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
    .line 1625
    const/16 v38, -0x1

    .line 1626
    .local v38, "reqNo":I
    const/16 v41, -0x1

    .line 1627
    .local v41, "serialNo":I
    const/16 v29, 0x1

    .line 1628
    .local v29, "numInfos":I
    const/16 v22, 0x0

    .line 1630
    .local v22, "infos":[Lcom/android/internal/telephony/CallForwardInfo;
    new-instance v33, Ljava/util/ArrayList;

    invoke-direct/range {v33 .. v33}, Ljava/util/ArrayList;-><init>()V

    .line 1632
    .local v33, "queriedCallForwardInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/CallForwardInfo;>;"
    const/4 v15, -0x1

    .line 1633
    .local v15, "cfAction":I
    const/16 v37, -0x1

    .line 1634
    .local v37, "reason":I
    const/16 v42, -0x1

    .line 1635
    .local v42, "serviceClass":I
    const/16 v32, -0x1

    .line 1636
    .local v32, "orgServiceClass":I
    const-string v16, ""

    .line 1637
    .local v16, "cfNumber":Ljava/lang/String;
    const-string v11, ""

    .line 1638
    .local v11, "CFPhoneNum":Ljava/lang/String;
    const/16 v35, 0x0

    .line 1639
    .local v35, "queryStatus":I
    const/16 v28, 0x14

    .line 1657
    .local v28, "noReplyTimer":I
    :try_start_0
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 1658
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    move-result v38

    .line 1659
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    move-result v41

    .line 1660
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 1661
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    move-result v37

    .line 1662
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    move-result v42

    .line 1663
    move/from16 v32, v42

    .line 1664
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v4}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 1665
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 1667
    .local v10, "phoneId":I
    invoke-static {v10}, Lcom/android/internal/telephony/MMTelSSUtils;->isPreferXcap(I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1668
    const-string v4, "MMTelSS"

    const-string v5, "handleGetCF(): !isPreferXcap()"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1669
    new-instance v4, Ljava/net/UnknownHostException;

    invoke-direct {v4}, Ljava/net/UnknownHostException;-><init>()V

    throw v4
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/mediatek/simservs/xcap/XcapException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 1909
    .end local v10    # "phoneId":I
    :catch_0
    move-exception v43

    .line 1910
    .local v43, "unknownHostException":Ljava/net/UnknownHostException;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    const/4 v5, 0x0

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCdCache:Lcom/mediatek/simservs/client/CommunicationDiversion;
    invoke-static {v4, v5}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1602(Lcom/android/internal/telephony/MMTelSSTransport;Lcom/mediatek/simservs/client/CommunicationDiversion;)Lcom/mediatek/simservs/client/CommunicationDiversion;

    .line 1911
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    const/4 v5, -0x1

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCdCachePhoneId:I
    invoke-static {v4, v5}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1802(Lcom/android/internal/telephony/MMTelSSTransport;I)I

    .line 1912
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    const-wide/16 v6, 0x0

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCdCacheLastQueried:J
    invoke-static {v4, v6, v7}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1702(Lcom/android/internal/telephony/MMTelSSTransport;J)J

    .line 1914
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v4, :cond_21

    .line 1915
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v5, 0x0

    move-object/from16 v0, v43

    invoke-static {v4, v5, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1916
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 1917
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v4}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1918
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v4}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->releaseNetwork()V

    .line 1998
    .end local v43    # "unknownHostException":Ljava/net/UnknownHostException;
    :cond_0
    :goto_0
    return-void

    .line 1672
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

    .line 1675
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    .line 1676
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

    .line 1678
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

    .line 1680
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

    .line 1681
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # invokes: Lcom/android/internal/telephony/MMTelSSTransport;->requestXcapNetwork(I)V
    invoke-static {v4, v10}, Lcom/android/internal/telephony/MMTelSSTransport;->access$300(Lcom/android/internal/telephony/MMTelSSTransport;I)V

    .line 1682
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCdCache:Lcom/mediatek/simservs/client/CommunicationDiversion;
    invoke-static {v4}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/mediatek/simservs/client/CommunicationDiversion;

    move-result-object v13

    .line 1683
    .local v13, "cd":Lcom/mediatek/simservs/client/CommunicationDiversion;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mNetwork:Landroid/net/Network;
    invoke-static {v4}, Lcom/android/internal/telephony/MMTelSSTransport;->access$400(Lcom/android/internal/telephony/MMTelSSTransport;)Landroid/net/Network;

    move-result-object v4

    invoke-virtual {v13, v4}, Lcom/mediatek/simservs/client/CommunicationDiversion;->setNetwork(Landroid/net/Network;)V

    .line 1684
    invoke-virtual {v13}, Lcom/mediatek/simservs/client/CommunicationDiversion;->refresh()V

    .line 1685
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    move-wide/from16 v0, v18

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCdCacheLastQueried:J
    invoke-static {v4, v0, v1}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1702(Lcom/android/internal/telephony/MMTelSSTransport;J)J

    .line 1721
    :goto_1
    const-string v4, "MMTelSS"

    const-string v5, "handleGetCF():GetRuleSet from cd"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1723
    invoke-virtual {v13}, Lcom/mediatek/simservs/client/CommunicationDiversion;->getRuleSet()Lcom/mediatek/simservs/client/policy/RuleSet;

    move-result-object v40

    .line 1725
    .local v40, "ruleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    const/16 v39, 0x0

    .line 1727
    .local v39, "ruleList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    if-eqz v40, :cond_d

    .line 1728
    invoke-virtual/range {v40 .. v40}, Lcom/mediatek/simservs/client/policy/RuleSet;->getRules()Ljava/util/List;

    move-result-object v39

    .line 1734
    :goto_2
    if-eqz v39, :cond_20

    .line 1736
    const/16 v31, 0x1

    .line 1737
    .local v31, "num_of_expansion":I
    const/4 v4, 0x5

    move/from16 v0, v37

    if-ne v0, v4, :cond_e

    .line 1740
    const/16 v31, 0x4

    .line 1747
    :cond_2
    :goto_3
    const/16 v27, 0x0

    .local v27, "n":I
    :goto_4
    move/from16 v0, v27

    move/from16 v1, v31

    if-ge v0, v1, :cond_1f

    .line 1748
    const/4 v4, 0x1

    move/from16 v0, v31

    if-eq v0, v4, :cond_3

    .line 1749
    if-nez v27, :cond_f

    const/16 v37, 0x1

    .line 1756
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

    .line 1759
    const/16 v4, 0x210

    move/from16 v0, v32

    if-ne v0, v4, :cond_4

    .line 1760
    const/16 v42, 0x200

    .line 1765
    :cond_4
    const/16 v30, 0x0

    .line 1767
    .local v30, "num_of_comparision":I
    if-nez v32, :cond_13

    .line 1768
    const/16 v42, 0x1

    .line 1770
    const/16 v30, 0x2

    .line 1771
    const-string v4, "MMTelSS"

    const-string v5, "serviceClass==0, try to 1st match by using SERVICE_CLASS_VOICE"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1777
    :goto_6
    const/16 v24, 0x0

    .local v24, "it":I
    :goto_7
    move/from16 v0, v24

    move/from16 v1, v30

    if-ge v0, v1, :cond_1e

    .line 1779
    const/4 v4, 0x1

    move/from16 v0, v24

    if-ne v0, v4, :cond_5

    const/4 v4, 0x1

    move/from16 v0, v42

    if-ne v0, v4, :cond_5

    .line 1781
    const/16 v42, 0x200

    .line 1782
    const-string v4, "MMTelSS"

    const-string v5, "serviceClass==0, try to 2nd match by using SERVICE_CLASS_VIDEO"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1785
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

    .line 1788
    const/16 v21, 0x0

    .local v21, "i":I
    :goto_8
    invoke-interface/range {v39 .. v39}, Ljava/util/List;->size()I

    move-result v4

    move/from16 v0, v21

    if-ge v0, v4, :cond_9

    .line 1789
    move-object/from16 v0, v39

    move/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Lcom/mediatek/simservs/client/policy/Rule;

    .line 1790
    .local v36, "r":Lcom/mediatek/simservs/client/policy/Rule;
    invoke-virtual/range {v36 .. v36}, Lcom/mediatek/simservs/client/policy/Rule;->getConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v17

    .line 1791
    .local v17, "cond":Lcom/mediatek/simservs/client/policy/Conditions;
    invoke-virtual/range {v36 .. v36}, Lcom/mediatek/simservs/client/policy/Rule;->getActions()Lcom/mediatek/simservs/client/policy/Actions;

    move-result-object v12

    .line 1792
    .local v12, "action":Lcom/mediatek/simservs/client/policy/Actions;
    const/16 v26, 0x0

    .line 1794
    .local v26, "mediaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v17, :cond_14

    .line 1795
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

    .line 1796
    invoke-virtual/range {v17 .. v17}, Lcom/mediatek/simservs/client/policy/Conditions;->getMedias()Ljava/util/List;

    move-result-object v26

    .line 1802
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

    .line 1809
    const-string v4, "MMTelSS"

    const-string v5, "handleGetCF():CFU is enabled on server"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1811
    const/16 v35, 0x1

    .line 1812
    invoke-virtual {v12}, Lcom/mediatek/simservs/client/policy/Actions;->getFowardTo()Lcom/mediatek/simservs/client/policy/ForwardTo;

    move-result-object v4

    if-eqz v4, :cond_8

    .line 1813
    invoke-virtual {v12}, Lcom/mediatek/simservs/client/policy/Actions;->getFowardTo()Lcom/mediatek/simservs/client/policy/ForwardTo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mediatek/simservs/client/policy/ForwardTo;->getTarget()Ljava/lang/String;

    move-result-object v11

    .line 1816
    :cond_8
    invoke-virtual {v13}, Lcom/mediatek/simservs/client/CommunicationDiversion;->getNoReplyTimer()I

    move-result v28

    .line 1874
    .end local v12    # "action":Lcom/mediatek/simservs/client/policy/Actions;
    .end local v17    # "cond":Lcom/mediatek/simservs/client/policy/Conditions;
    .end local v26    # "mediaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v36    # "r":Lcom/mediatek/simservs/client/policy/Rule;
    :cond_9
    :goto_a
    new-instance v25, Lcom/android/internal/telephony/CallForwardInfo;

    invoke-direct/range {v25 .. v25}, Lcom/android/internal/telephony/CallForwardInfo;-><init>()V

    .line 1875
    .local v25, "item":Lcom/android/internal/telephony/CallForwardInfo;
    move/from16 v0, v35

    move-object/from16 v1, v25

    iput v0, v1, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    .line 1876
    move/from16 v0, v37

    move-object/from16 v1, v25

    iput v0, v1, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    .line 1877
    move/from16 v0, v42

    move-object/from16 v1, v25

    iput v0, v1, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    .line 1878
    const/4 v4, 0x0

    move-object/from16 v0, v25

    iput v4, v0, Lcom/android/internal/telephony/CallForwardInfo;->toa:I

    .line 1879
    move-object/from16 v0, v25

    iput-object v11, v0, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    .line 1880
    move/from16 v0, v28

    move-object/from16 v1, v25

    iput v0, v1, Lcom/android/internal/telephony/CallForwardInfo;->timeSeconds:I

    .line 1881
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

    .line 1882
    move-object/from16 v0, v33

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1885
    const/16 v35, 0x0

    .line 1886
    const-string v11, ""

    .line 1887
    const/16 v28, 0x14

    .line 1777
    add-int/lit8 v24, v24, 0x1

    goto/16 :goto_7

    .line 1686
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

    .line 1689
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

    .line 1690
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCdCache:Lcom/mediatek/simservs/client/CommunicationDiversion;
    invoke-static {v4}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/mediatek/simservs/client/CommunicationDiversion;

    move-result-object v13

    .restart local v13    # "cd":Lcom/mediatek/simservs/client/CommunicationDiversion;
    goto/16 :goto_1

    .line 1692
    .end local v13    # "cd":Lcom/mediatek/simservs/client/CommunicationDiversion;
    :cond_b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # invokes: Lcom/android/internal/telephony/MMTelSSTransport;->requestXcapNetwork(I)V
    invoke-static {v4, v10}, Lcom/android/internal/telephony/MMTelSSTransport;->access$300(Lcom/android/internal/telephony/MMTelSSTransport;I)V

    .line 1694
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-static {v10}, Lcom/android/internal/telephony/MMTelSSUtils;->getXui(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/android/internal/telephony/MMTelSSTransport;->mXui:Ljava/lang/String;

    .line 1695
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-static {v10}, Lcom/android/internal/telephony/MMTelSSUtils;->getXcapRootUri(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/android/internal/telephony/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    .line 1696
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-static {v10}, Lcom/android/internal/telephony/MMTelSSUtils;->getXIntendedId(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/android/internal/telephony/MMTelSSTransport;->mXIntendedId:Ljava/lang/String;

    .line 1698
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v4, v4, Lcom/android/internal/telephony/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 1699
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

    .line 1700
    new-instance v4, Ljava/net/UnknownHostException;

    invoke-direct {v4}, Ljava/net/UnknownHostException;-><init>()V

    throw v4
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/mediatek/simservs/xcap/XcapException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 1922
    .end local v10    # "phoneId":I
    .end local v18    # "curTime":J
    :catch_1
    move-exception v44

    .line 1923
    .local v44, "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    const-string v4, "MMTelSS"

    const-string v5, "handleGetCF(): XcapException"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1924
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    const/4 v5, 0x0

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCdCache:Lcom/mediatek/simservs/client/CommunicationDiversion;
    invoke-static {v4, v5}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1602(Lcom/android/internal/telephony/MMTelSSTransport;Lcom/mediatek/simservs/client/CommunicationDiversion;)Lcom/mediatek/simservs/client/CommunicationDiversion;

    .line 1925
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    const/4 v5, -0x1

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCdCachePhoneId:I
    invoke-static {v4, v5}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1802(Lcom/android/internal/telephony/MMTelSSTransport;I)I

    .line 1926
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    const-wide/16 v6, 0x0

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCdCacheLastQueried:J
    invoke-static {v4, v6, v7}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1702(Lcom/android/internal/telephony/MMTelSSTransport;J)J

    .line 1928
    invoke-virtual/range {v44 .. v44}, Lcom/mediatek/simservs/xcap/XcapException;->printStackTrace()V

    .line 1929
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v4, :cond_21

    .line 1930
    invoke-virtual/range {v44 .. v44}, Lcom/mediatek/simservs/xcap/XcapException;->isConnectionError()Z

    move-result v4

    if-eqz v4, :cond_23

    .line 1931
    const-string v4, "MMTelSS"

    const-string v5, "handleGetCF(): xcapException.isConnectionError()"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1932
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v5, 0x0

    new-instance v6, Ljava/net/UnknownHostException;

    invoke-direct {v6}, Ljava/net/UnknownHostException;-><init>()V

    invoke-static {v4, v5, v6}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1936
    :goto_b
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 1937
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v4}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1938
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v4}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->releaseNetwork()V

    goto/16 :goto_0

    .line 1703
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

    .line 1706
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

    .line 1707
    .restart local v13    # "cd":Lcom/mediatek/simservs/client/CommunicationDiversion;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCdCache:Lcom/mediatek/simservs/client/CommunicationDiversion;
    invoke-static {v4, v13}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1602(Lcom/android/internal/telephony/MMTelSSTransport;Lcom/mediatek/simservs/client/CommunicationDiversion;)Lcom/mediatek/simservs/client/CommunicationDiversion;

    .line 1708
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCdCachePhoneId:I
    invoke-static {v4, v10}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1802(Lcom/android/internal/telephony/MMTelSSTransport;I)I

    .line 1709
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    move-wide/from16 v0, v18

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCdCacheLastQueried:J
    invoke-static {v4, v0, v1}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1702(Lcom/android/internal/telephony/MMTelSSTransport;J)J

    .line 1710
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

    .line 1942
    .end local v10    # "phoneId":I
    .end local v13    # "cd":Lcom/mediatek/simservs/client/CommunicationDiversion;
    .end local v18    # "curTime":J
    :catch_2
    move-exception v20

    .line 1943
    .local v20, "e":Ljava/lang/Exception;
    const-string v4, "MMTelSS"

    const-string v5, "handleGetCF():Start to Print Stack Trace"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1944
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    const/4 v5, 0x0

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCdCache:Lcom/mediatek/simservs/client/CommunicationDiversion;
    invoke-static {v4, v5}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1602(Lcom/android/internal/telephony/MMTelSSTransport;Lcom/mediatek/simservs/client/CommunicationDiversion;)Lcom/mediatek/simservs/client/CommunicationDiversion;

    .line 1945
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    const/4 v5, -0x1

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCdCachePhoneId:I
    invoke-static {v4, v5}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1802(Lcom/android/internal/telephony/MMTelSSTransport;I)I

    .line 1946
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    const-wide/16 v6, 0x0

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCdCacheLastQueried:J
    invoke-static {v4, v6, v7}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1702(Lcom/android/internal/telephony/MMTelSSTransport;J)J

    .line 1948
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Exception;->printStackTrace()V

    .line 1952
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v4, :cond_21

    .line 1953
    const/4 v4, 0x2

    invoke-static {v4}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v14

    .line 1954
    .local v14, "ce":Lcom/android/internal/telephony/CommandException;
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v5, 0x0

    invoke-static {v4, v5, v14}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1955
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 1956
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v4}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1957
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v4}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->releaseNetwork()V

    goto/16 :goto_0

    .line 1730
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

    .line 1741
    .restart local v31    # "num_of_expansion":I
    :cond_e
    const/4 v4, 0x4

    move/from16 v0, v37

    if-ne v0, v4, :cond_2

    .line 1744
    const/16 v31, 0x5

    goto/16 :goto_3

    .line 1750
    .restart local v27    # "n":I
    :cond_f
    const/4 v4, 0x1

    move/from16 v0, v27

    if-ne v0, v4, :cond_10

    const/16 v37, 0x2

    goto/16 :goto_5

    .line 1751
    :cond_10
    const/4 v4, 0x2

    move/from16 v0, v27

    if-ne v0, v4, :cond_11

    const/16 v37, 0x3

    goto/16 :goto_5

    .line 1752
    :cond_11
    const/4 v4, 0x3

    move/from16 v0, v27

    if-ne v0, v4, :cond_12

    const/16 v37, 0x6

    goto/16 :goto_5

    .line 1753
    :cond_12
    const/4 v4, 0x4

    move/from16 v0, v27

    if-ne v0, v4, :cond_3

    const/16 v37, 0x0

    goto/16 :goto_5

    .line 1774
    .restart local v30    # "num_of_comparision":I
    :cond_13
    const/16 v30, 0x1

    goto/16 :goto_6

    .line 1798
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

    .line 1819
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

    .line 1822
    const-string v4, "MMTelSS"

    const-string v5, "handleGetCF():CFB is enabled on server"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1824
    const/16 v35, 0x1

    .line 1825
    invoke-virtual {v12}, Lcom/mediatek/simservs/client/policy/Actions;->getFowardTo()Lcom/mediatek/simservs/client/policy/ForwardTo;

    move-result-object v4

    if-eqz v4, :cond_16

    .line 1826
    invoke-virtual {v12}, Lcom/mediatek/simservs/client/policy/Actions;->getFowardTo()Lcom/mediatek/simservs/client/policy/ForwardTo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mediatek/simservs/client/policy/ForwardTo;->getTarget()Ljava/lang/String;

    move-result-object v11

    .line 1828
    :cond_16
    invoke-virtual {v13}, Lcom/mediatek/simservs/client/CommunicationDiversion;->getNoReplyTimer()I

    move-result v28

    .line 1829
    goto/16 :goto_a

    .line 1831
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

    .line 1834
    const-string v4, "MMTelSS"

    const-string v5, "handleGetCF():CFNoAnswer is enabled on server"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1836
    const/16 v35, 0x1

    .line 1837
    invoke-virtual {v12}, Lcom/mediatek/simservs/client/policy/Actions;->getFowardTo()Lcom/mediatek/simservs/client/policy/ForwardTo;

    move-result-object v4

    if-eqz v4, :cond_18

    .line 1838
    invoke-virtual {v12}, Lcom/mediatek/simservs/client/policy/Actions;->getFowardTo()Lcom/mediatek/simservs/client/policy/ForwardTo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mediatek/simservs/client/policy/ForwardTo;->getTarget()Ljava/lang/String;

    move-result-object v11

    .line 1840
    :cond_18
    invoke-virtual {v13}, Lcom/mediatek/simservs/client/CommunicationDiversion;->getNoReplyTimer()I

    move-result v28

    .line 1841
    goto/16 :goto_a

    .line 1843
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

    .line 1846
    const-string v4, "MMTelSS"

    const-string v5, "handleGetCF():CFNotReachable is enabled on server"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1848
    const/16 v35, 0x1

    .line 1849
    invoke-virtual {v12}, Lcom/mediatek/simservs/client/policy/Actions;->getFowardTo()Lcom/mediatek/simservs/client/policy/ForwardTo;

    move-result-object v4

    if-eqz v4, :cond_1a

    .line 1850
    invoke-virtual {v12}, Lcom/mediatek/simservs/client/policy/Actions;->getFowardTo()Lcom/mediatek/simservs/client/policy/ForwardTo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mediatek/simservs/client/policy/ForwardTo;->getTarget()Ljava/lang/String;

    move-result-object v11

    .line 1852
    :cond_1a
    invoke-virtual {v13}, Lcom/mediatek/simservs/client/CommunicationDiversion;->getNoReplyTimer()I

    move-result v28

    .line 1853
    goto/16 :goto_a

    .line 1855
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

    .line 1858
    const-string v4, "MMTelSS"

    const-string v5, "handleGetCF():CFNotRegistered is enabled on server"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1860
    const/16 v35, 0x1

    .line 1861
    invoke-virtual {v12}, Lcom/mediatek/simservs/client/policy/Actions;->getFowardTo()Lcom/mediatek/simservs/client/policy/ForwardTo;

    move-result-object v4

    if-eqz v4, :cond_1c

    .line 1862
    invoke-virtual {v12}, Lcom/mediatek/simservs/client/policy/Actions;->getFowardTo()Lcom/mediatek/simservs/client/policy/ForwardTo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mediatek/simservs/client/policy/ForwardTo;->getTarget()Ljava/lang/String;

    move-result-object v11

    .line 1864
    :cond_1c
    invoke-virtual {v13}, Lcom/mediatek/simservs/client/CommunicationDiversion;->getNoReplyTimer()I

    move-result v28

    .line 1865
    goto/16 :goto_a

    .line 1869
    :cond_1d
    const-string v4, "MMTelSS"

    const-string v5, "handleGetCF()from xcap:Not matched this rule!"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1788
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_8

    .line 1747
    .end local v12    # "action":Lcom/mediatek/simservs/client/policy/Actions;
    .end local v17    # "cond":Lcom/mediatek/simservs/client/policy/Conditions;
    .end local v21    # "i":I
    .end local v26    # "mediaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v36    # "r":Lcom/mediatek/simservs/client/policy/Rule;
    :cond_1e
    add-int/lit8 v27, v27, 0x1

    goto/16 :goto_4

    .line 1895
    .end local v24    # "it":I
    .end local v30    # "num_of_comparision":I
    :cond_1f
    invoke-virtual/range {v33 .. v33}, Ljava/util/ArrayList;->size()I

    move-result v34

    .line 1897
    .local v34, "queriedSize":I
    move/from16 v0, v34

    new-array v0, v0, [Lcom/android/internal/telephony/CallForwardInfo;

    move-object/from16 v22, v0

    .line 1898
    const/16 v23, 0x0

    .local v23, "inx":I
    :goto_c
    move/from16 v0, v23

    move/from16 v1, v34

    if-ge v0, v1, :cond_21

    .line 1899
    move-object/from16 v0, v33

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/CallForwardInfo;

    aput-object v4, v22, v23

    .line 1898
    add-int/lit8 v23, v23, 0x1

    goto :goto_c

    .line 1904
    .end local v23    # "inx":I
    .end local v27    # "n":I
    .end local v31    # "num_of_expansion":I
    .end local v34    # "queriedSize":I
    :cond_20
    const-string v4, "MMTelSS"

    const-string v5, "handleGetCF():get null ruleList"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1905
    const/4 v4, 0x0

    new-array v0, v4, [Lcom/android/internal/telephony/CallForwardInfo;

    move-object/from16 v22, v0
    :try_end_3
    .catch Ljava/net/UnknownHostException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lcom/mediatek/simservs/xcap/XcapException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 1906
    const/16 v35, 0x0

    .line 1980
    .end local v10    # "phoneId":I
    .end local v13    # "cd":Lcom/mediatek/simservs/client/CommunicationDiversion;
    .end local v18    # "curTime":J
    .end local v39    # "ruleList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    .end local v40    # "ruleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    :cond_21
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v4, :cond_22

    .line 1991
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v5, 0x0

    move-object/from16 v0, v22

    invoke-static {v4, v0, v5}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1992
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 1995
    :cond_22
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v4}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1996
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v4}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->releaseNetwork()V

    goto/16 :goto_0

    .line 1934
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
    .line 4136
    const/16 v33, -0x1

    .line 4137
    .local v33, "reqNo":I
    const/16 v36, -0x1

    .line 4138
    .local v36, "serialNo":I
    const/16 v20, 0x0

    .line 4139
    .local v20, "infos":[Lcom/android/internal/telephony/CallForwardInfoEx;
    new-instance v28, Ljava/util/ArrayList;

    invoke-direct/range {v28 .. v28}, Ljava/util/ArrayList;-><init>()V

    .line 4142
    .local v28, "queriedCallForwardInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/CallForwardInfoEx;>;"
    const/16 v32, -0x1

    .line 4143
    .local v32, "reason":I
    const/16 v37, -0x1

    .line 4144
    .local v37, "serviceClass":I
    const/16 v27, -0x1

    .line 4145
    .local v27, "orgServiceClass":I
    const-string v14, ""

    .line 4146
    .local v14, "cfPhoneNum":Ljava/lang/String;
    const/16 v30, 0x0

    .line 4147
    .local v30, "queryStatus":I
    const/16 v25, 0x14

    .line 4148
    .local v25, "noReplyTimer":I
    const/16 v38, 0x0

    .line 4149
    .local v38, "timeSlot":[J
    const/4 v10, 0x0

    .line 4152
    .local v10, "phoneId":I
    :try_start_0
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 4153
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    move-result v33

    .line 4154
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    move-result v36

    .line 4155
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    move-result v32

    .line 4156
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    move-result v37

    .line 4157
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 4158
    move/from16 v27, v37

    .line 4160
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

    .line 4163
    invoke-static {v10}, Lcom/android/internal/telephony/MMTelSSUtils;->isPreferXcap(I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 4164
    const-string v4, "MMTelSS"

    const-string v5, "handleGetCFInTimeSlot(): !isPreferXcap()"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4165
    new-instance v4, Ljava/net/UnknownHostException;

    invoke-direct {v4}, Ljava/net/UnknownHostException;-><init>()V

    throw v4
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/mediatek/simservs/xcap/XcapException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 4337
    :catch_0
    move-exception v39

    .line 4338
    .local v39, "unknownHostException":Ljava/net/UnknownHostException;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    const/4 v5, 0x0

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCdCache:Lcom/mediatek/simservs/client/CommunicationDiversion;
    invoke-static {v4, v5}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1602(Lcom/android/internal/telephony/MMTelSSTransport;Lcom/mediatek/simservs/client/CommunicationDiversion;)Lcom/mediatek/simservs/client/CommunicationDiversion;

    .line 4339
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    const/4 v5, -0x1

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCdCachePhoneId:I
    invoke-static {v4, v5}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1802(Lcom/android/internal/telephony/MMTelSSTransport;I)I

    .line 4340
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    const-wide/16 v6, 0x0

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCdCacheLastQueried:J
    invoke-static {v4, v6, v7}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1702(Lcom/android/internal/telephony/MMTelSSTransport;J)J

    .line 4342
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v4, :cond_11

    .line 4343
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v5, 0x0

    move-object/from16 v0, v39

    invoke-static {v4, v5, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 4344
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 4345
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v4}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 4346
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v4}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->releaseNetwork()V

    .line 4396
    .end local v39    # "unknownHostException":Ljava/net/UnknownHostException;
    :cond_0
    :goto_0
    return-void

    .line 4169
    :cond_1
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 4170
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

    .line 4172
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

    .line 4174
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

    .line 4175
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # invokes: Lcom/android/internal/telephony/MMTelSSTransport;->requestXcapNetwork(I)V
    invoke-static {v4, v10}, Lcom/android/internal/telephony/MMTelSSTransport;->access$300(Lcom/android/internal/telephony/MMTelSSTransport;I)V

    .line 4176
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCdCache:Lcom/mediatek/simservs/client/CommunicationDiversion;
    invoke-static {v4}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/mediatek/simservs/client/CommunicationDiversion;

    move-result-object v12

    .line 4177
    .local v12, "cd":Lcom/mediatek/simservs/client/CommunicationDiversion;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mNetwork:Landroid/net/Network;
    invoke-static {v4}, Lcom/android/internal/telephony/MMTelSSTransport;->access$400(Lcom/android/internal/telephony/MMTelSSTransport;)Landroid/net/Network;

    move-result-object v4

    invoke-virtual {v12, v4}, Lcom/mediatek/simservs/client/CommunicationDiversion;->setNetwork(Landroid/net/Network;)V

    .line 4178
    invoke-virtual {v12}, Lcom/mediatek/simservs/client/CommunicationDiversion;->refresh()V

    .line 4179
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    move-wide/from16 v0, v16

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCdCacheLastQueried:J
    invoke-static {v4, v0, v1}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1702(Lcom/android/internal/telephony/MMTelSSTransport;J)J

    .line 4208
    :goto_1
    const-string v4, "MMTelSS"

    const-string v5, "handleGetCFInTimeSlot(): GetRuleSet from cd"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4210
    invoke-virtual {v12}, Lcom/mediatek/simservs/client/CommunicationDiversion;->getRuleSet()Lcom/mediatek/simservs/client/policy/RuleSet;

    move-result-object v35

    .line 4213
    .local v35, "ruleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    const/16 v34, 0x0

    .line 4215
    .local v34, "ruleList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    if-eqz v35, :cond_b

    .line 4216
    invoke-virtual/range {v35 .. v35}, Lcom/mediatek/simservs/client/policy/RuleSet;->getRules()Ljava/util/List;

    move-result-object v34

    .line 4223
    :goto_2
    if-eqz v34, :cond_10

    .line 4225
    const/16 v4, 0x210

    move/from16 v0, v27

    if-ne v0, v4, :cond_2

    .line 4227
    const/16 v37, 0x200

    .line 4230
    :cond_2
    const/16 v26, 0x0

    .line 4232
    .local v26, "numOfComparision":I
    if-nez v27, :cond_c

    .line 4233
    const/16 v37, 0x1

    .line 4236
    const/16 v26, 0x2

    .line 4237
    const-string v4, "MMTelSS"

    const-string v5, "serviceClass == 0, try to 1st match by using SERVICE_CLASS_VOICE"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4245
    :goto_3
    const/16 v22, 0x0

    .local v22, "it":I
    :goto_4
    move/from16 v0, v22

    move/from16 v1, v26

    if-ge v0, v1, :cond_f

    .line 4246
    const/4 v4, 0x1

    move/from16 v0, v22

    if-ne v0, v4, :cond_3

    const/4 v4, 0x1

    move/from16 v0, v37

    if-ne v0, v4, :cond_3

    .line 4248
    const/16 v37, 0x200

    .line 4249
    const-string v4, "MMTelSS"

    const-string v5, "serviceClass == 0, try to 2nd match by using SERVICE_CLASS_VIDEO"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4253
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

    .line 4258
    const/16 v19, 0x0

    .local v19, "i":I
    :goto_5
    invoke-interface/range {v34 .. v34}, Ljava/util/List;->size()I

    move-result v4

    move/from16 v0, v19

    if-ge v0, v4, :cond_7

    .line 4259
    move-object/from16 v0, v34

    move/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcom/mediatek/simservs/client/policy/Rule;

    .line 4260
    .local v31, "r":Lcom/mediatek/simservs/client/policy/Rule;
    invoke-virtual/range {v31 .. v31}, Lcom/mediatek/simservs/client/policy/Rule;->getConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v15

    .line 4261
    .local v15, "cond":Lcom/mediatek/simservs/client/policy/Conditions;
    invoke-virtual/range {v31 .. v31}, Lcom/mediatek/simservs/client/policy/Rule;->getActions()Lcom/mediatek/simservs/client/policy/Actions;

    move-result-object v11

    .line 4262
    .local v11, "action":Lcom/mediatek/simservs/client/policy/Actions;
    const/16 v24, 0x0

    .line 4264
    .local v24, "mediaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v15, :cond_d

    .line 4265
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

    .line 4270
    invoke-virtual {v15}, Lcom/mediatek/simservs/client/policy/Conditions;->getMedias()Ljava/util/List;

    move-result-object v24

    .line 4276
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

    .line 4283
    const-string v4, "MMTelSS"

    const-string v5, "handleGetCFInTimeSlot(): CFU is enabled on server"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4286
    const/16 v30, 0x1

    .line 4287
    invoke-virtual {v11}, Lcom/mediatek/simservs/client/policy/Actions;->getFowardTo()Lcom/mediatek/simservs/client/policy/ForwardTo;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 4288
    invoke-virtual {v11}, Lcom/mediatek/simservs/client/policy/Actions;->getFowardTo()Lcom/mediatek/simservs/client/policy/ForwardTo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mediatek/simservs/client/policy/ForwardTo;->getTarget()Ljava/lang/String;

    move-result-object v14

    .line 4292
    :cond_6
    invoke-virtual {v12}, Lcom/mediatek/simservs/client/CommunicationDiversion;->getNoReplyTimer()I

    move-result v25

    .line 4293
    if-eqz v15, :cond_7

    .line 4294
    invoke-virtual {v15}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendTime()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->convertToLocalTime(Ljava/lang/String;)[J

    move-result-object v38

    .line 4302
    .end local v11    # "action":Lcom/mediatek/simservs/client/policy/Actions;
    .end local v15    # "cond":Lcom/mediatek/simservs/client/policy/Conditions;
    .end local v24    # "mediaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v31    # "r":Lcom/mediatek/simservs/client/policy/Rule;
    :cond_7
    new-instance v23, Lcom/android/internal/telephony/CallForwardInfoEx;

    invoke-direct/range {v23 .. v23}, Lcom/android/internal/telephony/CallForwardInfoEx;-><init>()V

    .line 4303
    .local v23, "item":Lcom/android/internal/telephony/CallForwardInfoEx;
    move/from16 v0, v30

    move-object/from16 v1, v23

    iput v0, v1, Lcom/android/internal/telephony/CallForwardInfoEx;->status:I

    .line 4304
    move/from16 v0, v32

    move-object/from16 v1, v23

    iput v0, v1, Lcom/android/internal/telephony/CallForwardInfoEx;->reason:I

    .line 4305
    move/from16 v0, v37

    move-object/from16 v1, v23

    iput v0, v1, Lcom/android/internal/telephony/CallForwardInfoEx;->serviceClass:I

    .line 4306
    const/4 v4, 0x0

    move-object/from16 v0, v23

    iput v4, v0, Lcom/android/internal/telephony/CallForwardInfoEx;->toa:I

    .line 4307
    move-object/from16 v0, v23

    iput-object v14, v0, Lcom/android/internal/telephony/CallForwardInfoEx;->number:Ljava/lang/String;

    .line 4308
    move/from16 v0, v25

    move-object/from16 v1, v23

    iput v0, v1, Lcom/android/internal/telephony/CallForwardInfoEx;->timeSeconds:I

    .line 4309
    move-object/from16 v0, v38

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/android/internal/telephony/CallForwardInfoEx;->timeSlot:[J

    .line 4310
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

    .line 4315
    move-object/from16 v0, v28

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4318
    const/16 v30, 0x0

    .line 4319
    const-string v14, ""

    .line 4320
    const/16 v25, 0x14

    .line 4321
    const/16 v38, 0x0

    .line 4245
    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_4

    .line 4180
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

    .line 4183
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

    .line 4184
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCdCache:Lcom/mediatek/simservs/client/CommunicationDiversion;
    invoke-static {v4}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/mediatek/simservs/client/CommunicationDiversion;

    move-result-object v12

    .restart local v12    # "cd":Lcom/mediatek/simservs/client/CommunicationDiversion;
    goto/16 :goto_1

    .line 4186
    .end local v12    # "cd":Lcom/mediatek/simservs/client/CommunicationDiversion;
    :cond_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # invokes: Lcom/android/internal/telephony/MMTelSSTransport;->requestXcapNetwork(I)V
    invoke-static {v4, v10}, Lcom/android/internal/telephony/MMTelSSTransport;->access$300(Lcom/android/internal/telephony/MMTelSSTransport;I)V

    .line 4188
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-static {v10}, Lcom/android/internal/telephony/MMTelSSUtils;->getXui(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/android/internal/telephony/MMTelSSTransport;->mXui:Ljava/lang/String;

    .line 4189
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-static {v10}, Lcom/android/internal/telephony/MMTelSSUtils;->getXcapRootUri(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/android/internal/telephony/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    .line 4190
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-static {v10}, Lcom/android/internal/telephony/MMTelSSUtils;->getXIntendedId(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/android/internal/telephony/MMTelSSTransport;->mXIntendedId:Ljava/lang/String;

    .line 4192
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v4, v4, Lcom/android/internal/telephony/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 4193
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

    .line 4194
    new-instance v4, Ljava/net/UnknownHostException;

    invoke-direct {v4}, Ljava/net/UnknownHostException;-><init>()V

    throw v4
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/mediatek/simservs/xcap/XcapException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 4350
    .end local v16    # "curTime":J
    :catch_1
    move-exception v40

    .line 4351
    .local v40, "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    const-string v4, "MMTelSS"

    const-string v5, "handleGetCFInTimeSlot(): XcapException"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4352
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    const/4 v5, 0x0

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCdCache:Lcom/mediatek/simservs/client/CommunicationDiversion;
    invoke-static {v4, v5}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1602(Lcom/android/internal/telephony/MMTelSSTransport;Lcom/mediatek/simservs/client/CommunicationDiversion;)Lcom/mediatek/simservs/client/CommunicationDiversion;

    .line 4353
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    const/4 v5, -0x1

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCdCachePhoneId:I
    invoke-static {v4, v5}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1802(Lcom/android/internal/telephony/MMTelSSTransport;I)I

    .line 4354
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    const-wide/16 v6, 0x0

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCdCacheLastQueried:J
    invoke-static {v4, v6, v7}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1702(Lcom/android/internal/telephony/MMTelSSTransport;J)J

    .line 4356
    invoke-virtual/range {v40 .. v40}, Lcom/mediatek/simservs/xcap/XcapException;->printStackTrace()V

    .line 4357
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v4, :cond_11

    .line 4358
    invoke-virtual/range {v40 .. v40}, Lcom/mediatek/simservs/xcap/XcapException;->isConnectionError()Z

    move-result v4

    if-eqz v4, :cond_13

    .line 4359
    const-string v4, "MMTelSS"

    const-string v5, "handleGetCFInTimeSlot(): isConnectionError()"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4360
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v5, 0x0

    new-instance v6, Ljava/net/UnknownHostException;

    invoke-direct {v6}, Ljava/net/UnknownHostException;-><init>()V

    invoke-static {v4, v5, v6}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 4364
    :goto_7
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 4365
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v4}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 4366
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v4}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->releaseNetwork()V

    goto/16 :goto_0

    .line 4197
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

    .line 4200
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

    .line 4201
    .restart local v12    # "cd":Lcom/mediatek/simservs/client/CommunicationDiversion;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCdCache:Lcom/mediatek/simservs/client/CommunicationDiversion;
    invoke-static {v4, v12}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1602(Lcom/android/internal/telephony/MMTelSSTransport;Lcom/mediatek/simservs/client/CommunicationDiversion;)Lcom/mediatek/simservs/client/CommunicationDiversion;

    .line 4202
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCdCachePhoneId:I
    invoke-static {v4, v10}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1802(Lcom/android/internal/telephony/MMTelSSTransport;I)I

    .line 4203
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    move-wide/from16 v0, v16

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCdCacheLastQueried:J
    invoke-static {v4, v0, v1}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1702(Lcom/android/internal/telephony/MMTelSSTransport;J)J

    .line 4204
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

    .line 4370
    .end local v12    # "cd":Lcom/mediatek/simservs/client/CommunicationDiversion;
    .end local v16    # "curTime":J
    :catch_2
    move-exception v18

    .line 4371
    .local v18, "e":Ljava/lang/Exception;
    const-string v4, "MMTelSS"

    const-string v5, "handleGetCFInTimeSlot(): Start to Print Stack Trace"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4372
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    const/4 v5, 0x0

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCdCache:Lcom/mediatek/simservs/client/CommunicationDiversion;
    invoke-static {v4, v5}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1602(Lcom/android/internal/telephony/MMTelSSTransport;Lcom/mediatek/simservs/client/CommunicationDiversion;)Lcom/mediatek/simservs/client/CommunicationDiversion;

    .line 4373
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    const/4 v5, -0x1

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCdCachePhoneId:I
    invoke-static {v4, v5}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1802(Lcom/android/internal/telephony/MMTelSSTransport;I)I

    .line 4374
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    const-wide/16 v6, 0x0

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCdCacheLastQueried:J
    invoke-static {v4, v6, v7}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1702(Lcom/android/internal/telephony/MMTelSSTransport;J)J

    .line 4376
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Exception;->printStackTrace()V

    .line 4377
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v4, :cond_11

    .line 4378
    const/4 v4, 0x2

    invoke-static {v4}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v13

    .line 4380
    .local v13, "ce":Lcom/android/internal/telephony/CommandException;
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v5, 0x0

    invoke-static {v4, v5, v13}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 4381
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 4382
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v4}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 4383
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v4}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->releaseNetwork()V

    goto/16 :goto_0

    .line 4218
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

    .line 4242
    .restart local v26    # "numOfComparision":I
    :cond_c
    const/16 v26, 0x1

    goto/16 :goto_3

    .line 4272
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

    .line 4298
    :cond_e
    const-string v4, "MMTelSS"

    const-string v5, "handleGetCFInTimeSlot()from xcap: Not matched this rule!"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4258
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_5

    .line 4325
    .end local v11    # "action":Lcom/mediatek/simservs/client/policy/Actions;
    .end local v15    # "cond":Lcom/mediatek/simservs/client/policy/Conditions;
    .end local v19    # "i":I
    .end local v24    # "mediaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v31    # "r":Lcom/mediatek/simservs/client/policy/Rule;
    :cond_f
    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->size()I

    move-result v29

    .line 4327
    .local v29, "queriedSize":I
    move/from16 v0, v29

    new-array v0, v0, [Lcom/android/internal/telephony/CallForwardInfoEx;

    move-object/from16 v20, v0

    .line 4328
    const/16 v21, 0x0

    .local v21, "inx":I
    :goto_8
    move/from16 v0, v21

    move/from16 v1, v29

    if-ge v0, v1, :cond_11

    .line 4329
    move-object/from16 v0, v28

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/CallForwardInfoEx;

    aput-object v4, v20, v21

    .line 4328
    add-int/lit8 v21, v21, 0x1

    goto :goto_8

    .line 4333
    .end local v21    # "inx":I
    .end local v22    # "it":I
    .end local v26    # "numOfComparision":I
    .end local v29    # "queriedSize":I
    :cond_10
    const-string v4, "MMTelSS"

    const-string v5, "handleGetCFInTimeSlot():get null ruleList"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4334
    const/4 v4, 0x0

    new-array v0, v4, [Lcom/android/internal/telephony/CallForwardInfoEx;

    move-object/from16 v20, v0
    :try_end_3
    .catch Ljava/net/UnknownHostException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lcom/mediatek/simservs/xcap/XcapException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 4335
    const/16 v30, 0x0

    .line 4389
    .end local v12    # "cd":Lcom/mediatek/simservs/client/CommunicationDiversion;
    .end local v16    # "curTime":J
    .end local v34    # "ruleList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    .end local v35    # "ruleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    :cond_11
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v4, :cond_12

    .line 4390
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v5, 0x0

    move-object/from16 v0, v20

    invoke-static {v4, v0, v5}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 4391
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 4393
    :cond_12
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v4}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 4394
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v4}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->releaseNetwork()V

    goto/16 :goto_0

    .line 4362
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
    .line 802
    const/4 v13, -0x1

    .line 803
    .local v13, "reqNo":I
    const/4 v14, -0x1

    .line 804
    .local v14, "serialNo":I
    const/4 v11, 0x0

    .line 805
    .local v11, "get_clip_result":I
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 806
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 807
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 808
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 809
    .local v7, "phoneId":I
    const-string v1, "MMTelSS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleGetCLIP() reqNo = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " serialNo = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " phoneId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 813
    invoke-static {v7}, Lcom/android/internal/telephony/MMTelSSUtils;->isPreferXcap(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 814
    const-string v1, "MMTelSS"

    const-string v2, "handleGetCLIP(): !isPreferXcap()"

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

    .line 890
    :cond_0
    :goto_0
    return-void

    .line 823
    :cond_1
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-static {v7}, Lcom/android/internal/telephony/MMTelSSUtils;->getXui(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/telephony/MMTelSSTransport;->mXui:Ljava/lang/String;

    .line 824
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-static {v7}, Lcom/android/internal/telephony/MMTelSSUtils;->getXcapRootUri(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/telephony/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    .line 825
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-static {v7}, Lcom/android/internal/telephony/MMTelSSUtils;->getXIntendedId(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/telephony/MMTelSSTransport;->mXIntendedId:Ljava/lang/String;

    .line 827
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v1, v1, Lcom/android/internal/telephony/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 828
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

    .line 829
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v1, :cond_0

    .line 830
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v2, 0x0

    new-instance v3, Ljava/net/UnknownHostException;

    invoke-direct {v3}, Ljava/net/UnknownHostException;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 831
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catch Lcom/mediatek/simservs/xcap/XcapException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 849
    :catch_0
    move-exception v15

    .line 850
    .local v15, "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    const-string v1, "MMTelSS"

    const-string v2, "handleGetCLIP(): XcapException"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 851
    invoke-virtual {v15}, Lcom/mediatek/simservs/xcap/XcapException;->printStackTrace()V

    .line 852
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v1, :cond_3

    .line 853
    invoke-virtual {v15}, Lcom/mediatek/simservs/xcap/XcapException;->isConnectionError()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 854
    const-string v1, "MMTelSS"

    const-string v2, "handleGetCLIP(): xcapException.isConnectionError()"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 855
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v2, 0x0

    new-instance v3, Ljava/net/UnknownHostException;

    invoke-direct {v3}, Ljava/net/UnknownHostException;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 859
    :goto_1
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 860
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v1}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 861
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v1}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->releaseNetwork()V

    goto/16 :goto_0

    .line 836
    .end local v15    # "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # invokes: Lcom/android/internal/telephony/MMTelSSTransport;->requestXcapNetwork(I)V
    invoke-static {v1, v7}, Lcom/android/internal/telephony/MMTelSSTransport;->access$300(Lcom/android/internal/telephony/MMTelSSTransport;I)V

    .line 838
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

    .line 840
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

    .line 842
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

    .line 843
    invoke-virtual {v12}, Lcom/mediatek/simservs/client/OriginatingIdentityPresentation;->isActive()Z
    :try_end_1
    .catch Lcom/mediatek/simservs/xcap/XcapException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    if-eqz v1, :cond_5

    .line 844
    const/4 v11, 0x1

    .line 880
    .end local v12    # "oip":Lcom/mediatek/simservs/client/OriginatingIdentityPresentation;
    :cond_3
    :goto_2
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v1, :cond_4

    .line 881
    const/4 v1, 0x1

    new-array v10, v1, [I

    .line 882
    .local v10, "get_clip_response":[I
    const/4 v1, 0x0

    aput v11, v10, v1

    .line 883
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v2, 0x0

    invoke-static {v1, v10, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 884
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 887
    .end local v10    # "get_clip_response":[I
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v1}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 888
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v1}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->releaseNetwork()V

    goto/16 :goto_0

    .line 846
    .restart local v12    # "oip":Lcom/mediatek/simservs/client/OriginatingIdentityPresentation;
    :cond_5
    const/4 v11, 0x0

    goto :goto_2

    .line 857
    .end local v12    # "oip":Lcom/mediatek/simservs/client/OriginatingIdentityPresentation;
    .restart local v15    # "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    :cond_6
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v2, 0x0

    invoke-static {v1, v2, v15}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    goto/16 :goto_1

    .line 865
    .end local v15    # "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    :catch_1
    move-exception v9

    .line 866
    .local v9, "e":Ljava/lang/Exception;
    const-string v1, "MMTelSS"

    const-string v2, "handleGetCLIP():Start to Print Stack Trace"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 867
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    .line 868
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v1, :cond_3

    .line 869
    const/4 v1, 0x2

    invoke-static {v1}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v8

    .line 870
    .local v8, "ce":Lcom/android/internal/telephony/CommandException;
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v2, 0x0

    invoke-static {v1, v2, v8}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 871
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 872
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v1}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 873
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v1}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->releaseNetwork()V

    goto/16 :goto_0
.end method

.method public handleGetCLIR(Lcom/android/internal/telephony/MMTelSSRequest;)V
    .locals 21
    .param p1, "rr"    # Lcom/android/internal/telephony/MMTelSSRequest;

    .prologue
    .line 665
    const/16 v16, 0x1

    .line 666
    .local v16, "presentation_mode":I
    const/4 v14, 0x0

    .line 667
    .local v14, "get_clir_result":I
    const/16 v17, -0x1

    .line 668
    .local v17, "reqNo":I
    const/16 v19, -0x1

    .line 670
    .local v19, "serialNo":I
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 671
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 672
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 673
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 674
    .local v8, "phoneId":I
    const-string v2, "MMTelSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleGetCLIR() reqNo = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " serialNo = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " phoneId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    invoke-static {v8}, Lcom/android/internal/telephony/MMTelSSUtils;->isPreferXcap(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 678
    const-string v2, "MMTelSS"

    const-string v3, "handleGetCLIR(): !isPreferXcap()"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v2, :cond_0

    .line 680
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v3, 0x0

    new-instance v4, Ljava/net/UnknownHostException;

    invoke-direct {v4}, Ljava/net/UnknownHostException;-><init>()V

    invoke-static {v2, v3, v4}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 681
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 798
    :cond_0
    :goto_0
    return-void

    .line 689
    :cond_1
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 690
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

    .line 692
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

    .line 694
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

    .line 695
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # invokes: Lcom/android/internal/telephony/MMTelSSTransport;->requestXcapNetwork(I)V
    invoke-static {v2, v8}, Lcom/android/internal/telephony/MMTelSSTransport;->access$300(Lcom/android/internal/telephony/MMTelSSTransport;I)V

    .line 696
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mOirCache:Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$000(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;

    move-result-object v15

    .line 697
    .local v15, "oir":Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mNetwork:Landroid/net/Network;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$400(Lcom/android/internal/telephony/MMTelSSTransport;)Landroid/net/Network;

    move-result-object v2

    invoke-virtual {v15, v2}, Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;->setNetwork(Landroid/net/Network;)V

    .line 698
    invoke-virtual {v15}, Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;->refresh()V

    .line 699
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mOirCacheLastQueried:J
    invoke-static {v2, v10, v11}, Lcom/android/internal/telephony/MMTelSSTransport;->access$102(Lcom/android/internal/telephony/MMTelSSTransport;J)J

    .line 731
    :goto_1
    invoke-virtual {v15}, Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;->isDefaultPresentationRestricted()Z
    :try_end_0
    .catch Lcom/mediatek/simservs/xcap/XcapException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v18

    .line 732
    .local v18, "restricted":Z
    const/4 v2, 0x1

    move/from16 v0, v18

    if-ne v0, v2, :cond_7

    .line 734
    const/16 v16, 0x3

    .line 735
    const/4 v14, 0x1

    .line 787
    .end local v10    # "curTime":J
    .end local v15    # "oir":Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;
    .end local v18    # "restricted":Z
    :cond_2
    :goto_2
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v2, :cond_3

    .line 788
    const/4 v2, 0x2

    new-array v13, v2, [I

    .line 789
    .local v13, "get_clir_response":[I
    const/4 v2, 0x0

    aput v14, v13, v2

    .line 790
    const/4 v2, 0x1

    aput v16, v13, v2

    .line 791
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v3, 0x0

    invoke-static {v2, v13, v3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 792
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 795
    .end local v13    # "get_clir_response":[I
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 796
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->releaseNetwork()V

    goto/16 :goto_0

    .line 700
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

    .line 703
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

    .line 704
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mOirCache:Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$000(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;

    move-result-object v15

    .restart local v15    # "oir":Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;
    goto/16 :goto_1

    .line 706
    .end local v15    # "oir":Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-static {v8}, Lcom/android/internal/telephony/MMTelSSUtils;->getXui(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/telephony/MMTelSSTransport;->mXui:Ljava/lang/String;

    .line 707
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-static {v8}, Lcom/android/internal/telephony/MMTelSSUtils;->getXcapRootUri(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/telephony/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    .line 708
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-static {v8}, Lcom/android/internal/telephony/MMTelSSUtils;->getXIntendedId(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/telephony/MMTelSSTransport;->mXIntendedId:Ljava/lang/String;

    .line 710
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v2, v2, Lcom/android/internal/telephony/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 711
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

    .line 712
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v2, :cond_0

    .line 713
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v3, 0x0

    new-instance v4, Ljava/net/UnknownHostException;

    invoke-direct {v4}, Ljava/net/UnknownHostException;-><init>()V

    invoke-static {v2, v3, v4}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 714
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V
    :try_end_1
    .catch Lcom/mediatek/simservs/xcap/XcapException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 742
    .end local v10    # "curTime":J
    :catch_0
    move-exception v20

    .line 743
    .local v20, "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    const-string v2, "MMTelSS"

    const-string v3, "handleGetCLIR(): XcapException"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 744
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    const/4 v3, 0x0

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mOirCache:Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;
    invoke-static {v2, v3}, Lcom/android/internal/telephony/MMTelSSTransport;->access$002(Lcom/android/internal/telephony/MMTelSSTransport;Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;)Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;

    .line 745
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    const/4 v3, -0x1

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mOirCachePhoneId:I
    invoke-static {v2, v3}, Lcom/android/internal/telephony/MMTelSSTransport;->access$202(Lcom/android/internal/telephony/MMTelSSTransport;I)I

    .line 746
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    const-wide/16 v4, 0x0

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mOirCacheLastQueried:J
    invoke-static {v2, v4, v5}, Lcom/android/internal/telephony/MMTelSSTransport;->access$102(Lcom/android/internal/telephony/MMTelSSTransport;J)J

    .line 748
    invoke-virtual/range {v20 .. v20}, Lcom/mediatek/simservs/xcap/XcapException;->printStackTrace()V

    .line 749
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v2, :cond_2

    .line 750
    invoke-virtual/range {v20 .. v20}, Lcom/mediatek/simservs/xcap/XcapException;->isConnectionError()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 751
    const-string v2, "MMTelSS"

    const-string v3, "handleGetCLIR(): xcapException.isConnectionError()"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 752
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v3, 0x0

    new-instance v4, Ljava/net/UnknownHostException;

    invoke-direct {v4}, Ljava/net/UnknownHostException;-><init>()V

    invoke-static {v2, v3, v4}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 756
    :goto_3
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 757
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 758
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->releaseNetwork()V

    goto/16 :goto_0

    .line 719
    .end local v20    # "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    .restart local v10    # "curTime":J
    :cond_6
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # invokes: Lcom/android/internal/telephony/MMTelSSTransport;->requestXcapNetwork(I)V
    invoke-static {v2, v8}, Lcom/android/internal/telephony/MMTelSSTransport;->access$300(Lcom/android/internal/telephony/MMTelSSTransport;I)V

    .line 721
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

    .line 723
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

    .line 724
    .restart local v15    # "oir":Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mOirCache:Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;
    invoke-static {v2, v15}, Lcom/android/internal/telephony/MMTelSSTransport;->access$002(Lcom/android/internal/telephony/MMTelSSTransport;Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;)Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;

    .line 725
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mOirCachePhoneId:I
    invoke-static {v2, v8}, Lcom/android/internal/telephony/MMTelSSTransport;->access$202(Lcom/android/internal/telephony/MMTelSSTransport;I)I

    .line 726
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mOirCacheLastQueried:J
    invoke-static {v2, v10, v11}, Lcom/android/internal/telephony/MMTelSSTransport;->access$102(Lcom/android/internal/telephony/MMTelSSTransport;J)J

    .line 727
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

    .line 762
    .end local v10    # "curTime":J
    .end local v15    # "oir":Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;
    :catch_1
    move-exception v12

    .line 764
    .local v12, "e":Ljava/lang/Exception;
    const-string v2, "MMTelSS"

    const-string v3, "handleGetCLIR():Start to Print Stack Trace"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 765
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    const/4 v3, 0x0

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mOirCache:Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;
    invoke-static {v2, v3}, Lcom/android/internal/telephony/MMTelSSTransport;->access$002(Lcom/android/internal/telephony/MMTelSSTransport;Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;)Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;

    .line 766
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    const/4 v3, -0x1

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mOirCachePhoneId:I
    invoke-static {v2, v3}, Lcom/android/internal/telephony/MMTelSSTransport;->access$202(Lcom/android/internal/telephony/MMTelSSTransport;I)I

    .line 767
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    const-wide/16 v4, 0x0

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mOirCacheLastQueried:J
    invoke-static {v2, v4, v5}, Lcom/android/internal/telephony/MMTelSSTransport;->access$102(Lcom/android/internal/telephony/MMTelSSTransport;J)J

    .line 769
    const/16 v16, 0x2

    .line 770
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V

    .line 771
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v2, :cond_2

    .line 772
    const/4 v2, 0x2

    invoke-static {v2}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v9

    .line 773
    .local v9, "ce":Lcom/android/internal/telephony/CommandException;
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v3, 0x0

    invoke-static {v2, v3, v9}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 774
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 775
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 776
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->releaseNetwork()V

    goto/16 :goto_0

    .line 738
    .end local v9    # "ce":Lcom/android/internal/telephony/CommandException;
    .end local v12    # "e":Ljava/lang/Exception;
    .restart local v10    # "curTime":J
    .restart local v15    # "oir":Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;
    .restart local v18    # "restricted":Z
    :cond_7
    const/16 v16, 0x4

    .line 739
    const/4 v14, 0x2

    goto/16 :goto_2

    .line 754
    .end local v10    # "curTime":J
    .end local v15    # "oir":Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;
    .end local v18    # "restricted":Z
    .restart local v20    # "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    :cond_8
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v3, 0x0

    move-object/from16 v0, v20

    invoke-static {v2, v3, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    goto/16 :goto_3
.end method

.method public handleGetCOLP(Lcom/android/internal/telephony/MMTelSSRequest;)V
    .locals 14
    .param p1, "rr"    # Lcom/android/internal/telephony/MMTelSSRequest;

    .prologue
    .line 898
    const/4 v10, -0x1

    .line 899
    .local v10, "reqNo":I
    const/4 v11, -0x1

    .line 900
    .local v11, "serialNo":I
    const/4 v0, 0x2

    new-array v9, v0, [I

    .line 901
    .local v9, "get_colp_response":[I
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 902
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 903
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 904
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 905
    .local v6, "phoneId":I
    const-string v0, "MMTelSS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleGetCOLP() reqNo = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " serialNo = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " phoneId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 908
    invoke-static {v6}, Lcom/android/internal/telephony/MMTelSSUtils;->isPreferXcap(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 909
    const-string v0, "MMTelSS"

    const-string v1, "handleGetCOLP(): !isPreferXcap()"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 910
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v0, :cond_0

    .line 911
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v1, 0x0

    new-instance v2, Ljava/net/UnknownHostException;

    invoke-direct {v2}, Ljava/net/UnknownHostException;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 912
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 988
    :cond_0
    :goto_0
    return-void

    .line 918
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-static {v6}, Lcom/android/internal/telephony/MMTelSSUtils;->getXui(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/MMTelSSTransport;->mXui:Ljava/lang/String;

    .line 919
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-static {v6}, Lcom/android/internal/telephony/MMTelSSUtils;->getXcapRootUri(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    .line 920
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-static {v6}, Lcom/android/internal/telephony/MMTelSSUtils;->getXIntendedId(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/MMTelSSTransport;->mXIntendedId:Ljava/lang/String;

    .line 922
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v0, v0, Lcom/android/internal/telephony/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 923
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

    .line 924
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v0, :cond_0

    .line 925
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v1, 0x0

    new-instance v2, Ljava/net/UnknownHostException;

    invoke-direct {v2}, Ljava/net/UnknownHostException;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 926
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catch Lcom/mediatek/simservs/xcap/XcapException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 947
    :catch_0
    move-exception v13

    .line 948
    .local v13, "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    const-string v0, "MMTelSS"

    const-string v1, "handleGetCOLP(): XcapException"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 949
    invoke-virtual {v13}, Lcom/mediatek/simservs/xcap/XcapException;->printStackTrace()V

    .line 950
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v0, :cond_3

    .line 951
    invoke-virtual {v13}, Lcom/mediatek/simservs/xcap/XcapException;->isConnectionError()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 952
    const-string v0, "MMTelSS"

    const-string v1, "handleGetCOLP(): xcapException.isConnectionError()"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 953
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v1, 0x0

    new-instance v2, Ljava/net/UnknownHostException;

    invoke-direct {v2}, Ljava/net/UnknownHostException;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 957
    :goto_1
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 958
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v0}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 959
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v0}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->releaseNetwork()V

    goto/16 :goto_0

    .line 931
    .end local v13    # "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # invokes: Lcom/android/internal/telephony/MMTelSSTransport;->requestXcapNetwork(I)V
    invoke-static {v0, v6}, Lcom/android/internal/telephony/MMTelSSTransport;->access$300(Lcom/android/internal/telephony/MMTelSSTransport;I)V

    .line 933
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

    .line 935
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

    .line 937
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

    .line 938
    invoke-virtual {v12}, Lcom/mediatek/simservs/client/TerminatingIdentityPresentation;->isActive()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 940
    const/4 v0, 0x0

    const/4 v1, 0x1

    aput v1, v9, v0

    .line 941
    const/4 v0, 0x1

    const/4 v1, 0x1

    aput v1, v9, v0
    :try_end_1
    .catch Lcom/mediatek/simservs/xcap/XcapException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 977
    .end local v12    # "tip":Lcom/mediatek/simservs/client/TerminatingIdentityPresentation;
    :cond_3
    :goto_2
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v0, :cond_4

    .line 981
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v1, 0x0

    invoke-static {v0, v9, v1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 982
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 985
    :cond_4
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v0}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 986
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v0}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->releaseNetwork()V

    goto/16 :goto_0

    .line 943
    .restart local v12    # "tip":Lcom/mediatek/simservs/client/TerminatingIdentityPresentation;
    :cond_5
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_2
    aput v1, v9, v0

    .line 944
    const/4 v0, 0x1

    const/4 v1, 0x0

    aput v1, v9, v0
    :try_end_2
    .catch Lcom/mediatek/simservs/xcap/XcapException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 963
    .end local v12    # "tip":Lcom/mediatek/simservs/client/TerminatingIdentityPresentation;
    :catch_1
    move-exception v8

    .line 964
    .local v8, "e":Ljava/lang/Exception;
    const-string v0, "MMTelSS"

    const-string v1, "handleGetCOLP():Start to Print Stack Trace"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 965
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .line 966
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v0, :cond_3

    .line 967
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v7

    .line 968
    .local v7, "ce":Lcom/android/internal/telephony/CommandException;
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v1, 0x0

    invoke-static {v0, v1, v7}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 969
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 970
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v0}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 971
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v0}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->releaseNetwork()V

    goto/16 :goto_0

    .line 955
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
    .line 993
    const/4 v10, -0x1

    .line 994
    .local v10, "reqNo":I
    const/4 v11, -0x1

    .line 995
    .local v11, "serialNo":I
    const/4 v0, 0x1

    new-array v9, v0, [I

    .line 996
    .local v9, "get_colr_response":[I
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 997
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 998
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 999
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1000
    .local v6, "phoneId":I
    const-string v0, "MMTelSS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleGetCOLR() reqNo = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " serialNo = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " phoneId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1003
    invoke-static {v6}, Lcom/android/internal/telephony/MMTelSSUtils;->isPreferXcap(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1004
    const-string v0, "MMTelSS"

    const-string v1, "handleGetCOLR(): !isPreferXcap()"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1005
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v0, :cond_0

    .line 1006
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v1, 0x0

    new-instance v2, Ljava/net/UnknownHostException;

    invoke-direct {v2}, Ljava/net/UnknownHostException;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1007
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1082
    :cond_0
    :goto_0
    return-void

    .line 1013
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-static {v6}, Lcom/android/internal/telephony/MMTelSSUtils;->getXui(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/MMTelSSTransport;->mXui:Ljava/lang/String;

    .line 1014
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-static {v6}, Lcom/android/internal/telephony/MMTelSSUtils;->getXcapRootUri(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    .line 1015
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-static {v6}, Lcom/android/internal/telephony/MMTelSSUtils;->getXIntendedId(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/MMTelSSTransport;->mXIntendedId:Ljava/lang/String;

    .line 1017
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v0, v0, Lcom/android/internal/telephony/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1018
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

    .line 1019
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v0, :cond_0

    .line 1020
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v1, 0x0

    new-instance v2, Ljava/net/UnknownHostException;

    invoke-direct {v2}, Ljava/net/UnknownHostException;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1021
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catch Lcom/mediatek/simservs/xcap/XcapException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 1041
    :catch_0
    move-exception v13

    .line 1042
    .local v13, "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    const-string v0, "MMTelSS"

    const-string v1, "handleGetCOLR(): XcapException"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1043
    invoke-virtual {v13}, Lcom/mediatek/simservs/xcap/XcapException;->printStackTrace()V

    .line 1044
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v0, :cond_3

    .line 1045
    invoke-virtual {v13}, Lcom/mediatek/simservs/xcap/XcapException;->isConnectionError()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1046
    const-string v0, "MMTelSS"

    const-string v1, "handleGetCOLR(): xcapException.isConnectionError()"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1047
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v1, 0x0

    new-instance v2, Ljava/net/UnknownHostException;

    invoke-direct {v2}, Ljava/net/UnknownHostException;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1051
    :goto_1
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1052
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v0}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1053
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v0}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->releaseNetwork()V

    goto/16 :goto_0

    .line 1026
    .end local v13    # "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # invokes: Lcom/android/internal/telephony/MMTelSSTransport;->requestXcapNetwork(I)V
    invoke-static {v0, v6}, Lcom/android/internal/telephony/MMTelSSTransport;->access$300(Lcom/android/internal/telephony/MMTelSSTransport;I)V

    .line 1028
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

    .line 1030
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

    .line 1032
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

    .line 1033
    invoke-virtual {v12}, Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;->isActive()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1035
    const/4 v0, 0x0

    const/4 v1, 0x1

    aput v1, v9, v0
    :try_end_1
    .catch Lcom/mediatek/simservs/xcap/XcapException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1072
    .end local v12    # "tir":Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;
    :cond_3
    :goto_2
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v0, :cond_4

    .line 1075
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v1, 0x0

    invoke-static {v0, v9, v1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1076
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1079
    :cond_4
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v0}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1080
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v0}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->releaseNetwork()V

    goto/16 :goto_0

    .line 1038
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

    .line 1057
    .end local v12    # "tir":Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;
    :catch_1
    move-exception v8

    .line 1058
    .local v8, "e":Ljava/lang/Exception;
    const-string v0, "MMTelSS"

    const-string v1, "handleGetCOLR():Start to Print Stack Trace"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1059
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .line 1060
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v0, :cond_3

    .line 1061
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v7

    .line 1062
    .local v7, "ce":Lcom/android/internal/telephony/CommandException;
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v1, 0x0

    invoke-static {v0, v1, v7}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1063
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1064
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v0}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1065
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v0}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->releaseNetwork()V

    goto/16 :goto_0

    .line 1049
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
    .line 1086
    const/16 v16, -0x1

    .line 1087
    .local v16, "reqNo":I
    const/16 v17, -0x1

    .line 1088
    .local v17, "serialNo":I
    const/4 v13, -0x1

    .line 1089
    .local v13, "cwServiceClass":I
    const/4 v2, 0x2

    new-array v15, v2, [I

    .line 1090
    .local v15, "get_cw_response":[I
    const/4 v8, 0x0

    .line 1096
    .local v8, "phoneId":I
    :try_start_0
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 1097
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 1098
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1099
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 1100
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 1101
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

    .line 1103
    invoke-static {v8}, Lcom/android/internal/telephony/MMTelSSUtils;->isPreferXcap(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1104
    const-string v2, "MMTelSS"

    const-string v3, "handleGetCW(): !isPreferXcap()"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1105
    new-instance v2, Ljava/net/UnknownHostException;

    invoke-direct {v2}, Ljava/net/UnknownHostException;-><init>()V

    throw v2
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/mediatek/simservs/xcap/XcapException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 1160
    :catch_0
    move-exception v18

    .line 1161
    .local v18, "unknownHostException":Ljava/net/UnknownHostException;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    const/4 v3, 0x0

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCwCache:Lcom/mediatek/simservs/client/CommunicationWaiting;
    invoke-static {v2, v3}, Lcom/android/internal/telephony/MMTelSSTransport;->access$702(Lcom/android/internal/telephony/MMTelSSTransport;Lcom/mediatek/simservs/client/CommunicationWaiting;)Lcom/mediatek/simservs/client/CommunicationWaiting;

    .line 1162
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    const/4 v3, -0x1

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCwCachePhoneId:I
    invoke-static {v2, v3}, Lcom/android/internal/telephony/MMTelSSTransport;->access$902(Lcom/android/internal/telephony/MMTelSSTransport;I)I

    .line 1163
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    const-wide/16 v4, 0x0

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCwCacheLastQueried:J
    invoke-static {v2, v4, v5}, Lcom/android/internal/telephony/MMTelSSTransport;->access$802(Lcom/android/internal/telephony/MMTelSSTransport;J)J

    .line 1165
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v2, :cond_3

    .line 1166
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v3, 0x0

    move-object/from16 v0, v18

    invoke-static {v2, v3, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1167
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 1168
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1169
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->releaseNetwork()V

    .line 1249
    .end local v18    # "unknownHostException":Ljava/net/UnknownHostException;
    :cond_0
    :goto_0
    return-void

    .line 1109
    :cond_1
    const/16 v2, 0x210

    if-ne v13, v2, :cond_2

    .line 1110
    const/16 v13, 0x200

    .line 1114
    :cond_2
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 1115
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

    .line 1117
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

    .line 1119
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

    .line 1120
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # invokes: Lcom/android/internal/telephony/MMTelSSTransport;->requestXcapNetwork(I)V
    invoke-static {v2, v8}, Lcom/android/internal/telephony/MMTelSSTransport;->access$300(Lcom/android/internal/telephony/MMTelSSTransport;I)V

    .line 1121
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCwCache:Lcom/mediatek/simservs/client/CommunicationWaiting;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$700(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/mediatek/simservs/client/CommunicationWaiting;

    move-result-object v12

    .line 1122
    .local v12, "cw":Lcom/mediatek/simservs/client/CommunicationWaiting;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mNetwork:Landroid/net/Network;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$400(Lcom/android/internal/telephony/MMTelSSTransport;)Landroid/net/Network;

    move-result-object v2

    invoke-virtual {v12, v2}, Lcom/mediatek/simservs/client/CommunicationWaiting;->setNetwork(Landroid/net/Network;)V

    .line 1123
    invoke-virtual {v12}, Lcom/mediatek/simservs/client/CommunicationWaiting;->refresh()V

    .line 1124
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCwCacheLastQueried:J
    invoke-static {v2, v10, v11}, Lcom/android/internal/telephony/MMTelSSTransport;->access$802(Lcom/android/internal/telephony/MMTelSSTransport;J)J

    .line 1152
    :goto_1
    invoke-virtual {v12}, Lcom/mediatek/simservs/client/CommunicationWaiting;->isActive()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1153
    const/4 v2, 0x0

    const/4 v3, 0x1

    aput v3, v15, v2

    .line 1158
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

    .line 1214
    .end local v10    # "curTime":J
    .end local v12    # "cw":Lcom/mediatek/simservs/client/CommunicationWaiting;
    :cond_3
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v2, :cond_6

    .line 1217
    const/4 v2, 0x0

    aget v2, v15, v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_5

    .line 1227
    if-nez v13, :cond_c

    .line 1230
    const/4 v2, 0x1

    aget v3, v15, v2

    or-int/lit8 v3, v3, 0x1

    aput v3, v15, v2

    .line 1231
    const/4 v2, 0x1

    aget v3, v15, v2

    or-int/lit16 v3, v3, 0x200

    aput v3, v15, v2

    .line 1240
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

    .line 1242
    :cond_5
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v3, 0x0

    invoke-static {v2, v15, v3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1243
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 1246
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1247
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->releaseNetwork()V

    goto/16 :goto_0

    .line 1125
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

    .line 1128
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

    .line 1129
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCwCache:Lcom/mediatek/simservs/client/CommunicationWaiting;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$700(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/mediatek/simservs/client/CommunicationWaiting;

    move-result-object v12

    .restart local v12    # "cw":Lcom/mediatek/simservs/client/CommunicationWaiting;
    goto/16 :goto_1

    .line 1131
    .end local v12    # "cw":Lcom/mediatek/simservs/client/CommunicationWaiting;
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # invokes: Lcom/android/internal/telephony/MMTelSSTransport;->requestXcapNetwork(I)V
    invoke-static {v2, v8}, Lcom/android/internal/telephony/MMTelSSTransport;->access$300(Lcom/android/internal/telephony/MMTelSSTransport;I)V

    .line 1133
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-static {v8}, Lcom/android/internal/telephony/MMTelSSUtils;->getXui(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/telephony/MMTelSSTransport;->mXui:Ljava/lang/String;

    .line 1134
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-static {v8}, Lcom/android/internal/telephony/MMTelSSUtils;->getXcapRootUri(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/telephony/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    .line 1135
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-static {v8}, Lcom/android/internal/telephony/MMTelSSUtils;->getXIntendedId(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/telephony/MMTelSSTransport;->mXIntendedId:Ljava/lang/String;

    .line 1137
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v2, v2, Lcom/android/internal/telephony/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1138
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

    .line 1139
    new-instance v2, Ljava/net/UnknownHostException;

    invoke-direct {v2}, Ljava/net/UnknownHostException;-><init>()V

    throw v2
    :try_end_2
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/mediatek/simservs/xcap/XcapException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 1173
    .end local v10    # "curTime":J
    :catch_1
    move-exception v19

    .line 1174
    .local v19, "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    const-string v2, "MMTelSS"

    const-string v3, "handleGetCW(): XcapException"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1175
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    const/4 v3, 0x0

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCwCache:Lcom/mediatek/simservs/client/CommunicationWaiting;
    invoke-static {v2, v3}, Lcom/android/internal/telephony/MMTelSSTransport;->access$702(Lcom/android/internal/telephony/MMTelSSTransport;Lcom/mediatek/simservs/client/CommunicationWaiting;)Lcom/mediatek/simservs/client/CommunicationWaiting;

    .line 1176
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    const/4 v3, -0x1

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCwCachePhoneId:I
    invoke-static {v2, v3}, Lcom/android/internal/telephony/MMTelSSTransport;->access$902(Lcom/android/internal/telephony/MMTelSSTransport;I)I

    .line 1177
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    const-wide/16 v4, 0x0

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCwCacheLastQueried:J
    invoke-static {v2, v4, v5}, Lcom/android/internal/telephony/MMTelSSTransport;->access$802(Lcom/android/internal/telephony/MMTelSSTransport;J)J

    .line 1179
    invoke-virtual/range {v19 .. v19}, Lcom/mediatek/simservs/xcap/XcapException;->printStackTrace()V

    .line 1180
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v2, :cond_3

    .line 1181
    invoke-virtual/range {v19 .. v19}, Lcom/mediatek/simservs/xcap/XcapException;->isConnectionError()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1182
    const-string v2, "MMTelSS"

    const-string v3, "handleGetCW(): xcapException.isConnectionError()"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1183
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v3, 0x0

    new-instance v4, Ljava/net/UnknownHostException;

    invoke-direct {v4}, Ljava/net/UnknownHostException;-><init>()V

    invoke-static {v2, v3, v4}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1187
    :goto_4
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 1188
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1189
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->releaseNetwork()V

    goto/16 :goto_0

    .line 1142
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

    .line 1144
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

    .line 1145
    .restart local v12    # "cw":Lcom/mediatek/simservs/client/CommunicationWaiting;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCwCache:Lcom/mediatek/simservs/client/CommunicationWaiting;
    invoke-static {v2, v12}, Lcom/android/internal/telephony/MMTelSSTransport;->access$702(Lcom/android/internal/telephony/MMTelSSTransport;Lcom/mediatek/simservs/client/CommunicationWaiting;)Lcom/mediatek/simservs/client/CommunicationWaiting;

    .line 1146
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCwCachePhoneId:I
    invoke-static {v2, v8}, Lcom/android/internal/telephony/MMTelSSTransport;->access$902(Lcom/android/internal/telephony/MMTelSSTransport;I)I

    .line 1147
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCwCacheLastQueried:J
    invoke-static {v2, v10, v11}, Lcom/android/internal/telephony/MMTelSSTransport;->access$802(Lcom/android/internal/telephony/MMTelSSTransport;J)J

    .line 1148
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

    .line 1193
    .end local v10    # "curTime":J
    .end local v12    # "cw":Lcom/mediatek/simservs/client/CommunicationWaiting;
    :catch_2
    move-exception v14

    .line 1194
    .local v14, "e":Ljava/lang/Exception;
    const-string v2, "MMTelSS"

    const-string v3, "handleGetCW():Start to Print Stack Trace"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1195
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    const/4 v3, 0x0

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCwCache:Lcom/mediatek/simservs/client/CommunicationWaiting;
    invoke-static {v2, v3}, Lcom/android/internal/telephony/MMTelSSTransport;->access$702(Lcom/android/internal/telephony/MMTelSSTransport;Lcom/mediatek/simservs/client/CommunicationWaiting;)Lcom/mediatek/simservs/client/CommunicationWaiting;

    .line 1196
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    const/4 v3, -0x1

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCwCachePhoneId:I
    invoke-static {v2, v3}, Lcom/android/internal/telephony/MMTelSSTransport;->access$902(Lcom/android/internal/telephony/MMTelSSTransport;I)I

    .line 1197
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    const-wide/16 v4, 0x0

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCwCacheLastQueried:J
    invoke-static {v2, v4, v5}, Lcom/android/internal/telephony/MMTelSSTransport;->access$802(Lcom/android/internal/telephony/MMTelSSTransport;J)J

    .line 1199
    invoke-virtual {v14}, Ljava/lang/Exception;->printStackTrace()V

    .line 1200
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v2, :cond_3

    .line 1201
    const/4 v2, 0x2

    invoke-static {v2}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v9

    .line 1202
    .local v9, "ce":Lcom/android/internal/telephony/CommandException;
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v3, 0x0

    invoke-static {v2, v3, v9}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1203
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 1204
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1205
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->releaseNetwork()V

    goto/16 :goto_0

    .line 1156
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

    .line 1185
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

    .line 1233
    .end local v19    # "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    :cond_c
    const/4 v2, 0x1

    aget v3, v15, v2

    or-int/2addr v3, v13

    aput v3, v15, v2

    .line 1234
    const/16 v2, 0x200

    if-ne v13, v2, :cond_4

    .line 1237
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

    .line 4763
    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Lcom/android/internal/telephony/MMTelSSRequest;

    move-object v7, v9

    check-cast v7, Lcom/android/internal/telephony/MMTelSSRequest;

    .line 4764
    .local v7, "rr":Lcom/android/internal/telephony/MMTelSSRequest;
    const/4 v5, 0x0

    .line 4766
    .local v5, "req":Lcom/android/internal/telephony/MMTelSSRequest;
    iget v9, p1, Landroid/os/Message;->what:I

    packed-switch v9, :pswitch_data_0

    .line 4937
    :cond_0
    :goto_0
    return-void

    .line 4773
    :pswitch_0
    const/4 v1, 0x0

    .line 4774
    .local v1, "alreadySubtracted":Z
    const/4 v6, -0x1

    .line 4775
    .local v6, "reqNo":I
    const/4 v8, -0x1

    .line 4777
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

    .line 4781
    :try_start_0
    iget-object v9, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v10, v9, Lcom/android/internal/telephony/MMTelSSTransport;->mRequestsList:Ljava/util/ArrayList;

    monitor-enter v10
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4782
    :try_start_1
    iget-object v9, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v9, v9, Lcom/android/internal/telephony/MMTelSSTransport;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4783
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4785
    :try_start_2
    iget-object v9, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget v10, v9, Lcom/android/internal/telephony/MMTelSSTransport;->mRequestMessagesPending:I

    add-int/lit8 v10, v10, -0x1

    iput v10, v9, Lcom/android/internal/telephony/MMTelSSTransport;->mRequestMessagesPending:I

    .line 4786
    const/4 v1, 0x1

    .line 4791
    iget-object v9, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget v10, v7, Lcom/android/internal/telephony/MMTelSSRequest;->mSerial:I

    # invokes: Lcom/android/internal/telephony/MMTelSSTransport;->findAndRemoveRequestFromList(I)Lcom/android/internal/telephony/MMTelSSRequest;
    invoke-static {v9, v10}, Lcom/android/internal/telephony/MMTelSSTransport;->access$2000(Lcom/android/internal/telephony/MMTelSSTransport;I)Lcom/android/internal/telephony/MMTelSSRequest;

    .line 4794
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

    .line 4796
    iget v9, v7, Lcom/android/internal/telephony/MMTelSSRequest;->mRequest:I

    packed-switch v9, :pswitch_data_1

    .line 4864
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

    .line 4865
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

    .line 4870
    :catch_0
    move-exception v3

    .line 4871
    .local v3, "exc":Ljava/lang/RuntimeException;
    :try_start_3
    const-string v9, "MMTelSS"

    const-string v10, "Uncaught exception "

    invoke-static {v9, v10, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4872
    iget-object v9, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget v10, v7, Lcom/android/internal/telephony/MMTelSSRequest;->mSerial:I

    # invokes: Lcom/android/internal/telephony/MMTelSSTransport;->findAndRemoveRequestFromList(I)Lcom/android/internal/telephony/MMTelSSRequest;
    invoke-static {v9, v10}, Lcom/android/internal/telephony/MMTelSSTransport;->access$2000(Lcom/android/internal/telephony/MMTelSSTransport;I)Lcom/android/internal/telephony/MMTelSSRequest;

    move-result-object v5

    .line 4875
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

    .line 4878
    if-nez v5, :cond_1

    if-nez v1, :cond_2

    .line 4879
    :cond_1
    const/4 v9, 0x2

    const/4 v10, 0x0

    invoke-virtual {v7, v9, v10}, Lcom/android/internal/telephony/MMTelSSRequest;->onError(ILjava/lang/Object;)V

    .line 4880
    invoke-virtual {v7}, Lcom/android/internal/telephony/MMTelSSRequest;->release()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 4886
    :cond_2
    iget-object v9, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # invokes: Lcom/android/internal/telephony/MMTelSSTransport;->releaseWakeLockIfDone()V
    invoke-static {v9}, Lcom/android/internal/telephony/MMTelSSTransport;->access$2100(Lcom/android/internal/telephony/MMTelSSTransport;)V

    .line 4890
    .end local v3    # "exc":Ljava/lang/RuntimeException;
    :goto_1
    if-nez v1, :cond_3

    .line 4891
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

    .line 4894
    iget-object v9, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget v10, v9, Lcom/android/internal/telephony/MMTelSSTransport;->mRequestMessagesPending:I

    add-int/lit8 v10, v10, -0x1

    iput v10, v9, Lcom/android/internal/telephony/MMTelSSTransport;->mRequestMessagesPending:I

    .line 4899
    :cond_3
    iget-object v9, v7, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    if-eqz v9, :cond_4

    .line 4900
    iget-object v9, v7, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v9}, Landroid/os/Parcel;->recycle()V

    .line 4901
    iput-object v13, v7, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    .line 4904
    :cond_4
    iget-object v9, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget v9, v9, Lcom/android/internal/telephony/MMTelSSTransport;->mRequestMessagesPending:I

    if-nez v9, :cond_5

    iget-object v9, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v9, v9, Lcom/android/internal/telephony/MMTelSSTransport;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-eqz v9, :cond_0

    .line 4905
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

    .line 4783
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

    .line 4886
    :catchall_1
    move-exception v9

    iget-object v10, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # invokes: Lcom/android/internal/telephony/MMTelSSTransport;->releaseWakeLockIfDone()V
    invoke-static {v10}, Lcom/android/internal/telephony/MMTelSSTransport;->access$2100(Lcom/android/internal/telephony/MMTelSSTransport;)V

    throw v9

    .line 4798
    :pswitch_1
    :try_start_6
    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->handleSetCLIR(Lcom/android/internal/telephony/MMTelSSRequest;)I

    move-result v9

    if-ne v12, v9, :cond_6

    .line 4799
    const-string v9, "MMTelSS"

    const-string v10, "Cache out of date, handleSetCLIR() again"

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4800
    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->handleSetCLIR(Lcom/android/internal/telephony/MMTelSSRequest;)I
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 4886
    :cond_6
    :goto_2
    iget-object v9, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # invokes: Lcom/android/internal/telephony/MMTelSSTransport;->releaseWakeLockIfDone()V
    invoke-static {v9}, Lcom/android/internal/telephony/MMTelSSTransport;->access$2100(Lcom/android/internal/telephony/MMTelSSTransport;)V

    goto/16 :goto_1

    .line 4804
    :pswitch_2
    :try_start_7
    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->handleGetCLIR(Lcom/android/internal/telephony/MMTelSSRequest;)V

    goto :goto_2

    .line 4807
    :pswitch_3
    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->handleGetCLIP(Lcom/android/internal/telephony/MMTelSSRequest;)V

    goto :goto_2

    .line 4810
    :pswitch_4
    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->handleGetCOLP(Lcom/android/internal/telephony/MMTelSSRequest;)V

    goto :goto_2

    .line 4813
    :pswitch_5
    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->handleGetCOLR(Lcom/android/internal/telephony/MMTelSSRequest;)V

    goto :goto_2

    .line 4816
    :pswitch_6
    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->handleSetCW(Lcom/android/internal/telephony/MMTelSSRequest;)I

    move-result v9

    if-ne v12, v9, :cond_6

    .line 4817
    const-string v9, "MMTelSS"

    const-string v10, "Cache out of date, handleSetCW() again"

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4818
    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->handleSetCW(Lcom/android/internal/telephony/MMTelSSRequest;)I

    goto :goto_2

    .line 4822
    :pswitch_7
    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->handleGetCW(Lcom/android/internal/telephony/MMTelSSRequest;)V

    goto :goto_2

    .line 4825
    :pswitch_8
    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->handleSetCB(Lcom/android/internal/telephony/MMTelSSRequest;)I

    move-result v9

    if-ne v12, v9, :cond_6

    .line 4826
    const-string v9, "MMTelSS"

    const-string v10, "Cache out of date, handleSetCB() again"

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4827
    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->handleSetCB(Lcom/android/internal/telephony/MMTelSSRequest;)I

    goto :goto_2

    .line 4831
    :pswitch_9
    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->handleGetCB(Lcom/android/internal/telephony/MMTelSSRequest;)V

    goto :goto_2

    .line 4834
    :pswitch_a
    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->handleSetCF(Lcom/android/internal/telephony/MMTelSSRequest;)I

    move-result v9

    if-ne v12, v9, :cond_6

    .line 4835
    const-string v9, "MMTelSS"

    const-string v10, "Cache out of date, handleSetCF() again"

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4836
    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->handleSetCF(Lcom/android/internal/telephony/MMTelSSRequest;)I

    goto :goto_2

    .line 4840
    :pswitch_b
    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->handleGetCF(Lcom/android/internal/telephony/MMTelSSRequest;)V

    goto :goto_2

    .line 4843
    :pswitch_c
    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->handleSetCLIP(Lcom/android/internal/telephony/MMTelSSRequest;)V

    goto :goto_2

    .line 4846
    :pswitch_d
    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->handleSetCOLP(Lcom/android/internal/telephony/MMTelSSRequest;)V

    goto :goto_2

    .line 4849
    :pswitch_e
    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->handleSetCOLR(Lcom/android/internal/telephony/MMTelSSRequest;)V

    goto :goto_2

    .line 4853
    :pswitch_f
    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->handleSetCFInTimeSlot(Lcom/android/internal/telephony/MMTelSSRequest;)I

    move-result v9

    if-ne v12, v9, :cond_6

    .line 4854
    const-string v9, "MMTelSS"

    const-string v10, "Cache out of date, handleSetCFInTimeSlot() again"

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4856
    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->handleSetCFInTimeSlot(Lcom/android/internal/telephony/MMTelSSRequest;)I

    goto :goto_2

    .line 4860
    :pswitch_10
    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->handleGetCFInTimeSlot(Lcom/android/internal/telephony/MMTelSSRequest;)V
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_2

    .line 4915
    .end local v1    # "alreadySubtracted":Z
    .end local v6    # "reqNo":I
    .end local v8    # "serialNo":I
    :pswitch_11
    iget-object v9, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v10, v9, Lcom/android/internal/telephony/MMTelSSTransport;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v10

    .line 4916
    :try_start_8
    iget-object v9, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v9, v9, Lcom/android/internal/telephony/MMTelSSTransport;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v9}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v9

    if-eqz v9, :cond_8

    .line 4918
    iget-object v9, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v11, v9, Lcom/android/internal/telephony/MMTelSSTransport;->mRequestsList:Ljava/util/ArrayList;

    monitor-enter v11
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 4919
    :try_start_9
    iget-object v9, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v9, v9, Lcom/android/internal/telephony/MMTelSSTransport;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 4920
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

    .line 4924
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_3
    if-ge v4, v2, :cond_7

    .line 4925
    iget-object v9, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v9, v9, Lcom/android/internal/telephony/MMTelSSTransport;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Lcom/android/internal/telephony/MMTelSSRequest;

    move-object v7, v0

    .line 4926
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

    .line 4924
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 4930
    :cond_7
    monitor-exit v11
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 4932
    :try_start_a
    iget-object v9, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v9, v9, Lcom/android/internal/telephony/MMTelSSTransport;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v9}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 4934
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

    .line 4930
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

    .line 4766
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_11
    .end packed-switch

    .line 4796
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
    .line 3471
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 3472
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v83

    .line 3473
    .local v83, "reqNo":I
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v85

    .line 3474
    .local v85, "serialNo":I
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 3475
    .local v13, "facility":Ljava/lang/String;
    move-object/from16 v82, v13

    .line 3476
    .local v82, "original_facility":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 3477
    .local v14, "lockState":I
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 3478
    .local v15, "setCBServiceClass":I
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 3480
    .local v8, "phoneId":I
    const/16 v63, 0x0

    .line 3481
    .local v63, "AddRuleForBAOCWithAllMediaType":Z
    const/16 v64, 0x0

    .line 3482
    .local v64, "AddRuleForBAOICWithAllMediaType":Z
    const/16 v65, 0x0

    .line 3483
    .local v65, "AddRuleForBAOICxHWithAllMediaType":Z
    const/16 v61, 0x0

    .line 3484
    .local v61, "AddRuleForBAICWithAllMediaType":Z
    const/16 v62, 0x0

    .line 3486
    .local v62, "AddRuleForBAICrWithAllMediaType":Z
    const-string v34, "AO"

    .line 3487
    .local v34, "BAOC_RuleID":Ljava/lang/String;
    const-string v16, "OI"

    .line 3488
    .local v16, "BAOIC_RuleID":Ljava/lang/String;
    const-string v26, "OX"

    .line 3489
    .local v26, "BAOICExHC_RuleID":Ljava/lang/String;
    const-string v57, "AI"

    .line 3490
    .local v57, "BAIC_RuleID":Ljava/lang/String;
    const-string v49, "IR"

    .line 3492
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

    .line 3495
    const/16 v2, 0x210

    if-ne v15, v2, :cond_0

    .line 3496
    const/16 v15, 0x200

    .line 3499
    :cond_0
    invoke-static {v8}, Lcom/android/internal/telephony/MMTelSSUtils;->isPreferXcap(I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 3500
    const-string v2, "MMTelSS"

    const-string v3, "handleSetCB(): !isPreferXcap()"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3501
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v2, :cond_1

    .line 3502
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v3, 0x0

    new-instance v5, Ljava/net/UnknownHostException;

    invoke-direct {v5}, Ljava/net/UnknownHostException;-><init>()V

    invoke-static {v2, v3, v5}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 3503
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 3505
    :cond_1
    const/4 v2, 0x0

    .line 4131
    :goto_0
    return v2

    .line 3521
    :cond_2
    const/16 v18, 0x1

    .line 3522
    .local v18, "num_of_expansion":I
    :try_start_0
    const-string v2, "AB"

    move-object/from16 v0, v82

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    if-nez v14, :cond_5

    .line 3523
    const/16 v18, 0x5

    .line 3530
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

    .line 3531
    :cond_4
    if-eqz v14, :cond_7

    .line 3533
    const-string v2, "MMTelSS"

    const-string v3, "Not allow lockState=1 for AB(330)/AG(333)/AC(353)"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3537
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v2, :cond_7

    .line 3538
    const/4 v2, 0x2

    invoke-static {v2}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v68

    .line 3539
    .local v68, "ce":Lcom/android/internal/telephony/CommandException;
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v3, 0x0

    move-object/from16 v0, v68

    invoke-static {v2, v3, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 3540
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 3541
    const/4 v2, 0x0

    goto :goto_0

    .line 3524
    .end local v68    # "ce":Lcom/android/internal/telephony/CommandException;
    :cond_5
    const-string v2, "AG"

    move-object/from16 v0, v82

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    if-nez v14, :cond_6

    .line 3525
    const/16 v18, 0x3

    goto :goto_1

    .line 3526
    :cond_6
    const-string v2, "AC"

    move-object/from16 v0, v82

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    if-nez v14, :cond_3

    .line 3527
    const/16 v18, 0x2

    goto :goto_1

    .line 3546
    :cond_7
    const/4 v10, 0x0

    .line 3547
    .local v10, "ocb":Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;
    const/16 v75, 0x0

    .line 3548
    .local v75, "icb":Lcom/mediatek/simservs/client/IncomingCommunicationBarring;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v70

    .line 3549
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

    .line 3553
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

    .line 3557
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-static {v8}, Lcom/android/internal/telephony/MMTelSSUtils;->getXui(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/telephony/MMTelSSTransport;->mXui:Ljava/lang/String;

    .line 3558
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-static {v8}, Lcom/android/internal/telephony/MMTelSSUtils;->getXcapRootUri(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/telephony/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    .line 3559
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-static {v8}, Lcom/android/internal/telephony/MMTelSSUtils;->getXIntendedId(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/telephony/MMTelSSTransport;->mXIntendedId:Ljava/lang/String;

    .line 3560
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v2, v2, Lcom/android/internal/telephony/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 3561
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

    .line 3562
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v2, :cond_9

    .line 3563
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v3, 0x0

    new-instance v5, Ljava/net/UnknownHostException;

    invoke-direct {v5}, Ljava/net/UnknownHostException;-><init>()V

    invoke-static {v2, v3, v5}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 3565
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 3567
    :cond_9
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 3569
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # invokes: Lcom/android/internal/telephony/MMTelSSTransport;->requestXcapNetwork(I)V
    invoke-static {v2, v8}, Lcom/android/internal/telephony/MMTelSSTransport;->access$300(Lcom/android/internal/telephony/MMTelSSTransport;I)V

    .line 3570
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

    .line 3573
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

    .line 3575
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

    .line 3576
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mOcbCache:Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1000(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;

    move-result-object v10

    .line 3577
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mNetwork:Landroid/net/Network;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$400(Lcom/android/internal/telephony/MMTelSSTransport;)Landroid/net/Network;

    move-result-object v2

    invoke-virtual {v10, v2}, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;->setNetwork(Landroid/net/Network;)V

    .line 3578
    invoke-virtual {v10}, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;->refresh()V

    .line 3579
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    move-wide/from16 v0, v70

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mOcbCacheLastQueried:J
    invoke-static {v2, v0, v1}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1102(Lcom/android/internal/telephony/MMTelSSTransport;J)J

    .line 3596
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

    .line 3599
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

    .line 3604
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-static {v8}, Lcom/android/internal/telephony/MMTelSSUtils;->getXui(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/telephony/MMTelSSTransport;->mXui:Ljava/lang/String;

    .line 3605
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-static {v8}, Lcom/android/internal/telephony/MMTelSSUtils;->getXcapRootUri(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/telephony/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    .line 3606
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-static {v8}, Lcom/android/internal/telephony/MMTelSSUtils;->getXIntendedId(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/telephony/MMTelSSTransport;->mXIntendedId:Ljava/lang/String;

    .line 3608
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v2, v2, Lcom/android/internal/telephony/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 3609
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

    .line 3610
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v2, :cond_d

    .line 3611
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v3, 0x0

    new-instance v5, Ljava/net/UnknownHostException;

    invoke-direct {v5}, Ljava/net/UnknownHostException;-><init>()V

    invoke-static {v2, v3, v5}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 3613
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 3615
    :cond_d
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 3580
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

    .line 3583
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

    .line 3584
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mOcbCache:Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1000(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;

    move-result-object v10

    .line 3585
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

    .line 4066
    .end local v10    # "ocb":Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;
    .end local v70    # "curTime":J
    .end local v75    # "icb":Lcom/mediatek/simservs/client/IncomingCommunicationBarring;
    :catch_0
    move-exception v86

    .line 4067
    .local v86, "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    const/4 v3, 0x0

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mOcbCache:Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;
    invoke-static {v2, v3}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1002(Lcom/android/internal/telephony/MMTelSSTransport;Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;)Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;

    .line 4068
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    const/4 v3, -0x1

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mOcbCachePhoneId:I
    invoke-static {v2, v3}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1202(Lcom/android/internal/telephony/MMTelSSTransport;I)I

    .line 4069
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    const-wide/16 v6, 0x0

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mOcbCacheLastQueried:J
    invoke-static {v2, v6, v7}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1102(Lcom/android/internal/telephony/MMTelSSTransport;J)J

    .line 4070
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    const/4 v3, 0x0

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mIcbCache:Lcom/mediatek/simservs/client/IncomingCommunicationBarring;
    invoke-static {v2, v3}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1302(Lcom/android/internal/telephony/MMTelSSTransport;Lcom/mediatek/simservs/client/IncomingCommunicationBarring;)Lcom/mediatek/simservs/client/IncomingCommunicationBarring;

    .line 4071
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    const/4 v3, -0x1

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mIcbCachePhoneId:I
    invoke-static {v2, v3}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1502(Lcom/android/internal/telephony/MMTelSSTransport;I)I

    .line 4072
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    const-wide/16 v6, 0x0

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mIcbCacheLastQueried:J
    invoke-static {v2, v6, v7}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1402(Lcom/android/internal/telephony/MMTelSSTransport;J)J

    .line 4073
    invoke-virtual/range {v86 .. v86}, Lcom/mediatek/simservs/xcap/XcapException;->getHttpErrorCode()I

    move-result v2

    const/16 v3, 0x19c

    if-ne v2, v3, :cond_5d

    .line 4074
    const-string v2, "MMTelSS"

    const-string v3, "handleSetCB(): HTTP_ERROR_CODE_412"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4075
    const/16 v2, 0x19c

    goto/16 :goto_0

    .line 3587
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

    .line 3588
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mOcbCache:Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;
    invoke-static {v2, v10}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1002(Lcom/android/internal/telephony/MMTelSSTransport;Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;)Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;

    .line 3589
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mOcbCachePhoneId:I
    invoke-static {v2, v8}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1202(Lcom/android/internal/telephony/MMTelSSTransport;I)I

    .line 3590
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    move-wide/from16 v0, v70

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mOcbCacheLastQueried:J
    invoke-static {v2, v0, v1}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1102(Lcom/android/internal/telephony/MMTelSSTransport;J)J

    .line 3591
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

    .line 4092
    .end local v10    # "ocb":Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;
    .end local v70    # "curTime":J
    .end local v75    # "icb":Lcom/mediatek/simservs/client/IncomingCommunicationBarring;
    :catch_1
    move-exception v72

    .line 4096
    .local v72, "e":Ljava/lang/Exception;
    const-string v2, "MMTelSS"

    const-string v3, "handleSetCB():Start to Print Stack Trace"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4097
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    const/4 v3, 0x0

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mOcbCache:Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;
    invoke-static {v2, v3}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1002(Lcom/android/internal/telephony/MMTelSSTransport;Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;)Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;

    .line 4098
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    const/4 v3, -0x1

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mOcbCachePhoneId:I
    invoke-static {v2, v3}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1202(Lcom/android/internal/telephony/MMTelSSTransport;I)I

    .line 4099
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    const-wide/16 v6, 0x0

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mOcbCacheLastQueried:J
    invoke-static {v2, v6, v7}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1102(Lcom/android/internal/telephony/MMTelSSTransport;J)J

    .line 4100
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    const/4 v3, 0x0

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mIcbCache:Lcom/mediatek/simservs/client/IncomingCommunicationBarring;
    invoke-static {v2, v3}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1302(Lcom/android/internal/telephony/MMTelSSTransport;Lcom/mediatek/simservs/client/IncomingCommunicationBarring;)Lcom/mediatek/simservs/client/IncomingCommunicationBarring;

    .line 4101
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    const/4 v3, -0x1

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mIcbCachePhoneId:I
    invoke-static {v2, v3}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1502(Lcom/android/internal/telephony/MMTelSSTransport;I)I

    .line 4102
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    const-wide/16 v6, 0x0

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mIcbCacheLastQueried:J
    invoke-static {v2, v6, v7}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1402(Lcom/android/internal/telephony/MMTelSSTransport;J)J

    .line 4104
    invoke-virtual/range {v72 .. v72}, Ljava/lang/Exception;->printStackTrace()V

    .line 4109
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v2, :cond_60

    .line 4110
    const/4 v2, 0x2

    invoke-static {v2}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v68

    .line 4111
    .restart local v68    # "ce":Lcom/android/internal/telephony/CommandException;
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v3, 0x0

    move-object/from16 v0, v68

    invoke-static {v2, v3, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 4112
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 4113
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v2

    if-eqz v2, :cond_10

    .line 4114
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->releaseNetwork()V

    .line 4116
    :cond_10
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 3617
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

    .line 3618
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

    .line 3621
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

    .line 3623
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

    .line 3624
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mIcbCache:Lcom/mediatek/simservs/client/IncomingCommunicationBarring;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1300(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/mediatek/simservs/client/IncomingCommunicationBarring;

    move-result-object v75

    .line 3625
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mNetwork:Landroid/net/Network;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$400(Lcom/android/internal/telephony/MMTelSSTransport;)Landroid/net/Network;

    move-result-object v2

    move-object/from16 v0, v75

    invoke-virtual {v0, v2}, Lcom/mediatek/simservs/client/IncomingCommunicationBarring;->setNetwork(Landroid/net/Network;)V

    .line 3626
    invoke-virtual/range {v75 .. v75}, Lcom/mediatek/simservs/client/IncomingCommunicationBarring;->refresh()V

    .line 3627
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    move-wide/from16 v0, v70

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mIcbCacheLastQueried:J
    invoke-static {v2, v0, v1}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1402(Lcom/android/internal/telephony/MMTelSSTransport;J)J

    .line 3644
    :cond_12
    :goto_3
    const/16 v76, 0x0

    .local v76, "it":I
    :goto_4
    move/from16 v0, v76

    move/from16 v1, v18

    if-ge v0, v1, :cond_60

    .line 3645
    const/4 v2, 0x1

    move/from16 v0, v18

    if-eq v0, v2, :cond_13

    .line 3646
    const-string v2, "AG"

    move-object/from16 v0, v82

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 3647
    if-nez v76, :cond_1a

    const-string v13, "OI"

    .line 3664
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

    .line 3666
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

    .line 3669
    :cond_14
    invoke-virtual {v10}, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;->getRuleSet()Lcom/mediatek/simservs/client/policy/RuleSet;

    move-result-object v80

    .line 3670
    .local v80, "oRuleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    const/16 v84, 0x0

    .line 3671
    .local v84, "ruleList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    invoke-virtual {v10}, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;->createNewRuleSet()Lcom/mediatek/simservs/client/policy/RuleSet;

    move-result-object v11

    .line 3672
    .local v11, "newRuleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    const/16 v67, 0x0

    .line 3674
    .local v67, "addedNewRule":Z
    if-eqz v80, :cond_23

    .line 3675
    invoke-virtual/range {v80 .. v80}, Lcom/mediatek/simservs/client/policy/RuleSet;->getRules()Ljava/util/List;

    move-result-object v84

    .line 3681
    :goto_6
    if-eqz v84, :cond_33

    .line 3682
    const/16 v73, 0x0

    .local v73, "i":I
    :goto_7
    invoke-interface/range {v84 .. v84}, Ljava/util/List;->size()I

    move-result v2

    move/from16 v0, v73

    if-ge v0, v2, :cond_33

    .line 3683
    move-object/from16 v0, v84

    move/from16 v1, v73

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/mediatek/simservs/client/policy/Rule;

    .line 3684
    .local v12, "r":Lcom/mediatek/simservs/client/policy/Rule;
    invoke-virtual {v12}, Lcom/mediatek/simservs/client/policy/Rule;->getConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v69

    .line 3685
    .local v69, "cond":Lcom/mediatek/simservs/client/policy/Conditions;
    invoke-virtual {v12}, Lcom/mediatek/simservs/client/policy/Rule;->getActions()Lcom/mediatek/simservs/client/policy/Actions;

    move-result-object v66

    .line 3686
    .local v66, "action":Lcom/mediatek/simservs/client/policy/Actions;
    const/16 v77, 0x0

    .line 3688
    .local v77, "mediaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v69, :cond_26

    .line 3689
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

    .line 3690
    invoke-virtual/range {v69 .. v69}, Lcom/mediatek/simservs/client/policy/Conditions;->getMedias()Ljava/util/List;

    move-result-object v77

    .line 3691
    invoke-virtual/range {v69 .. v69}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendInternational()Z

    move-result v2

    if-eqz v2, :cond_24

    .line 3692
    iget-object v0, v12, Lcom/mediatek/simservs/client/policy/Rule;->mId:Ljava/lang/String;

    move-object/from16 v16, v0

    .line 3693
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

    .line 3719
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

    .line 3723
    if-nez v15, :cond_16

    if-nez v15, :cond_29

    if-nez v64, :cond_29

    .line 3724
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

    .line 3728
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

    .line 3730
    if-eqz v15, :cond_28

    .line 3731
    const/16 v24, -0x1

    const/16 v25, -0x1

    move-object/from16 v19, p0

    move-object/from16 v20, v12

    move-object/from16 v21, v11

    move/from16 v22, v15

    move/from16 v23, v8

    invoke-virtual/range {v19 .. v25}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->copyOldRuleToNewRuleSetExceptSpecificMedia(Lcom/mediatek/simservs/client/policy/Rule;Lcom/mediatek/simservs/client/policy/RuleSet;IIII)Lcom/mediatek/simservs/client/policy/Rule;

    move-result-object v78

    .line 3734
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

    .line 3735
    move-object/from16 v0, v78

    iget-object v2, v0, Lcom/mediatek/simservs/client/policy/Rule;->mId:Ljava/lang/String;

    invoke-virtual {v10, v2}, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;->saveRule(Ljava/lang/String;)V

    .line 3682
    .end local v78    # "newRule":Lcom/mediatek/simservs/client/policy/Rule;
    :cond_17
    :goto_9
    add-int/lit8 v73, v73, 0x1

    goto/16 :goto_7

    .line 3628
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

    .line 3631
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

    .line 3632
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mIcbCache:Lcom/mediatek/simservs/client/IncomingCommunicationBarring;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1300(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/mediatek/simservs/client/IncomingCommunicationBarring;

    move-result-object v75

    .line 3633
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mNetwork:Landroid/net/Network;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$400(Lcom/android/internal/telephony/MMTelSSTransport;)Landroid/net/Network;

    move-result-object v2

    move-object/from16 v0, v75

    invoke-virtual {v0, v2}, Lcom/mediatek/simservs/client/IncomingCommunicationBarring;->setNetwork(Landroid/net/Network;)V

    goto/16 :goto_3

    .line 3635
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

    .line 3636
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    move-object/from16 v0, v75

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mIcbCache:Lcom/mediatek/simservs/client/IncomingCommunicationBarring;
    invoke-static {v2, v0}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1302(Lcom/android/internal/telephony/MMTelSSTransport;Lcom/mediatek/simservs/client/IncomingCommunicationBarring;)Lcom/mediatek/simservs/client/IncomingCommunicationBarring;

    .line 3637
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mIcbCachePhoneId:I
    invoke-static {v2, v8}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1502(Lcom/android/internal/telephony/MMTelSSTransport;I)I

    .line 3638
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    move-wide/from16 v0, v70

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mIcbCacheLastQueried:J
    invoke-static {v2, v0, v1}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1402(Lcom/android/internal/telephony/MMTelSSTransport;J)J

    .line 3639
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

    .line 3648
    .restart local v76    # "it":I
    :cond_1a
    const/4 v2, 0x1

    move/from16 v0, v76

    if-ne v0, v2, :cond_1b

    const-string v13, "OX"

    goto/16 :goto_5

    .line 3649
    :cond_1b
    const/4 v2, 0x2

    move/from16 v0, v76

    if-ne v0, v2, :cond_13

    const-string v13, "AO"

    goto/16 :goto_5

    .line 3651
    :cond_1c
    const-string v2, "AC"

    move-object/from16 v0, v82

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 3652
    if-nez v76, :cond_1d

    const-string v13, "IR"

    goto/16 :goto_5

    .line 3653
    :cond_1d
    const/4 v2, 0x1

    move/from16 v0, v76

    if-ne v0, v2, :cond_13

    const-string v13, "AI"

    goto/16 :goto_5

    .line 3655
    :cond_1e
    const-string v2, "AB"

    move-object/from16 v0, v82

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 3656
    if-nez v76, :cond_1f

    const-string v13, "OI"

    goto/16 :goto_5

    .line 3657
    :cond_1f
    const/4 v2, 0x1

    move/from16 v0, v76

    if-ne v0, v2, :cond_20

    const-string v13, "OX"

    goto/16 :goto_5

    .line 3658
    :cond_20
    const/4 v2, 0x2

    move/from16 v0, v76

    if-ne v0, v2, :cond_21

    const-string v13, "AO"

    goto/16 :goto_5

    .line 3659
    :cond_21
    const/4 v2, 0x3

    move/from16 v0, v76

    if-ne v0, v2, :cond_22

    const-string v13, "IR"

    goto/16 :goto_5

    .line 3660
    :cond_22
    const/4 v2, 0x4

    move/from16 v0, v76

    if-ne v0, v2, :cond_13

    const-string v13, "AI"

    goto/16 :goto_5

    .line 3677
    .restart local v11    # "newRuleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    .restart local v67    # "addedNewRule":Z
    .restart local v80    # "oRuleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    .restart local v84    # "ruleList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    :cond_23
    const-string v2, "MMTelSS"

    const-string v3, "No MO related CB rules in remote server"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 3694
    .restart local v12    # "r":Lcom/mediatek/simservs/client/policy/Rule;
    .restart local v66    # "action":Lcom/mediatek/simservs/client/policy/Actions;
    .restart local v69    # "cond":Lcom/mediatek/simservs/client/policy/Conditions;
    .restart local v73    # "i":I
    .restart local v77    # "mediaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_24
    invoke-virtual/range {v69 .. v69}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendInternationalExHc()Z

    move-result v2

    if-eqz v2, :cond_25

    .line 3695
    iget-object v0, v12, Lcom/mediatek/simservs/client/policy/Rule;->mId:Ljava/lang/String;

    move-object/from16 v26, v0

    .line 3696
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

    .line 3698
    :cond_25
    iget-object v0, v12, Lcom/mediatek/simservs/client/policy/Rule;->mId:Ljava/lang/String;

    move-object/from16 v34, v0

    .line 3699
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
    :cond_26
    if-nez v69, :cond_27

    const-string v2, "AO"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 3704
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

    .line 3705
    const/16 v77, 0x0

    .line 3706
    const-string v2, "AO"

    move-object/from16 v0, v34

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 3707
    iget-object v0, v12, Lcom/mediatek/simservs/client/policy/Rule;->mId:Ljava/lang/String;

    move-object/from16 v34, v0

    .line 3708
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

    .line 3711
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

    .line 3712
    const-string v2, "AO"

    move-object/from16 v0, v34

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 3713
    iget-object v0, v12, Lcom/mediatek/simservs/client/policy/Rule;->mId:Ljava/lang/String;

    move-object/from16 v34, v0

    .line 3714
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

    .line 3738
    :cond_28
    const/16 v64, 0x1

    goto/16 :goto_9

    .line 3740
    :cond_29
    if-nez v15, :cond_17

    const/4 v2, 0x1

    move/from16 v0, v64

    if-ne v0, v2, :cond_17

    .line 3741
    const-string v2, "MMTelSS"

    const-string v3, "Already add rule for BAOIC with serviceClass=0 case previously"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    .line 3744
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

    .line 3748
    if-nez v15, :cond_2b

    if-nez v15, :cond_2d

    if-nez v65, :cond_2d

    .line 3749
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

    .line 3753
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

    .line 3755
    if-eqz v15, :cond_2c

    .line 3756
    const/16 v24, -0x1

    const/16 v25, -0x1

    move-object/from16 v19, p0

    move-object/from16 v20, v12

    move-object/from16 v21, v11

    move/from16 v22, v15

    move/from16 v23, v8

    invoke-virtual/range {v19 .. v25}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->copyOldRuleToNewRuleSetExceptSpecificMedia(Lcom/mediatek/simservs/client/policy/Rule;Lcom/mediatek/simservs/client/policy/RuleSet;IIII)Lcom/mediatek/simservs/client/policy/Rule;

    move-result-object v78

    .line 3759
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

    .line 3760
    move-object/from16 v0, v78

    iget-object v2, v0, Lcom/mediatek/simservs/client/policy/Rule;->mId:Ljava/lang/String;

    invoke-virtual {v10, v2}, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;->saveRule(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 3764
    .end local v78    # "newRule":Lcom/mediatek/simservs/client/policy/Rule;
    :cond_2c
    const/16 v65, 0x1

    goto/16 :goto_9

    .line 3766
    :cond_2d
    if-nez v15, :cond_17

    const/4 v2, 0x1

    move/from16 v0, v65

    if-ne v0, v2, :cond_17

    .line 3767
    const-string v2, "MMTelSS"

    const-string v3, "Already add rule for BAOICxH with serviceClass=0 case previously"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    .line 3770
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

    .line 3773
    if-nez v15, :cond_2f

    if-nez v15, :cond_31

    if-nez v63, :cond_31

    .line 3774
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

    .line 3778
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

    .line 3780
    if-eqz v15, :cond_30

    .line 3781
    const/16 v24, -0x1

    const/16 v25, -0x1

    move-object/from16 v19, p0

    move-object/from16 v20, v12

    move-object/from16 v21, v11

    move/from16 v22, v15

    move/from16 v23, v8

    invoke-virtual/range {v19 .. v25}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->copyOldRuleToNewRuleSetExceptSpecificMedia(Lcom/mediatek/simservs/client/policy/Rule;Lcom/mediatek/simservs/client/policy/RuleSet;IIII)Lcom/mediatek/simservs/client/policy/Rule;

    move-result-object v78

    .line 3784
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

    .line 3785
    move-object/from16 v0, v78

    iget-object v2, v0, Lcom/mediatek/simservs/client/policy/Rule;->mId:Ljava/lang/String;

    invoke-virtual {v10, v2}, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;->saveRule(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 3788
    .end local v78    # "newRule":Lcom/mediatek/simservs/client/policy/Rule;
    :cond_30
    const/16 v63, 0x1

    goto/16 :goto_9

    .line 3790
    :cond_31
    if-nez v15, :cond_17

    const/4 v2, 0x1

    move/from16 v0, v63

    if-ne v0, v2, :cond_17

    .line 3791
    const-string v2, "MMTelSS"

    const-string v3, "Already add rule for BAOC with serviceClass=0 case previously"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    .line 3796
    :cond_32
    const-string v2, "MMTelSS"

    const-string v3, "handleSetCB():MO Copy old rule inot newRuleSet"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3797
    const/4 v2, -0x1

    const/4 v3, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v11, v2, v3}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->copyOldRuleToNewRuleSet(Lcom/mediatek/simservs/client/policy/Rule;Lcom/mediatek/simservs/client/policy/RuleSet;II)Lcom/mediatek/simservs/client/policy/Rule;

    goto/16 :goto_9

    .line 3806
    .end local v12    # "r":Lcom/mediatek/simservs/client/policy/Rule;
    .end local v66    # "action":Lcom/mediatek/simservs/client/policy/Actions;
    .end local v69    # "cond":Lcom/mediatek/simservs/client/policy/Conditions;
    .end local v73    # "i":I
    .end local v77    # "mediaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_33
    if-nez v67, :cond_35

    .line 3810
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

    .line 3811
    const-string v41, ""

    .line 3813
    .local v41, "newRuleID":Ljava/lang/String;
    const-string v2, "AO"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_37

    .line 3814
    move-object/from16 v41, v34

    .line 3820
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

    .line 3821
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

    .line 3828
    .end local v41    # "newRuleID":Ljava/lang/String;
    :cond_35
    invoke-virtual {v11}, Lcom/mediatek/simservs/client/policy/RuleSet;->getRules()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_39

    .line 3829
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

    .line 3834
    :goto_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mUpdateSingleRule:Z
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1900(Lcom/android/internal/telephony/MMTelSSTransport;)Z

    move-result v2

    if-nez v2, :cond_3a

    .line 3835
    invoke-virtual {v10}, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;->saveRuleSet()V

    .line 3644
    .end local v11    # "newRuleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    .end local v67    # "addedNewRule":Z
    .end local v80    # "oRuleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    :cond_36
    :goto_c
    add-int/lit8 v76, v76, 0x1

    goto/16 :goto_4

    .line 3815
    .restart local v11    # "newRuleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    .restart local v41    # "newRuleID":Ljava/lang/String;
    .restart local v67    # "addedNewRule":Z
    .restart local v80    # "oRuleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    :cond_37
    const-string v2, "OI"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_38

    .line 3816
    move-object/from16 v41, v16

    goto :goto_a

    .line 3817
    :cond_38
    const-string v2, "OX"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_34

    .line 3818
    move-object/from16 v41, v26

    goto :goto_a

    .line 3831
    .end local v41    # "newRuleID":Ljava/lang/String;
    :cond_39
    const-string v2, "MMTelSS"

    const-string v3, "Dump MO SetCB XML: ruleset with empty rules"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 3837
    :cond_3a
    const/4 v2, 0x1

    move/from16 v0, v18

    if-le v0, v2, :cond_36

    .line 3838
    const/16 v79, 0x0

    .line 3839
    .local v79, "newRuleList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    invoke-virtual {v11}, Lcom/mediatek/simservs/client/policy/RuleSet;->getRules()Ljava/util/List;

    move-result-object v79

    .line 3840
    const/16 v73, 0x0

    .restart local v73    # "i":I
    :goto_d
    invoke-interface/range {v79 .. v79}, Ljava/util/List;->size()I

    move-result v2

    move/from16 v0, v73

    if-ge v0, v2, :cond_36

    .line 3841
    move-object/from16 v0, v79

    move/from16 v1, v73

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v78

    check-cast v78, Lcom/mediatek/simservs/client/policy/Rule;

    .line 3842
    .restart local v78    # "newRule":Lcom/mediatek/simservs/client/policy/Rule;
    move-object/from16 v0, v78

    iget-object v2, v0, Lcom/mediatek/simservs/client/policy/Rule;->mId:Ljava/lang/String;

    invoke-virtual {v10, v2}, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;->saveRule(Ljava/lang/String;)V

    .line 3840
    add-int/lit8 v73, v73, 0x1

    goto :goto_d

    .line 3846
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

    .line 3849
    :cond_3c
    invoke-virtual/range {v75 .. v75}, Lcom/mediatek/simservs/client/IncomingCommunicationBarring;->getRuleSet()Lcom/mediatek/simservs/client/policy/RuleSet;

    move-result-object v74

    .line 3850
    .local v74, "iRuleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    const/16 v84, 0x0

    .line 3851
    .restart local v84    # "ruleList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    invoke-virtual/range {v75 .. v75}, Lcom/mediatek/simservs/client/IncomingCommunicationBarring;->createNewRuleSet()Lcom/mediatek/simservs/client/policy/RuleSet;

    move-result-object v11

    .line 3852
    .restart local v11    # "newRuleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    const/16 v67, 0x0

    .line 3854
    .restart local v67    # "addedNewRule":Z
    if-eqz v74, :cond_40

    .line 3855
    invoke-virtual/range {v74 .. v74}, Lcom/mediatek/simservs/client/policy/RuleSet;->getRules()Ljava/util/List;

    move-result-object v84

    .line 3861
    :goto_e
    if-eqz v84, :cond_4a

    .line 3862
    const/16 v73, 0x0

    .restart local v73    # "i":I
    :goto_f
    invoke-interface/range {v84 .. v84}, Ljava/util/List;->size()I

    move-result v2

    move/from16 v0, v73

    if-ge v0, v2, :cond_4a

    .line 3863
    move-object/from16 v0, v84

    move/from16 v1, v73

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/mediatek/simservs/client/policy/Rule;

    .line 3864
    .restart local v12    # "r":Lcom/mediatek/simservs/client/policy/Rule;
    invoke-virtual {v12}, Lcom/mediatek/simservs/client/policy/Rule;->getConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v69

    .line 3865
    .restart local v69    # "cond":Lcom/mediatek/simservs/client/policy/Conditions;
    invoke-virtual {v12}, Lcom/mediatek/simservs/client/policy/Rule;->getActions()Lcom/mediatek/simservs/client/policy/Actions;

    move-result-object v66

    .line 3866
    .restart local v66    # "action":Lcom/mediatek/simservs/client/policy/Actions;
    const/16 v77, 0x0

    .line 3868
    .restart local v77    # "mediaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v69, :cond_42

    .line 3869
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

    .line 3870
    invoke-virtual/range {v69 .. v69}, Lcom/mediatek/simservs/client/policy/Conditions;->getMedias()Ljava/util/List;

    move-result-object v77

    .line 3871
    invoke-virtual/range {v69 .. v69}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendRoaming()Z

    move-result v2

    if-eqz v2, :cond_41

    .line 3872
    iget-object v0, v12, Lcom/mediatek/simservs/client/policy/Rule;->mId:Ljava/lang/String;

    move-object/from16 v49, v0

    .line 3873
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

    .line 3886
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

    .line 3890
    if-nez v15, :cond_3e

    if-nez v15, :cond_44

    if-nez v62, :cond_44

    .line 3892
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

    .line 3896
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

    .line 3898
    if-eqz v15, :cond_43

    .line 3899
    const/16 v24, -0x1

    const/16 v25, -0x1

    move-object/from16 v19, p0

    move-object/from16 v20, v12

    move-object/from16 v21, v11

    move/from16 v22, v15

    move/from16 v23, v8

    invoke-virtual/range {v19 .. v25}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->copyOldRuleToNewRuleSetExceptSpecificMedia(Lcom/mediatek/simservs/client/policy/Rule;Lcom/mediatek/simservs/client/policy/RuleSet;IIII)Lcom/mediatek/simservs/client/policy/Rule;

    move-result-object v78

    .line 3902
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

    .line 3903
    move-object/from16 v0, v78

    iget-object v2, v0, Lcom/mediatek/simservs/client/policy/Rule;->mId:Ljava/lang/String;

    move-object/from16 v0, v75

    invoke-virtual {v0, v2}, Lcom/mediatek/simservs/client/IncomingCommunicationBarring;->saveRule(Ljava/lang/String;)V

    .line 3862
    .end local v78    # "newRule":Lcom/mediatek/simservs/client/policy/Rule;
    :cond_3f
    :goto_11
    add-int/lit8 v73, v73, 0x1

    goto/16 :goto_f

    .line 3857
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

    .line 3875
    .restart local v12    # "r":Lcom/mediatek/simservs/client/policy/Rule;
    .restart local v66    # "action":Lcom/mediatek/simservs/client/policy/Actions;
    .restart local v69    # "cond":Lcom/mediatek/simservs/client/policy/Conditions;
    .restart local v73    # "i":I
    .restart local v77    # "mediaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_41
    iget-object v0, v12, Lcom/mediatek/simservs/client/policy/Rule;->mId:Ljava/lang/String;

    move-object/from16 v57, v0

    .line 3876
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

    .line 3879
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

    .line 3880
    const-string v2, "AI"

    move-object/from16 v0, v57

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3d

    .line 3881
    iget-object v0, v12, Lcom/mediatek/simservs/client/policy/Rule;->mId:Ljava/lang/String;

    move-object/from16 v57, v0

    .line 3882
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

    .line 3906
    :cond_43
    const/16 v62, 0x1

    goto :goto_11

    .line 3908
    :cond_44
    if-nez v15, :cond_3f

    const/4 v2, 0x1

    move/from16 v0, v62

    if-ne v0, v2, :cond_3f

    .line 3909
    const-string v2, "MMTelSS"

    const-string v3, "Already add rule for BAICr with serviceClass=0 case previously"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11

    .line 3912
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

    .line 3916
    if-nez v15, :cond_46

    if-nez v15, :cond_48

    if-nez v61, :cond_48

    .line 3917
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

    .line 3921
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

    .line 3923
    if-eqz v15, :cond_47

    .line 3924
    const/16 v24, -0x1

    const/16 v25, -0x1

    move-object/from16 v19, p0

    move-object/from16 v20, v12

    move-object/from16 v21, v11

    move/from16 v22, v15

    move/from16 v23, v8

    invoke-virtual/range {v19 .. v25}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->copyOldRuleToNewRuleSetExceptSpecificMedia(Lcom/mediatek/simservs/client/policy/Rule;Lcom/mediatek/simservs/client/policy/RuleSet;IIII)Lcom/mediatek/simservs/client/policy/Rule;

    move-result-object v78

    .line 3927
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

    .line 3928
    move-object/from16 v0, v78

    iget-object v2, v0, Lcom/mediatek/simservs/client/policy/Rule;->mId:Ljava/lang/String;

    move-object/from16 v0, v75

    invoke-virtual {v0, v2}, Lcom/mediatek/simservs/client/IncomingCommunicationBarring;->saveRule(Ljava/lang/String;)V

    goto/16 :goto_11

    .line 3931
    .end local v78    # "newRule":Lcom/mediatek/simservs/client/policy/Rule;
    :cond_47
    const/16 v61, 0x1

    goto/16 :goto_11

    .line 3933
    :cond_48
    if-nez v15, :cond_3f

    const/4 v2, 0x1

    move/from16 v0, v61

    if-ne v0, v2, :cond_3f

    .line 3934
    const-string v2, "MMTelSS"

    const-string v3, "Already add rule for BAIC with serviceClass=0 case previously"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_11

    .line 3939
    :cond_49
    const-string v2, "MMTelSS"

    const-string v3, "handleSetCB():MT Copy old rule inot newRuleSet"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3940
    const/4 v2, -0x1

    const/4 v3, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v11, v2, v3}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->copyOldRuleToNewRuleSet(Lcom/mediatek/simservs/client/policy/Rule;Lcom/mediatek/simservs/client/policy/RuleSet;II)Lcom/mediatek/simservs/client/policy/Rule;

    goto/16 :goto_11

    .line 3947
    .end local v12    # "r":Lcom/mediatek/simservs/client/policy/Rule;
    .end local v66    # "action":Lcom/mediatek/simservs/client/policy/Actions;
    .end local v69    # "cond":Lcom/mediatek/simservs/client/policy/Conditions;
    .end local v73    # "i":I
    .end local v77    # "mediaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_4a
    if-nez v67, :cond_4c

    .line 3951
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

    .line 3952
    const-string v41, ""

    .line 3954
    .restart local v41    # "newRuleID":Ljava/lang/String;
    const-string v2, "AI"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4d

    .line 3955
    move-object/from16 v41, v57

    .line 3959
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

    .line 3960
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

    .line 3967
    .end local v41    # "newRuleID":Ljava/lang/String;
    :cond_4c
    invoke-virtual {v11}, Lcom/mediatek/simservs/client/policy/RuleSet;->getRules()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_4e

    .line 3968
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

    .line 3973
    :goto_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mUpdateSingleRule:Z
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1900(Lcom/android/internal/telephony/MMTelSSTransport;)Z

    move-result v2

    if-nez v2, :cond_4f

    .line 3974
    invoke-virtual/range {v75 .. v75}, Lcom/mediatek/simservs/client/IncomingCommunicationBarring;->saveRuleSet()V

    goto/16 :goto_c

    .line 3956
    .restart local v41    # "newRuleID":Ljava/lang/String;
    :cond_4d
    const-string v2, "IR"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4b

    .line 3957
    move-object/from16 v41, v49

    goto :goto_12

    .line 3970
    .end local v41    # "newRuleID":Ljava/lang/String;
    :cond_4e
    const-string v2, "MMTelSS"

    const-string v3, "Dump MT SetCB XML: ruleset with empty rules"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13

    .line 3976
    :cond_4f
    const/4 v2, 0x1

    move/from16 v0, v18

    if-le v0, v2, :cond_36

    .line 3977
    const/16 v79, 0x0

    .line 3978
    .restart local v79    # "newRuleList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    invoke-virtual {v11}, Lcom/mediatek/simservs/client/policy/RuleSet;->getRules()Ljava/util/List;

    move-result-object v79

    .line 3979
    const/16 v73, 0x0

    .restart local v73    # "i":I
    :goto_14
    invoke-interface/range {v79 .. v79}, Ljava/util/List;->size()I

    move-result v2

    move/from16 v0, v73

    if-ge v0, v2, :cond_36

    .line 3980
    move-object/from16 v0, v79

    move/from16 v1, v73

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v78

    check-cast v78, Lcom/mediatek/simservs/client/policy/Rule;

    .line 3981
    .restart local v78    # "newRule":Lcom/mediatek/simservs/client/policy/Rule;
    move-object/from16 v0, v78

    iget-object v2, v0, Lcom/mediatek/simservs/client/policy/Rule;->mId:Ljava/lang/String;

    move-object/from16 v0, v75

    invoke-virtual {v0, v2}, Lcom/mediatek/simservs/client/IncomingCommunicationBarring;->saveRule(Ljava/lang/String;)V

    .line 3979
    add-int/lit8 v73, v73, 0x1

    goto :goto_14

    .line 3985
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

    .line 3987
    const/16 v21, 0x0

    .line 3988
    .local v21, "iNewRuleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    const/4 v4, 0x0

    .line 3989
    .local v4, "oNewRuleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    const/16 v81, 0x0

    .line 3990
    .local v81, "oldRuleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    const/16 v84, 0x0

    .line 3994
    .restart local v84    # "ruleList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    invoke-virtual {v10}, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;->getRuleSet()Lcom/mediatek/simservs/client/policy/RuleSet;

    move-result-object v81

    .line 3995
    if-eqz v81, :cond_51

    .line 3996
    invoke-virtual/range {v81 .. v81}, Lcom/mediatek/simservs/client/policy/RuleSet;->getRules()Ljava/util/List;

    move-result-object v84

    .line 4001
    :goto_15
    if-eqz v84, :cond_56

    .line 4002
    invoke-virtual {v10}, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;->createNewRuleSet()Lcom/mediatek/simservs/client/policy/RuleSet;

    move-result-object v4

    .line 4003
    const/16 v73, 0x0

    .restart local v73    # "i":I
    :goto_16
    invoke-interface/range {v84 .. v84}, Ljava/util/List;->size()I

    move-result v2

    move/from16 v0, v73

    if-ge v0, v2, :cond_52

    .line 4004
    move-object/from16 v0, v84

    move/from16 v1, v73

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/mediatek/simservs/client/policy/Rule;

    .line 4005
    .restart local v12    # "r":Lcom/mediatek/simservs/client/policy/Rule;
    const/4 v5, 0x1

    const/4 v6, -0x1

    const/4 v7, -0x1

    move-object/from16 v2, p0

    move-object v3, v12

    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->copyOldRuleToNewRuleSetWithDisabledCB(Lcom/mediatek/simservs/client/policy/Rule;Lcom/mediatek/simservs/client/policy/RuleSet;ZII)V

    .line 4003
    add-int/lit8 v73, v73, 0x1

    goto :goto_16

    .line 3998
    .end local v12    # "r":Lcom/mediatek/simservs/client/policy/Rule;
    .end local v73    # "i":I
    :cond_51
    const-string v2, "MMTelSS"

    const-string v3, "No MO related CB rules in remote server"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15

    .line 4008
    .restart local v73    # "i":I
    :cond_52
    invoke-virtual {v4}, Lcom/mediatek/simservs/client/policy/RuleSet;->getRules()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_54

    .line 4009
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

    .line 4013
    :goto_17
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mUpdateSingleRule:Z
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1900(Lcom/android/internal/telephony/MMTelSSTransport;)Z

    move-result v2

    if-nez v2, :cond_55

    .line 4014
    invoke-virtual {v10}, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;->saveRuleSet()V

    .line 4027
    .end local v73    # "i":I
    :cond_53
    :goto_18
    invoke-virtual/range {v75 .. v75}, Lcom/mediatek/simservs/client/IncomingCommunicationBarring;->getRuleSet()Lcom/mediatek/simservs/client/policy/RuleSet;

    move-result-object v81

    .line 4028
    if-eqz v81, :cond_57

    .line 4029
    invoke-virtual/range {v81 .. v81}, Lcom/mediatek/simservs/client/policy/RuleSet;->getRules()Ljava/util/List;

    move-result-object v84

    .line 4034
    :goto_19
    if-eqz v84, :cond_5b

    .line 4035
    invoke-virtual/range {v75 .. v75}, Lcom/mediatek/simservs/client/IncomingCommunicationBarring;->createNewRuleSet()Lcom/mediatek/simservs/client/policy/RuleSet;

    move-result-object v21

    .line 4036
    const/16 v73, 0x0

    .restart local v73    # "i":I
    :goto_1a
    invoke-interface/range {v84 .. v84}, Ljava/util/List;->size()I

    move-result v2

    move/from16 v0, v73

    if-ge v0, v2, :cond_58

    .line 4037
    move-object/from16 v0, v84

    move/from16 v1, v73

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/mediatek/simservs/client/policy/Rule;

    .line 4038
    .restart local v12    # "r":Lcom/mediatek/simservs/client/policy/Rule;
    const/16 v22, 0x1

    const/16 v23, -0x1

    const/16 v24, -0x1

    move-object/from16 v19, p0

    move-object/from16 v20, v12

    invoke-virtual/range {v19 .. v24}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->copyOldRuleToNewRuleSetWithDisabledCB(Lcom/mediatek/simservs/client/policy/Rule;Lcom/mediatek/simservs/client/policy/RuleSet;ZII)V

    .line 4036
    add-int/lit8 v73, v73, 0x1

    goto :goto_1a

    .line 4011
    .end local v12    # "r":Lcom/mediatek/simservs/client/policy/Rule;
    :cond_54
    const-string v2, "MMTelSS"

    const-string v3, "Dump MO Disable All CB XML: ruleset with empty rules"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_17

    .line 4016
    :cond_55
    const/16 v79, 0x0

    .line 4017
    .restart local v79    # "newRuleList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    invoke-virtual {v4}, Lcom/mediatek/simservs/client/policy/RuleSet;->getRules()Ljava/util/List;

    move-result-object v79

    .line 4018
    const/16 v73, 0x0

    :goto_1b
    invoke-interface/range {v79 .. v79}, Ljava/util/List;->size()I

    move-result v2

    move/from16 v0, v73

    if-ge v0, v2, :cond_53

    .line 4019
    move-object/from16 v0, v79

    move/from16 v1, v73

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v78

    check-cast v78, Lcom/mediatek/simservs/client/policy/Rule;

    .line 4020
    .restart local v78    # "newRule":Lcom/mediatek/simservs/client/policy/Rule;
    move-object/from16 v0, v78

    iget-object v2, v0, Lcom/mediatek/simservs/client/policy/Rule;->mId:Ljava/lang/String;

    invoke-virtual {v10, v2}, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;->saveRule(Ljava/lang/String;)V

    .line 4018
    add-int/lit8 v73, v73, 0x1

    goto :goto_1b

    .line 4024
    .end local v73    # "i":I
    .end local v78    # "newRule":Lcom/mediatek/simservs/client/policy/Rule;
    .end local v79    # "newRuleList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    :cond_56
    const-string v2, "MMTelSS"

    const-string v3, "No MO related CB rules in remote server"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_18

    .line 4031
    :cond_57
    const-string v2, "MMTelSS"

    const-string v3, "No MT related CB rules in remote server"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_19

    .line 4041
    .restart local v73    # "i":I
    :cond_58
    invoke-virtual/range {v21 .. v21}, Lcom/mediatek/simservs/client/policy/RuleSet;->getRules()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_59

    .line 4042
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

    .line 4046
    :goto_1c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mUpdateSingleRule:Z
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1900(Lcom/android/internal/telephony/MMTelSSTransport;)Z

    move-result v2

    if-nez v2, :cond_5a

    .line 4047
    invoke-virtual/range {v75 .. v75}, Lcom/mediatek/simservs/client/IncomingCommunicationBarring;->saveRuleSet()V

    goto/16 :goto_c

    .line 4044
    :cond_59
    const-string v2, "MMTelSS"

    const-string v3, "Dump MT Disable All CB XML: ruleset with empty rules"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1c

    .line 4049
    :cond_5a
    const/16 v79, 0x0

    .line 4050
    .restart local v79    # "newRuleList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    invoke-virtual/range {v21 .. v21}, Lcom/mediatek/simservs/client/policy/RuleSet;->getRules()Ljava/util/List;

    move-result-object v79

    .line 4051
    const/16 v73, 0x0

    :goto_1d
    invoke-interface/range {v79 .. v79}, Ljava/util/List;->size()I

    move-result v2

    move/from16 v0, v73

    if-ge v0, v2, :cond_36

    .line 4052
    move-object/from16 v0, v79

    move/from16 v1, v73

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v78

    check-cast v78, Lcom/mediatek/simservs/client/policy/Rule;

    .line 4053
    .restart local v78    # "newRule":Lcom/mediatek/simservs/client/policy/Rule;
    move-object/from16 v0, v78

    iget-object v2, v0, Lcom/mediatek/simservs/client/policy/Rule;->mId:Ljava/lang/String;

    move-object/from16 v0, v75

    invoke-virtual {v0, v2}, Lcom/mediatek/simservs/client/IncomingCommunicationBarring;->saveRule(Ljava/lang/String;)V

    .line 4051
    add-int/lit8 v73, v73, 0x1

    goto :goto_1d

    .line 4057
    .end local v73    # "i":I
    .end local v78    # "newRule":Lcom/mediatek/simservs/client/policy/Rule;
    .end local v79    # "newRuleList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    :cond_5b
    const-string v2, "MMTelSS"

    const-string v3, "No MT related CB rules in remote server"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c

    .line 4062
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

    .line 4077
    .end local v10    # "ocb":Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;
    .end local v70    # "curTime":J
    .end local v75    # "icb":Lcom/mediatek/simservs/client/IncomingCommunicationBarring;
    .end local v76    # "it":I
    .restart local v86    # "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    :cond_5d
    const-string v2, "MMTelSS"

    const-string v3, "handleSetCB(): XcapException"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4078
    invoke-virtual/range {v86 .. v86}, Lcom/mediatek/simservs/xcap/XcapException;->printStackTrace()V

    .line 4079
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v2, :cond_60

    .line 4080
    invoke-virtual/range {v86 .. v86}, Lcom/mediatek/simservs/xcap/XcapException;->isConnectionError()Z

    move-result v2

    if-eqz v2, :cond_5f

    .line 4081
    const-string v2, "MMTelSS"

    const-string v3, "handleSetCB(): xcapException.isConnectionError()"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4082
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v3, 0x0

    new-instance v5, Ljava/net/UnknownHostException;

    invoke-direct {v5}, Ljava/net/UnknownHostException;-><init>()V

    invoke-static {v2, v3, v5}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 4086
    :goto_1e
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 4087
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v2

    if-eqz v2, :cond_5e

    .line 4088
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->releaseNetwork()V

    .line 4090
    :cond_5e
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 4084
    :cond_5f
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v3, 0x0

    move-object/from16 v0, v86

    invoke-static {v2, v3, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    goto :goto_1e

    .line 4122
    .end local v86    # "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    :cond_60
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v2, :cond_61

    .line 4123
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-static {v2, v3, v5}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 4124
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 4127
    :cond_61
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v2

    if-eqz v2, :cond_62

    .line 4128
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->releaseNetwork()V

    .line 4131
    :cond_62
    const/4 v2, 0x0

    goto/16 :goto_0
.end method

.method public handleSetCF(Lcom/android/internal/telephony/MMTelSSRequest;)I
    .locals 90
    .param p1, "rr"    # Lcom/android/internal/telephony/MMTelSSRequest;

    .prologue
    .line 3054
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 3055
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v83

    .line 3056
    .local v83, "reqNo":I
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v87

    .line 3058
    .local v87, "serialNo":I
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 3059
    .local v14, "setCFAction":I
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 3060
    .local v13, "setCFReason":I
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 3061
    .local v15, "setCFServiceClass":I
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 3062
    .local v16, "setCFNumber":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 3063
    .local v17, "setCFTimeSeconds":I
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 3064
    .local v8, "phoneId":I
    const/16 v82, 0x0

    .line 3066
    .local v82, "reportFlag":I
    const/16 v68, 0x0

    .line 3067
    .local v68, "AddRuleForCFUWithAllMediaType":Z
    const/16 v64, 0x0

    .line 3068
    .local v64, "AddRuleForCFBWithAllMediaType":Z
    const/16 v65, 0x0

    .line 3069
    .local v65, "AddRuleForCFNoAnswerWithAllMediaType":Z
    const/16 v66, 0x0

    .line 3070
    .local v66, "AddRuleForCFNotReachableWithAllMediaType":Z
    const/16 v67, 0x0

    .line 3072
    .local v67, "AddRuleForCFNotRegisteredWithAllMediaType":Z
    const-string v60, "CFU"

    .line 3073
    .local v60, "CFU_RuleID":Ljava/lang/String;
    const-string v18, "CFB"

    .line 3074
    .local v18, "CFB_RuleID":Ljava/lang/String;
    const-string v30, "CFNoAnswer"

    .line 3075
    .local v30, "CFNoAnswer_RuleID":Ljava/lang/String;
    const-string v40, "CFNotReachable"

    .line 3076
    .local v40, "CFNotReachable_RuleID":Ljava/lang/String;
    const-string v50, "CFNotReachable"

    .line 3078
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

    .line 3080
    const-string v2, "persist.radio.xcap.cfn"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v69

    .line 3081
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

    .line 3082
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

    .line 3083
    const-string v2, "persist.radio.ss.mode"

    const-string v3, "Prefer XCAP"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v88

    .line 3084
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

    .line 3085
    const-string v2, "Prefer XCAP"

    move-object/from16 v0, v88

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3086
    move-object/from16 v16, v69

    .line 3091
    .end local v88    # "ss_mode":Ljava/lang/String;
    :cond_1
    const/16 v2, 0x210

    if-ne v15, v2, :cond_2

    .line 3092
    const/16 v15, 0x200

    .line 3095
    :cond_2
    invoke-static {v8}, Lcom/android/internal/telephony/MMTelSSUtils;->isPreferXcap(I)Z

    move-result v2

    if-nez v2, :cond_4

    .line 3096
    const-string v2, "MMTelSS"

    const-string v3, "handleSetCF(): !isPreferXcap()"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3097
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v2, :cond_3

    .line 3098
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v3, 0x0

    new-instance v4, Ljava/net/UnknownHostException;

    invoke-direct {v4}, Ljava/net/UnknownHostException;-><init>()V

    invoke-static {v2, v3, v4}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 3099
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 3101
    :cond_3
    const/4 v2, 0x0

    .line 3467
    :goto_0
    return v2

    .line 3106
    :cond_4
    const/16 v20, 0x1

    .line 3108
    .local v20, "num_of_expansion":I
    const/4 v2, 0x5

    if-ne v13, v2, :cond_7

    .line 3110
    const/16 v20, 0x4

    .line 3117
    :cond_5
    :goto_1
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v74

    .line 3118
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

    .line 3121
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-static {v8}, Lcom/android/internal/telephony/MMTelSSUtils;->getXui(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/telephony/MMTelSSTransport;->mXui:Ljava/lang/String;

    .line 3122
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-static {v8}, Lcom/android/internal/telephony/MMTelSSUtils;->getXcapRootUri(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/telephony/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    .line 3123
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-static {v8}, Lcom/android/internal/telephony/MMTelSSUtils;->getXIntendedId(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/telephony/MMTelSSTransport;->mXIntendedId:Ljava/lang/String;

    .line 3125
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v2, v2, Lcom/android/internal/telephony/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 3126
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

    .line 3127
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v2, :cond_6

    .line 3128
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v3, 0x0

    new-instance v4, Ljava/net/UnknownHostException;

    invoke-direct {v4}, Ljava/net/UnknownHostException;-><init>()V

    invoke-static {v2, v3, v4}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 3129
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 3131
    :cond_6
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 3111
    .end local v74    # "curTime":J
    :cond_7
    const/4 v2, 0x4

    if-ne v13, v2, :cond_5

    .line 3113
    const/16 v20, 0x5

    goto/16 :goto_1

    .line 3133
    .restart local v74    # "curTime":J
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # invokes: Lcom/android/internal/telephony/MMTelSSTransport;->requestXcapNetwork(I)V
    invoke-static {v2, v8}, Lcom/android/internal/telephony/MMTelSSTransport;->access$300(Lcom/android/internal/telephony/MMTelSSTransport;I)V

    .line 3134
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

    .line 3136
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

    .line 3138
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

    .line 3139
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCdCache:Lcom/mediatek/simservs/client/CommunicationDiversion;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/mediatek/simservs/client/CommunicationDiversion;

    move-result-object v10

    .line 3140
    .local v10, "cd":Lcom/mediatek/simservs/client/CommunicationDiversion;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mNetwork:Landroid/net/Network;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$400(Lcom/android/internal/telephony/MMTelSSTransport;)Landroid/net/Network;

    move-result-object v2

    invoke-virtual {v10, v2}, Lcom/mediatek/simservs/client/CommunicationDiversion;->setNetwork(Landroid/net/Network;)V

    .line 3141
    invoke-virtual {v10}, Lcom/mediatek/simservs/client/CommunicationDiversion;->refresh()V

    .line 3142
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    move-wide/from16 v0, v74

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCdCacheLastQueried:J
    invoke-static {v2, v0, v1}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1702(Lcom/android/internal/telephony/MMTelSSTransport;J)J

    .line 3158
    :goto_2
    const/16 v78, 0x0

    .local v78, "it":I
    :goto_3
    move/from16 v0, v78

    move/from16 v1, v20

    if-ge v0, v1, :cond_40

    .line 3159
    const/4 v2, 0x1

    move/from16 v0, v20

    if-eq v0, v2, :cond_9

    .line 3160
    if-nez v78, :cond_11

    const/4 v13, 0x1

    .line 3168
    :cond_9
    :goto_4
    add-int/lit8 v2, v20, -0x1

    move/from16 v0, v78

    if-ne v0, v2, :cond_a

    .line 3169
    const/16 v82, 0x1

    .line 3172
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

    .line 3174
    invoke-virtual {v10}, Lcom/mediatek/simservs/client/CommunicationDiversion;->getRuleSet()Lcom/mediatek/simservs/client/policy/RuleSet;

    move-result-object v86

    .line 3175
    .local v86, "ruleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    const/16 v85, 0x0

    .line 3176
    .local v85, "ruleList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    invoke-virtual {v10}, Lcom/mediatek/simservs/client/CommunicationDiversion;->createNewRuleSet()Lcom/mediatek/simservs/client/policy/RuleSet;

    move-result-object v11

    .line 3177
    .local v11, "newRuleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    const/16 v71, 0x0

    .line 3180
    .local v71, "addedNewRule":Z
    if-eqz v86, :cond_15

    .line 3181
    invoke-virtual/range {v86 .. v86}, Lcom/mediatek/simservs/client/policy/RuleSet;->getRules()Ljava/util/List;

    move-result-object v85

    .line 3187
    :goto_5
    if-eqz v85, :cond_2e

    .line 3189
    const/16 v77, 0x0

    .local v77, "i":I
    :goto_6
    invoke-interface/range {v85 .. v85}, Ljava/util/List;->size()I

    move-result v2

    move/from16 v0, v77

    if-ge v0, v2, :cond_2e

    .line 3190
    move-object/from16 v0, v85

    move/from16 v1, v77

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/mediatek/simservs/client/policy/Rule;

    .line 3191
    .local v12, "r":Lcom/mediatek/simservs/client/policy/Rule;
    invoke-virtual {v12}, Lcom/mediatek/simservs/client/policy/Rule;->getConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v73

    .line 3192
    .local v73, "cond":Lcom/mediatek/simservs/client/policy/Conditions;
    invoke-virtual {v12}, Lcom/mediatek/simservs/client/policy/Rule;->getActions()Lcom/mediatek/simservs/client/policy/Actions;

    move-result-object v70

    .line 3193
    .local v70, "action":Lcom/mediatek/simservs/client/policy/Actions;
    const/16 v79, 0x0

    .line 3195
    .local v79, "mediaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v73, :cond_1a

    .line 3196
    invoke-virtual/range {v73 .. v73}, Lcom/mediatek/simservs/client/policy/Conditions;->getMedias()Ljava/util/List;

    move-result-object v79

    .line 3197
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

    .line 3198
    invoke-virtual/range {v73 .. v73}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendBusy()Z

    move-result v2

    if-eqz v2, :cond_16

    .line 3199
    iget-object v0, v12, Lcom/mediatek/simservs/client/policy/Rule;->mId:Ljava/lang/String;

    move-object/from16 v18, v0

    .line 3200
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

    .line 3224
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

    .line 3228
    if-nez v15, :cond_c

    if-nez v15, :cond_1b

    if-nez v64, :cond_1b

    .line 3229
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

    .line 3233
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

    .line 3234
    if-nez v15, :cond_d

    .line 3235
    const/16 v64, 0x1

    .line 3189
    :cond_d
    :goto_8
    add-int/lit8 v77, v77, 0x1

    goto/16 :goto_6

    .line 3143
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

    .line 3146
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

    .line 3147
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCdCache:Lcom/mediatek/simservs/client/CommunicationDiversion;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/mediatek/simservs/client/CommunicationDiversion;

    move-result-object v10

    .line 3148
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

    .line 3413
    .end local v10    # "cd":Lcom/mediatek/simservs/client/CommunicationDiversion;
    .end local v74    # "curTime":J
    :catch_0
    move-exception v89

    .line 3414
    .local v89, "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    const/4 v3, 0x0

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCdCache:Lcom/mediatek/simservs/client/CommunicationDiversion;
    invoke-static {v2, v3}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1602(Lcom/android/internal/telephony/MMTelSSTransport;Lcom/mediatek/simservs/client/CommunicationDiversion;)Lcom/mediatek/simservs/client/CommunicationDiversion;

    .line 3415
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    const/4 v3, -0x1

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCdCachePhoneId:I
    invoke-static {v2, v3}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1802(Lcom/android/internal/telephony/MMTelSSTransport;I)I

    .line 3416
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    const-wide/16 v4, 0x0

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCdCacheLastQueried:J
    invoke-static {v2, v4, v5}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1702(Lcom/android/internal/telephony/MMTelSSTransport;J)J

    .line 3418
    invoke-virtual/range {v89 .. v89}, Lcom/mediatek/simservs/xcap/XcapException;->getHttpErrorCode()I

    move-result v2

    const/16 v3, 0x19c

    if-ne v2, v3, :cond_3d

    .line 3419
    const-string v2, "MMTelSS"

    const-string v3, "handleSetCF(): HTTP_ERROR_CODE_412"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3420
    const/16 v2, 0x19c

    goto/16 :goto_0

    .line 3150
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

    .line 3151
    .restart local v10    # "cd":Lcom/mediatek/simservs/client/CommunicationDiversion;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCdCache:Lcom/mediatek/simservs/client/CommunicationDiversion;
    invoke-static {v2, v10}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1602(Lcom/android/internal/telephony/MMTelSSTransport;Lcom/mediatek/simservs/client/CommunicationDiversion;)Lcom/mediatek/simservs/client/CommunicationDiversion;

    .line 3152
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCdCachePhoneId:I
    invoke-static {v2, v8}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1802(Lcom/android/internal/telephony/MMTelSSTransport;I)I

    .line 3153
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    move-wide/from16 v0, v74

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCdCacheLastQueried:J
    invoke-static {v2, v0, v1}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1702(Lcom/android/internal/telephony/MMTelSSTransport;J)J

    .line 3154
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

    .line 3437
    .end local v10    # "cd":Lcom/mediatek/simservs/client/CommunicationDiversion;
    .end local v74    # "curTime":J
    :catch_1
    move-exception v76

    .line 3440
    .local v76, "e":Ljava/lang/Exception;
    const-string v2, "MMTelSS"

    const-string v3, "handleSetCF():Start to Print Stack Trace"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3441
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    const/4 v3, 0x0

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCdCache:Lcom/mediatek/simservs/client/CommunicationDiversion;
    invoke-static {v2, v3}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1602(Lcom/android/internal/telephony/MMTelSSTransport;Lcom/mediatek/simservs/client/CommunicationDiversion;)Lcom/mediatek/simservs/client/CommunicationDiversion;

    .line 3442
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    const/4 v3, -0x1

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCdCachePhoneId:I
    invoke-static {v2, v3}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1802(Lcom/android/internal/telephony/MMTelSSTransport;I)I

    .line 3443
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    const-wide/16 v4, 0x0

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCdCacheLastQueried:J
    invoke-static {v2, v4, v5}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1702(Lcom/android/internal/telephony/MMTelSSTransport;J)J

    .line 3445
    invoke-virtual/range {v76 .. v76}, Ljava/lang/Exception;->printStackTrace()V

    .line 3446
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v2, :cond_40

    const/4 v2, 0x1

    move/from16 v0, v82

    if-ne v0, v2, :cond_40

    .line 3447
    const/4 v2, 0x2

    invoke-static {v2}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v72

    .line 3448
    .local v72, "ce":Lcom/android/internal/telephony/CommandException;
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v3, 0x0

    move-object/from16 v0, v72

    invoke-static {v2, v3, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 3449
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 3450
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v2

    if-eqz v2, :cond_10

    .line 3451
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->releaseNetwork()V

    .line 3453
    :cond_10
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 3161
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

    .line 3162
    :cond_12
    const/4 v2, 0x2

    move/from16 v0, v78

    if-ne v0, v2, :cond_13

    const/4 v13, 0x3

    goto/16 :goto_4

    .line 3163
    :cond_13
    const/4 v2, 0x3

    move/from16 v0, v78

    if-ne v0, v2, :cond_14

    const/4 v13, 0x6

    goto/16 :goto_4

    .line 3164
    :cond_14
    const/4 v2, 0x4

    move/from16 v0, v78

    if-ne v0, v2, :cond_9

    const/4 v13, 0x0

    goto/16 :goto_4

    .line 3183
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

    .line 3201
    .restart local v12    # "r":Lcom/mediatek/simservs/client/policy/Rule;
    .restart local v70    # "action":Lcom/mediatek/simservs/client/policy/Actions;
    .restart local v73    # "cond":Lcom/mediatek/simservs/client/policy/Conditions;
    .restart local v77    # "i":I
    .restart local v79    # "mediaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_16
    invoke-virtual/range {v73 .. v73}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendNoAnswer()Z

    move-result v2

    if-eqz v2, :cond_17

    .line 3202
    iget-object v0, v12, Lcom/mediatek/simservs/client/policy/Rule;->mId:Ljava/lang/String;

    move-object/from16 v30, v0

    .line 3203
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

    .line 3204
    :cond_17
    invoke-virtual/range {v73 .. v73}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendNotReachable()Z

    move-result v2

    if-eqz v2, :cond_18

    .line 3205
    iget-object v0, v12, Lcom/mediatek/simservs/client/policy/Rule;->mId:Ljava/lang/String;

    move-object/from16 v40, v0

    .line 3206
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

    .line 3207
    :cond_18
    invoke-virtual/range {v73 .. v73}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendNotRegistered()Z

    move-result v2

    if-eqz v2, :cond_19

    .line 3208
    iget-object v0, v12, Lcom/mediatek/simservs/client/policy/Rule;->mId:Ljava/lang/String;

    move-object/from16 v50, v0

    .line 3209
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

    .line 3211
    :cond_19
    iget-object v0, v12, Lcom/mediatek/simservs/client/policy/Rule;->mId:Ljava/lang/String;

    move-object/from16 v60, v0

    .line 3212
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

    .line 3215
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

    .line 3216
    const-string v2, "CFU"

    move-object/from16 v0, v60

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 3218
    iget-object v0, v12, Lcom/mediatek/simservs/client/policy/Rule;->mId:Ljava/lang/String;

    move-object/from16 v60, v0

    .line 3219
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

    .line 3237
    :cond_1b
    if-nez v15, :cond_d

    const/4 v2, 0x1

    move/from16 v0, v64

    if-ne v0, v2, :cond_d

    .line 3238
    const-string v2, "MMTelSS"

    const-string v3, "Already add rule for CFB with serviceClass=0 case previously"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 3241
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

    .line 3245
    if-nez v15, :cond_1d

    if-nez v15, :cond_21

    if-nez v65, :cond_21

    .line 3246
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

    .line 3250
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

    .line 3253
    const/4 v2, 0x1

    move/from16 v0, v71

    if-ne v0, v2, :cond_1f

    const/4 v2, 0x1

    if-eq v14, v2, :cond_1e

    const/4 v2, 0x3

    if-ne v14, v2, :cond_1f

    .line 3254
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

    .line 3255
    if-lez v17, :cond_20

    invoke-virtual {v10}, Lcom/mediatek/simservs/client/CommunicationDiversion;->getNoReplyTimer()I

    move-result v2

    const/4 v3, -0x1

    if-le v2, v3, :cond_20

    .line 3256
    move/from16 v0, v17

    invoke-virtual {v10, v0}, Lcom/mediatek/simservs/client/CommunicationDiversion;->setNoReplyTimer(I)V

    .line 3263
    :cond_1f
    :goto_9
    if-nez v15, :cond_d

    .line 3264
    const/16 v65, 0x1

    goto/16 :goto_8

    .line 3258
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

    .line 3266
    :cond_21
    if-nez v15, :cond_d

    const/4 v2, 0x1

    move/from16 v0, v65

    if-ne v0, v2, :cond_d

    .line 3267
    const-string v2, "MMTelSS"

    const-string v3, "Already add rule for CFNoAnswer with serviceClass=0 case previously"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 3270
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

    .line 3274
    if-nez v15, :cond_23

    if-nez v15, :cond_24

    if-nez v66, :cond_24

    .line 3275
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

    .line 3279
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

    .line 3280
    if-nez v15, :cond_d

    .line 3281
    const/16 v66, 0x1

    goto/16 :goto_8

    .line 3283
    :cond_24
    if-nez v15, :cond_d

    const/4 v2, 0x1

    move/from16 v0, v66

    if-ne v0, v2, :cond_d

    .line 3284
    const-string v2, "MMTelSS"

    const-string v3, "Already add rule for CFNoReachable with serviceClass=0 case previously"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 3287
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

    .line 3291
    if-nez v15, :cond_26

    if-nez v15, :cond_27

    if-nez v67, :cond_27

    .line 3292
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

    .line 3296
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

    .line 3297
    if-nez v15, :cond_d

    .line 3298
    const/16 v67, 0x1

    goto/16 :goto_8

    .line 3300
    :cond_27
    if-nez v15, :cond_d

    const/4 v2, 0x1

    move/from16 v0, v67

    if-ne v0, v2, :cond_d

    .line 3301
    const-string v2, "MMTelSS"

    const-string v3, "Already add rule for CFNoRegistered with serviceClass=0 case previously"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 3303
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

    .line 3310
    if-nez v15, :cond_2b

    if-nez v15, :cond_2c

    if-nez v68, :cond_2c

    .line 3311
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

    .line 3315
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

    .line 3316
    if-nez v15, :cond_d

    invoke-static {v8}, Lcom/android/internal/telephony/MMTelSSUtils;->isOp01IccCard(I)Z

    move-result v2

    if-nez v2, :cond_d

    .line 3319
    const/16 v68, 0x1

    goto/16 :goto_8

    .line 3321
    :cond_2c
    if-nez v15, :cond_d

    const/4 v2, 0x1

    move/from16 v0, v68

    if-ne v0, v2, :cond_d

    .line 3322
    const-string v2, "MMTelSS"

    const-string v3, "Already add rule for CFU with serviceClass=0 case previously"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 3327
    :cond_2d
    const-string v2, "MMTelSS"

    const-string v3, "handleSetCF():Copy old rule to newRuleSet"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3328
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v11, v14, v13}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->copyOldRuleToNewRuleSet(Lcom/mediatek/simservs/client/policy/Rule;Lcom/mediatek/simservs/client/policy/RuleSet;II)Lcom/mediatek/simservs/client/policy/Rule;

    goto/16 :goto_8

    .line 3336
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

    .line 3337
    :cond_2f
    const/16 v71, 0x1

    .line 3338
    const-string v2, ""

    invoke-virtual {v11, v2}, Lcom/mediatek/simservs/client/policy/RuleSet;->createNewRule(Ljava/lang/String;)Lcom/mediatek/simservs/client/policy/Rule;

    move-result-object v84

    .line 3339
    .local v84, "rule":Lcom/mediatek/simservs/client/policy/Rule;
    invoke-virtual/range {v84 .. v84}, Lcom/mediatek/simservs/client/policy/Rule;->createConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v73

    .line 3340
    .restart local v73    # "cond":Lcom/mediatek/simservs/client/policy/Conditions;
    invoke-virtual/range {v84 .. v84}, Lcom/mediatek/simservs/client/policy/Rule;->createActions()Lcom/mediatek/simservs/client/policy/Actions;

    move-result-object v70

    .line 3341
    .restart local v70    # "action":Lcom/mediatek/simservs/client/policy/Actions;
    invoke-static {v8}, Lcom/android/internal/telephony/MMTelSSUtils;->isOp01IccCard(I)Z

    move-result v2

    if-eqz v2, :cond_34

    invoke-static {}, Lcom/android/internal/telephony/MMTelSSUtils;->isNotifyCallerTest()Z

    move-result v2

    if-eqz v2, :cond_34

    .line 3342
    const/4 v2, 0x0

    move-object/from16 v0, v70

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/simservs/client/policy/Actions;->setFowardTo(Ljava/lang/String;Z)V

    .line 3346
    :goto_a
    invoke-virtual/range {v70 .. v70}, Lcom/mediatek/simservs/client/policy/Actions;->getFowardTo()Lcom/mediatek/simservs/client/policy/ForwardTo;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/mediatek/simservs/client/policy/ForwardTo;->setRevealIdentityToCaller(Z)V

    .line 3347
    invoke-virtual/range {v70 .. v70}, Lcom/mediatek/simservs/client/policy/Actions;->getFowardTo()Lcom/mediatek/simservs/client/policy/ForwardTo;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/mediatek/simservs/client/policy/ForwardTo;->setRevealIdentityToTarget(Z)V

    .line 3349
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

    .line 3351
    const/4 v2, 0x1

    if-ne v13, v2, :cond_35

    .line 3352
    move-object/from16 v0, v84

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/mediatek/simservs/client/policy/Rule;->setId(Ljava/lang/String;)V

    .line 3353
    invoke-virtual/range {v73 .. v73}, Lcom/mediatek/simservs/client/policy/Conditions;->addBusy()V

    .line 3375
    :cond_30
    :goto_b
    invoke-static {v8}, Lcom/android/internal/telephony/MMTelSSUtils;->isOp06IccCard(I)Z

    move-result v2

    if-nez v2, :cond_31

    invoke-static {v8}, Lcom/android/internal/telephony/MMTelSSUtils;->isOp07IccCard(I)Z

    move-result v2

    if-nez v2, :cond_31

    .line 3377
    const/4 v2, 0x1

    if-ne v15, v2, :cond_3a

    .line 3378
    const-string v2, "audio"

    move-object/from16 v0, v73

    invoke-virtual {v0, v2}, Lcom/mediatek/simservs/client/policy/Conditions;->addMedia(Ljava/lang/String;)V

    .line 3385
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

    .line 3386
    move-object/from16 v0, v84

    iget-object v2, v0, Lcom/mediatek/simservs/client/policy/Rule;->mId:Ljava/lang/String;

    invoke-virtual {v10, v2}, Lcom/mediatek/simservs/client/CommunicationDiversion;->saveRule(Ljava/lang/String;)V

    .line 3392
    .end local v70    # "action":Lcom/mediatek/simservs/client/policy/Actions;
    .end local v73    # "cond":Lcom/mediatek/simservs/client/policy/Conditions;
    .end local v84    # "rule":Lcom/mediatek/simservs/client/policy/Rule;
    :cond_32
    invoke-virtual {v11}, Lcom/mediatek/simservs/client/policy/RuleSet;->getRules()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_3b

    .line 3393
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

    .line 3398
    :goto_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mUpdateSingleRule:Z
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1900(Lcom/android/internal/telephony/MMTelSSTransport;)Z

    move-result v2

    if-nez v2, :cond_3c

    .line 3399
    invoke-virtual {v10}, Lcom/mediatek/simservs/client/CommunicationDiversion;->saveRuleSet()V

    .line 3158
    :cond_33
    add-int/lit8 v78, v78, 0x1

    goto/16 :goto_3

    .line 3344
    .restart local v70    # "action":Lcom/mediatek/simservs/client/policy/Actions;
    .restart local v73    # "cond":Lcom/mediatek/simservs/client/policy/Conditions;
    .restart local v84    # "rule":Lcom/mediatek/simservs/client/policy/Rule;
    :cond_34
    const/4 v2, 0x1

    move-object/from16 v0, v70

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/simservs/client/policy/Actions;->setFowardTo(Ljava/lang/String;Z)V

    goto/16 :goto_a

    .line 3354
    :cond_35
    const/4 v2, 0x2

    if-ne v13, v2, :cond_37

    .line 3356
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

    .line 3357
    if-lez v17, :cond_36

    invoke-virtual {v10}, Lcom/mediatek/simservs/client/CommunicationDiversion;->getNoReplyTimer()I

    move-result v2

    const/4 v3, -0x1

    if-le v2, v3, :cond_36

    .line 3358
    move/from16 v0, v17

    invoke-virtual {v10, v0}, Lcom/mediatek/simservs/client/CommunicationDiversion;->setNoReplyTimer(I)V

    .line 3363
    :goto_e
    move-object/from16 v0, v84

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/mediatek/simservs/client/policy/Rule;->setId(Ljava/lang/String;)V

    .line 3364
    invoke-virtual/range {v73 .. v73}, Lcom/mediatek/simservs/client/policy/Conditions;->addNoAnswer()V

    goto/16 :goto_b

    .line 3360
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

    .line 3365
    :cond_37
    const/4 v2, 0x3

    if-ne v13, v2, :cond_38

    .line 3366
    move-object/from16 v0, v84

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/mediatek/simservs/client/policy/Rule;->setId(Ljava/lang/String;)V

    .line 3367
    invoke-virtual/range {v73 .. v73}, Lcom/mediatek/simservs/client/policy/Conditions;->addNotReachable()V

    goto/16 :goto_b

    .line 3368
    :cond_38
    const/4 v2, 0x6

    if-ne v13, v2, :cond_39

    .line 3369
    move-object/from16 v0, v84

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Lcom/mediatek/simservs/client/policy/Rule;->setId(Ljava/lang/String;)V

    .line 3370
    invoke-virtual/range {v73 .. v73}, Lcom/mediatek/simservs/client/policy/Conditions;->addNotRegistered()V

    goto/16 :goto_b

    .line 3371
    :cond_39
    if-nez v13, :cond_30

    .line 3372
    move-object/from16 v0, v84

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Lcom/mediatek/simservs/client/policy/Rule;->setId(Ljava/lang/String;)V

    goto/16 :goto_b

    .line 3379
    :cond_3a
    const/16 v2, 0x200

    if-ne v15, v2, :cond_31

    .line 3381
    const-string v2, "video"

    move-object/from16 v0, v73

    invoke-virtual {v0, v2}, Lcom/mediatek/simservs/client/policy/Conditions;->addMedia(Ljava/lang/String;)V

    goto/16 :goto_c

    .line 3395
    .end local v70    # "action":Lcom/mediatek/simservs/client/policy/Actions;
    .end local v73    # "cond":Lcom/mediatek/simservs/client/policy/Conditions;
    .end local v84    # "rule":Lcom/mediatek/simservs/client/policy/Rule;
    :cond_3b
    const-string v2, "MMTelSS"

    const-string v3, "Dump SetCF XML: ruleset with empty rules"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d

    .line 3401
    :cond_3c
    const/4 v2, 0x1

    move/from16 v0, v20

    if-le v0, v2, :cond_33

    .line 3402
    const/16 v81, 0x0

    .line 3403
    .local v81, "newRuleList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    invoke-virtual {v11}, Lcom/mediatek/simservs/client/policy/RuleSet;->getRules()Ljava/util/List;

    move-result-object v81

    .line 3404
    const/16 v77, 0x0

    .restart local v77    # "i":I
    :goto_f
    invoke-interface/range {v81 .. v81}, Ljava/util/List;->size()I

    move-result v2

    move/from16 v0, v77

    if-ge v0, v2, :cond_33

    .line 3405
    move-object/from16 v0, v81

    move/from16 v1, v77

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v80

    check-cast v80, Lcom/mediatek/simservs/client/policy/Rule;

    .line 3406
    .local v80, "newRule":Lcom/mediatek/simservs/client/policy/Rule;
    move-object/from16 v0, v80

    iget-object v2, v0, Lcom/mediatek/simservs/client/policy/Rule;->mId:Ljava/lang/String;

    invoke-virtual {v10, v2}, Lcom/mediatek/simservs/client/CommunicationDiversion;->saveRule(Ljava/lang/String;)V
    :try_end_2
    .catch Lcom/mediatek/simservs/xcap/XcapException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 3404
    add-int/lit8 v77, v77, 0x1

    goto :goto_f

    .line 3422
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

    .line 3423
    invoke-virtual/range {v89 .. v89}, Lcom/mediatek/simservs/xcap/XcapException;->printStackTrace()V

    .line 3424
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v2, :cond_40

    .line 3425
    invoke-virtual/range {v89 .. v89}, Lcom/mediatek/simservs/xcap/XcapException;->isConnectionError()Z

    move-result v2

    if-eqz v2, :cond_3f

    .line 3426
    const-string v2, "MMTelSS"

    const-string v3, "handleSetCF(): xcapException.isConnectionError()"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3427
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v3, 0x0

    new-instance v4, Ljava/net/UnknownHostException;

    invoke-direct {v4}, Ljava/net/UnknownHostException;-><init>()V

    invoke-static {v2, v3, v4}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 3431
    :goto_10
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 3432
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v2

    if-eqz v2, :cond_3e

    .line 3433
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->releaseNetwork()V

    .line 3435
    :cond_3e
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 3429
    :cond_3f
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v3, 0x0

    move-object/from16 v0, v89

    invoke-static {v2, v3, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    goto :goto_10

    .line 3458
    .end local v89    # "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    :cond_40
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v2, :cond_41

    const/4 v2, 0x1

    move/from16 v0, v82

    if-ne v0, v2, :cond_41

    .line 3459
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 3460
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 3463
    :cond_41
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v2

    if-eqz v2, :cond_42

    .line 3464
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->releaseNetwork()V

    .line 3467
    :cond_42
    const/4 v2, 0x0

    goto/16 :goto_0
.end method

.method public handleSetCFInTimeSlot(Lcom/android/internal/telephony/MMTelSSRequest;)I
    .locals 50
    .param p1, "rr"    # Lcom/android/internal/telephony/MMTelSSRequest;

    .prologue
    .line 4399
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 4400
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v42

    .line 4401
    .local v42, "reqNo":I
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v45

    .line 4403
    .local v45, "serialNo":I
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 4404
    .local v13, "setCFAction":I
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 4405
    .local v12, "setCFReason":I
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 4406
    .local v14, "setCFServiceClass":I
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 4407
    .local v15, "setCFNumber":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 4408
    .local v16, "setCFTimeSeconds":I
    const/4 v2, 0x2

    new-array v0, v2, [J

    move-object/from16 v47, v0

    .line 4410
    .local v47, "timeSlot":[J
    :try_start_0
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    move-object/from16 v0, v47

    invoke-virtual {v2, v0}, Landroid/os/Parcel;->readLongArray([J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4414
    :goto_0
    move-object/from16 v0, p0

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->convertToSeverTime([J)Ljava/lang/String;

    move-result-object v17

    .line 4415
    .local v17, "timeSlotString":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 4417
    .local v8, "phoneId":I
    const/16 v33, 0x0

    .line 4418
    .local v33, "addRuleForCFUWithAllMediaType":Z
    const-string v18, "CFU"

    .line 4420
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

    .line 4426
    const-string v2, "persist.radio.xcap.cfn"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v48

    .line 4427
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

    .line 4430
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

    .line 4432
    const-string v2, "persist.radio.ss.mode"

    const-string v3, "Prefer XCAP"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v46

    .line 4433
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

    .line 4434
    const-string v2, "Prefer XCAP"

    move-object/from16 v0, v46

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4435
    move-object/from16 v15, v48

    .line 4440
    .end local v46    # "ssMode":Ljava/lang/String;
    :cond_1
    const/16 v2, 0x210

    if-ne v14, v2, :cond_2

    .line 4442
    const/16 v14, 0x200

    .line 4445
    :cond_2
    invoke-static {v8}, Lcom/android/internal/telephony/MMTelSSUtils;->isPreferXcap(I)Z

    move-result v2

    if-nez v2, :cond_4

    .line 4446
    const-string v2, "MMTelSS"

    const-string v3, "handleSetCFInTimeSlot(): !isPreferXcap()"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4447
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v2, :cond_3

    .line 4448
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v3, 0x0

    new-instance v4, Ljava/net/UnknownHostException;

    invoke-direct {v4}, Ljava/net/UnknownHostException;-><init>()V

    invoke-static {v2, v3, v4}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 4449
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 4451
    :cond_3
    const/4 v2, 0x0

    .line 4667
    :goto_1
    return v2

    .line 4411
    .end local v8    # "phoneId":I
    .end local v17    # "timeSlotString":Ljava/lang/String;
    .end local v18    # "cfuRuleID":Ljava/lang/String;
    .end local v33    # "addRuleForCFUWithAllMediaType":Z
    .end local v48    # "xcapCFNum":Ljava/lang/String;
    :catch_0
    move-exception v37

    .line 4412
    .local v37, "e":Ljava/lang/Exception;
    const/16 v47, 0x0

    goto/16 :goto_0

    .line 4456
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

    .line 4457
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

    .line 4461
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-static {v8}, Lcom/android/internal/telephony/MMTelSSUtils;->getXui(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/telephony/MMTelSSTransport;->mXui:Ljava/lang/String;

    .line 4462
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-static {v8}, Lcom/android/internal/telephony/MMTelSSUtils;->getXcapRootUri(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/telephony/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    .line 4463
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-static {v8}, Lcom/android/internal/telephony/MMTelSSUtils;->getXIntendedId(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/telephony/MMTelSSTransport;->mXIntendedId:Ljava/lang/String;

    .line 4465
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v2, v2, Lcom/android/internal/telephony/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 4466
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

    .line 4467
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v2, :cond_5

    .line 4468
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v3, 0x0

    new-instance v4, Ljava/net/UnknownHostException;

    invoke-direct {v4}, Ljava/net/UnknownHostException;-><init>()V

    invoke-static {v2, v3, v4}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 4469
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 4471
    :cond_5
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 4473
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # invokes: Lcom/android/internal/telephony/MMTelSSTransport;->requestXcapNetwork(I)V
    invoke-static {v2, v8}, Lcom/android/internal/telephony/MMTelSSTransport;->access$300(Lcom/android/internal/telephony/MMTelSSTransport;I)V

    .line 4474
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

    .line 4477
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

    .line 4479
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

    .line 4480
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCdCache:Lcom/mediatek/simservs/client/CommunicationDiversion;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/mediatek/simservs/client/CommunicationDiversion;

    move-result-object v10

    .line 4481
    .local v10, "cd":Lcom/mediatek/simservs/client/CommunicationDiversion;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mNetwork:Landroid/net/Network;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$400(Lcom/android/internal/telephony/MMTelSSTransport;)Landroid/net/Network;

    move-result-object v2

    invoke-virtual {v10, v2}, Lcom/mediatek/simservs/client/CommunicationDiversion;->setNetwork(Landroid/net/Network;)V

    .line 4482
    invoke-virtual {v10}, Lcom/mediatek/simservs/client/CommunicationDiversion;->refresh()V

    .line 4483
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    move-wide/from16 v0, v38

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCdCacheLastQueried:J
    invoke-static {v2, v0, v1}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1702(Lcom/android/internal/telephony/MMTelSSTransport;J)J

    .line 4499
    :goto_2
    invoke-virtual {v10}, Lcom/mediatek/simservs/client/CommunicationDiversion;->getRuleSet()Lcom/mediatek/simservs/client/policy/RuleSet;

    move-result-object v44

    .line 4500
    .local v44, "ruleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    const/16 v43, 0x0

    .line 4501
    .local v43, "ruleList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    invoke-virtual {v10}, Lcom/mediatek/simservs/client/CommunicationDiversion;->createNewRuleSet()Lcom/mediatek/simservs/client/policy/RuleSet;

    move-result-object v11

    .line 4502
    .local v11, "newRuleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    const/16 v34, 0x0

    .line 4504
    .local v34, "addedNewRule":Z
    if-eqz v44, :cond_10

    .line 4505
    invoke-virtual/range {v44 .. v44}, Lcom/mediatek/simservs/client/policy/RuleSet;->getRules()Ljava/util/List;

    move-result-object v43

    .line 4512
    :goto_3
    if-eqz v43, :cond_19

    .line 4514
    const/16 v40, 0x0

    .local v40, "i":I
    :goto_4
    invoke-interface/range {v43 .. v43}, Ljava/util/List;->size()I

    move-result v2

    move/from16 v0, v40

    if-ge v0, v2, :cond_19

    .line 4515
    move-object/from16 v0, v43

    move/from16 v1, v40

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/mediatek/simservs/client/policy/Rule;

    .line 4516
    .local v22, "r":Lcom/mediatek/simservs/client/policy/Rule;
    invoke-virtual/range {v22 .. v22}, Lcom/mediatek/simservs/client/policy/Rule;->getConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v36

    .line 4517
    .local v36, "cond":Lcom/mediatek/simservs/client/policy/Conditions;
    invoke-virtual/range {v22 .. v22}, Lcom/mediatek/simservs/client/policy/Rule;->getActions()Lcom/mediatek/simservs/client/policy/Actions;

    move-result-object v32

    .line 4518
    .local v32, "action":Lcom/mediatek/simservs/client/policy/Actions;
    const/16 v41, 0x0

    .line 4520
    .local v41, "mediaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v36, :cond_15

    .line 4521
    invoke-virtual/range {v36 .. v36}, Lcom/mediatek/simservs/client/policy/Conditions;->getMedias()Ljava/util/List;

    move-result-object v41

    .line 4522
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

    .line 4527
    invoke-virtual/range {v36 .. v36}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendBusy()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 4528
    const-string v2, "MMTelSS"

    const-string v3, "The rule is CFB"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4549
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

    .line 4556
    if-nez v14, :cond_a

    if-nez v14, :cond_17

    if-nez v33, :cond_17

    .line 4559
    :cond_a
    const/4 v2, 0x1

    if-eq v13, v2, :cond_b

    const/4 v2, 0x3

    if-ne v13, v2, :cond_16

    .line 4561
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mUpdateSingleRule:Z
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1900(Lcom/android/internal/telephony/MMTelSSTransport;)Z

    move-result v19

    move-object/from16 v9, p0

    invoke-virtual/range {v9 .. v19}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->handleCreateNewRuleForCFInTimeSlot(Lcom/mediatek/simservs/client/CommunicationDiversion;Lcom/mediatek/simservs/client/policy/RuleSet;IIILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v34

    .line 4571
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

    .line 4573
    if-nez v14, :cond_c

    invoke-static {v8}, Lcom/android/internal/telephony/MMTelSSUtils;->isOp01IccCard(I)Z

    move-result v2

    if-nez v2, :cond_c

    .line 4575
    const/16 v33, 0x1

    .line 4514
    :cond_c
    :goto_7
    add-int/lit8 v40, v40, 0x1

    goto/16 :goto_4

    .line 4484
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

    .line 4487
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

    .line 4488
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCdCache:Lcom/mediatek/simservs/client/CommunicationDiversion;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/mediatek/simservs/client/CommunicationDiversion;

    move-result-object v10

    .line 4489
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

    .line 4613
    .end local v10    # "cd":Lcom/mediatek/simservs/client/CommunicationDiversion;
    .end local v38    # "curTime":J
    :catch_1
    move-exception v49

    .line 4614
    .local v49, "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    const/4 v3, 0x0

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCdCache:Lcom/mediatek/simservs/client/CommunicationDiversion;
    invoke-static {v2, v3}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1602(Lcom/android/internal/telephony/MMTelSSTransport;Lcom/mediatek/simservs/client/CommunicationDiversion;)Lcom/mediatek/simservs/client/CommunicationDiversion;

    .line 4615
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    const/4 v3, -0x1

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCdCachePhoneId:I
    invoke-static {v2, v3}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1802(Lcom/android/internal/telephony/MMTelSSTransport;I)I

    .line 4616
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    const-wide/16 v4, 0x0

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCdCacheLastQueried:J
    invoke-static {v2, v4, v5}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1702(Lcom/android/internal/telephony/MMTelSSTransport;J)J

    .line 4618
    invoke-virtual/range {v49 .. v49}, Lcom/mediatek/simservs/xcap/XcapException;->getHttpErrorCode()I

    move-result v2

    const/16 v3, 0x19c

    if-ne v2, v3, :cond_20

    .line 4619
    const-string v2, "MMTelSS"

    const-string v3, "handleSetCFInTimeSlot(): HTTP_ERROR_CODE_412"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4620
    const/16 v2, 0x19c

    goto/16 :goto_1

    .line 4491
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

    .line 4492
    .restart local v10    # "cd":Lcom/mediatek/simservs/client/CommunicationDiversion;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCdCache:Lcom/mediatek/simservs/client/CommunicationDiversion;
    invoke-static {v2, v10}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1602(Lcom/android/internal/telephony/MMTelSSTransport;Lcom/mediatek/simservs/client/CommunicationDiversion;)Lcom/mediatek/simservs/client/CommunicationDiversion;

    .line 4493
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCdCachePhoneId:I
    invoke-static {v2, v8}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1802(Lcom/android/internal/telephony/MMTelSSTransport;I)I

    .line 4494
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    move-wide/from16 v0, v38

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCdCacheLastQueried:J
    invoke-static {v2, v0, v1}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1702(Lcom/android/internal/telephony/MMTelSSTransport;J)J

    .line 4495
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

    .line 4637
    .end local v10    # "cd":Lcom/mediatek/simservs/client/CommunicationDiversion;
    .end local v38    # "curTime":J
    :catch_2
    move-exception v37

    .line 4640
    .restart local v37    # "e":Ljava/lang/Exception;
    const-string v2, "MMTelSS"

    const-string v3, "handleSetCFInTimeSlot(): Start to Print Stack Trace"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4641
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    const/4 v3, 0x0

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCdCache:Lcom/mediatek/simservs/client/CommunicationDiversion;
    invoke-static {v2, v3}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1602(Lcom/android/internal/telephony/MMTelSSTransport;Lcom/mediatek/simservs/client/CommunicationDiversion;)Lcom/mediatek/simservs/client/CommunicationDiversion;

    .line 4642
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    const/4 v3, -0x1

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCdCachePhoneId:I
    invoke-static {v2, v3}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1802(Lcom/android/internal/telephony/MMTelSSTransport;I)I

    .line 4643
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    const-wide/16 v4, 0x0

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCdCacheLastQueried:J
    invoke-static {v2, v4, v5}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1702(Lcom/android/internal/telephony/MMTelSSTransport;J)J

    .line 4645
    invoke-virtual/range {v37 .. v37}, Ljava/lang/Exception;->printStackTrace()V

    .line 4646
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v2, :cond_1c

    .line 4647
    const/4 v2, 0x2

    invoke-static {v2}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v35

    .line 4649
    .local v35, "ce":Lcom/android/internal/telephony/CommandException;
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v3, 0x0

    move-object/from16 v0, v35

    invoke-static {v2, v3, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 4650
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 4651
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v2

    if-eqz v2, :cond_f

    .line 4652
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->releaseNetwork()V

    .line 4654
    :cond_f
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 4507
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

    .line 4529
    .restart local v22    # "r":Lcom/mediatek/simservs/client/policy/Rule;
    .restart local v32    # "action":Lcom/mediatek/simservs/client/policy/Actions;
    .restart local v36    # "cond":Lcom/mediatek/simservs/client/policy/Conditions;
    .restart local v40    # "i":I
    .restart local v41    # "mediaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_11
    invoke-virtual/range {v36 .. v36}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendNoAnswer()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 4530
    const-string v2, "MMTelSS"

    const-string v3, "The rule is CFNoAnswer"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 4531
    :cond_12
    invoke-virtual/range {v36 .. v36}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendNotReachable()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 4532
    const-string v2, "MMTelSS"

    const-string v3, "The rule is CFNotReachable"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 4533
    :cond_13
    invoke-virtual/range {v36 .. v36}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendNotRegistered()Z

    move-result v2

    if-eqz v2, :cond_14

    .line 4534
    const-string v2, "MMTelSS"

    const-string v3, "The rule is CFNotRegistered"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 4536
    :cond_14
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/mediatek/simservs/client/policy/Rule;->mId:Ljava/lang/String;

    move-object/from16 v18, v0

    .line 4537
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

    .line 4540
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

    .line 4542
    const-string v2, "CFU"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 4544
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/mediatek/simservs/client/policy/Rule;->mId:Ljava/lang/String;

    move-object/from16 v18, v0

    .line 4545
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

    .line 4566
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

    .line 4577
    :cond_17
    if-nez v14, :cond_c

    const/4 v2, 0x1

    move/from16 v0, v33

    if-ne v0, v2, :cond_c

    .line 4579
    const-string v2, "MMTelSS"

    const-string v3, "Already add rule for CFU previously"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 4583
    :cond_18
    const-string v2, "MMTelSS"

    const-string v3, "handleSetCFInTimeSlot(): Copy old rule to newRuleSet"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4585
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v11, v13, v12}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->copyOldRuleToNewRuleSet(Lcom/mediatek/simservs/client/policy/Rule;Lcom/mediatek/simservs/client/policy/RuleSet;II)Lcom/mediatek/simservs/client/policy/Rule;

    goto/16 :goto_7

    .line 4592
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

    .line 4595
    :cond_1a
    const/16 v34, 0x1

    .line 4596
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mUpdateSingleRule:Z
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1900(Lcom/android/internal/telephony/MMTelSSTransport;)Z

    move-result v19

    move-object/from16 v9, p0

    invoke-virtual/range {v9 .. v19}, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->handleCreateNewRuleForCFInTimeSlot(Lcom/mediatek/simservs/client/CommunicationDiversion;Lcom/mediatek/simservs/client/policy/RuleSet;IIILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)Z

    .line 4604
    :cond_1b
    invoke-virtual {v11}, Lcom/mediatek/simservs/client/policy/RuleSet;->getRules()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1f

    .line 4605
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

    .line 4610
    :goto_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mUpdateSingleRule:Z
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$1900(Lcom/android/internal/telephony/MMTelSSTransport;)Z

    move-result v2

    if-nez v2, :cond_1c

    .line 4611
    invoke-virtual {v10}, Lcom/mediatek/simservs/client/CommunicationDiversion;->saveRuleSet()V
    :try_end_3
    .catch Lcom/mediatek/simservs/xcap/XcapException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 4659
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

    .line 4660
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 4661
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 4663
    :cond_1d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v2

    if-eqz v2, :cond_1e

    .line 4664
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->releaseNetwork()V

    .line 4667
    :cond_1e
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 4607
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

    .line 4622
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

    .line 4623
    invoke-virtual/range {v49 .. v49}, Lcom/mediatek/simservs/xcap/XcapException;->printStackTrace()V

    .line 4624
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v2, :cond_1c

    .line 4625
    invoke-virtual/range {v49 .. v49}, Lcom/mediatek/simservs/xcap/XcapException;->isConnectionError()Z

    move-result v2

    if-eqz v2, :cond_22

    .line 4626
    const-string v2, "MMTelSS"

    const-string v3, "handleSetCFInTimeSlot(): isConnectionError()"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4627
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v3, 0x0

    new-instance v4, Ljava/net/UnknownHostException;

    invoke-direct {v4}, Ljava/net/UnknownHostException;-><init>()V

    invoke-static {v2, v3, v4}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 4631
    :goto_9
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 4632
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v2

    if-eqz v2, :cond_21

    .line 4633
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->releaseNetwork()V

    .line 4635
    :cond_21
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 4629
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
    .line 2672
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 2673
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 2674
    .local v11, "reqNo":I
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 2676
    .local v12, "serialNo":I
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 2677
    .local v8, "clipEnable":I
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 2678
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

    .line 2680
    invoke-static {v6}, Lcom/android/internal/telephony/MMTelSSUtils;->isPreferXcap(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2681
    const-string v0, "MMTelSS"

    const-string v1, "handleSetCLIP(): !isPreferXcap()"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2682
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v0, :cond_0

    .line 2683
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v1, 0x0

    new-instance v2, Ljava/net/UnknownHostException;

    invoke-direct {v2}, Ljava/net/UnknownHostException;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 2684
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2754
    :cond_0
    :goto_0
    return-void

    .line 2690
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-static {v6}, Lcom/android/internal/telephony/MMTelSSUtils;->getXui(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/MMTelSSTransport;->mXui:Ljava/lang/String;

    .line 2691
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-static {v6}, Lcom/android/internal/telephony/MMTelSSUtils;->getXcapRootUri(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    .line 2692
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-static {v6}, Lcom/android/internal/telephony/MMTelSSUtils;->getXIntendedId(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/MMTelSSTransport;->mXIntendedId:Ljava/lang/String;

    .line 2694
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v0, v0, Lcom/android/internal/telephony/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2695
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

    .line 2696
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v0, :cond_0

    .line 2697
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v1, 0x0

    new-instance v2, Ljava/net/UnknownHostException;

    invoke-direct {v2}, Ljava/net/UnknownHostException;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 2698
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catch Lcom/mediatek/simservs/xcap/XcapException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 2714
    :catch_0
    move-exception v13

    .line 2715
    .local v13, "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    const-string v0, "MMTelSS"

    const-string v1, "handleSetCLIP(): XcapException"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2716
    invoke-virtual {v13}, Lcom/mediatek/simservs/xcap/XcapException;->printStackTrace()V

    .line 2717
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v0, :cond_3

    .line 2718
    invoke-virtual {v13}, Lcom/mediatek/simservs/xcap/XcapException;->isConnectionError()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2719
    const-string v0, "MMTelSS"

    const-string v1, "handleSetCLIP(): xcapException.isConnectionError()"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2720
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v1, 0x0

    new-instance v2, Ljava/net/UnknownHostException;

    invoke-direct {v2}, Ljava/net/UnknownHostException;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 2724
    :goto_1
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2725
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v0}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2726
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v0}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->releaseNetwork()V

    goto/16 :goto_0

    .line 2703
    .end local v13    # "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # invokes: Lcom/android/internal/telephony/MMTelSSTransport;->requestXcapNetwork(I)V
    invoke-static {v0, v6}, Lcom/android/internal/telephony/MMTelSSTransport;->access$300(Lcom/android/internal/telephony/MMTelSSTransport;I)V

    .line 2705
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

    .line 2707
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

    .line 2709
    .local v10, "oip":Lcom/mediatek/simservs/client/OriginatingIdentityPresentation;
    const/4 v0, 0x1

    if-ne v8, v0, :cond_5

    .line 2710
    const/4 v0, 0x1

    invoke-virtual {v10, v0}, Lcom/mediatek/simservs/client/OriginatingIdentityPresentation;->setActive(Z)V
    :try_end_1
    .catch Lcom/mediatek/simservs/xcap/XcapException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 2747
    .end local v10    # "oip":Lcom/mediatek/simservs/client/OriginatingIdentityPresentation;
    :cond_3
    :goto_2
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v0, :cond_4

    .line 2748
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 2749
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2751
    :cond_4
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v0}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2752
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v0}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->releaseNetwork()V

    goto/16 :goto_0

    .line 2712
    .restart local v10    # "oip":Lcom/mediatek/simservs/client/OriginatingIdentityPresentation;
    :cond_5
    const/4 v0, 0x0

    :try_start_2
    invoke-virtual {v10, v0}, Lcom/mediatek/simservs/client/OriginatingIdentityPresentation;->setActive(Z)V
    :try_end_2
    .catch Lcom/mediatek/simservs/xcap/XcapException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 2730
    .end local v10    # "oip":Lcom/mediatek/simservs/client/OriginatingIdentityPresentation;
    :catch_1
    move-exception v9

    .line 2733
    .local v9, "e":Ljava/lang/Exception;
    const-string v0, "MMTelSS"

    const-string v1, "handleSetCLIP():Start to Print Stack Trace"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2734
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    .line 2735
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v0, :cond_3

    .line 2736
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v7

    .line 2737
    .local v7, "ce":Lcom/android/internal/telephony/CommandException;
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v1, 0x0

    invoke-static {v0, v1, v7}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 2738
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2739
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v0}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2740
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v0}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->releaseNetwork()V

    goto/16 :goto_0

    .line 2722
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
    .line 2545
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 2546
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 2547
    .local v15, "reqNo":I
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 2549
    .local v16, "serialNo":I
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 2550
    .local v10, "clirMode":I
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 2551
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

    .line 2553
    invoke-static {v8}, Lcom/android/internal/telephony/MMTelSSUtils;->isPreferXcap(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2554
    const-string v2, "MMTelSS"

    const-string v3, "handleSetCLIR(): !isPreferXcap()"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2555
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v2, :cond_0

    .line 2556
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v3, 0x0

    new-instance v4, Ljava/net/UnknownHostException;

    invoke-direct {v4}, Ljava/net/UnknownHostException;-><init>()V

    invoke-static {v2, v3, v4}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 2557
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 2559
    :cond_0
    const/4 v2, 0x0

    .line 2668
    :goto_0
    return v2

    .line 2564
    :cond_1
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 2565
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

    .line 2568
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-static {v8}, Lcom/android/internal/telephony/MMTelSSUtils;->getXui(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/telephony/MMTelSSTransport;->mXui:Ljava/lang/String;

    .line 2569
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-static {v8}, Lcom/android/internal/telephony/MMTelSSUtils;->getXcapRootUri(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/telephony/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    .line 2570
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-static {v8}, Lcom/android/internal/telephony/MMTelSSUtils;->getXIntendedId(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/telephony/MMTelSSTransport;->mXIntendedId:Ljava/lang/String;

    .line 2571
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v2, v2, Lcom/android/internal/telephony/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2572
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

    .line 2573
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v2, :cond_2

    .line 2574
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v3, 0x0

    new-instance v4, Ljava/net/UnknownHostException;

    invoke-direct {v4}, Ljava/net/UnknownHostException;-><init>()V

    invoke-static {v2, v3, v4}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 2575
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 2577
    :cond_2
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 2579
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # invokes: Lcom/android/internal/telephony/MMTelSSTransport;->requestXcapNetwork(I)V
    invoke-static {v2, v8}, Lcom/android/internal/telephony/MMTelSSTransport;->access$300(Lcom/android/internal/telephony/MMTelSSTransport;I)V

    .line 2580
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

    .line 2583
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

    .line 2585
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

    .line 2586
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mOirCache:Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$000(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;

    move-result-object v14

    .line 2587
    .local v14, "oir":Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mNetwork:Landroid/net/Network;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$400(Lcom/android/internal/telephony/MMTelSSTransport;)Landroid/net/Network;

    move-result-object v2

    invoke-virtual {v14, v2}, Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;->setNetwork(Landroid/net/Network;)V

    .line 2588
    invoke-virtual {v14}, Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;->refresh()V

    .line 2589
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mOirCacheLastQueried:J
    invoke-static {v2, v12, v13}, Lcom/android/internal/telephony/MMTelSSTransport;->access$102(Lcom/android/internal/telephony/MMTelSSTransport;J)J

    .line 2605
    :goto_1
    const/4 v2, 0x1

    if-ne v10, v2, :cond_a

    .line 2606
    const/4 v2, 0x1

    invoke-virtual {v14, v2}, Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;->setDefaultPresentationRestricted(Z)V
    :try_end_0
    .catch Lcom/mediatek/simservs/xcap/XcapException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 2660
    .end local v12    # "curTime":J
    .end local v14    # "oir":Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;
    :cond_4
    :goto_2
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v2, :cond_5

    .line 2661
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 2662
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 2664
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 2665
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->releaseNetwork()V

    .line 2668
    :cond_6
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 2590
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

    .line 2593
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

    .line 2594
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mOirCache:Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$000(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;

    move-result-object v14

    .line 2595
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

    .line 2612
    .end local v12    # "curTime":J
    .end local v14    # "oir":Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;
    :catch_0
    move-exception v17

    .line 2613
    .local v17, "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    const/4 v3, 0x0

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mOirCache:Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;
    invoke-static {v2, v3}, Lcom/android/internal/telephony/MMTelSSTransport;->access$002(Lcom/android/internal/telephony/MMTelSSTransport;Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;)Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;

    .line 2614
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    const/4 v3, -0x1

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mOirCachePhoneId:I
    invoke-static {v2, v3}, Lcom/android/internal/telephony/MMTelSSTransport;->access$202(Lcom/android/internal/telephony/MMTelSSTransport;I)I

    .line 2615
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    const-wide/16 v4, 0x0

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mOirCacheLastQueried:J
    invoke-static {v2, v4, v5}, Lcom/android/internal/telephony/MMTelSSTransport;->access$102(Lcom/android/internal/telephony/MMTelSSTransport;J)J

    .line 2617
    invoke-virtual/range {v17 .. v17}, Lcom/mediatek/simservs/xcap/XcapException;->getHttpErrorCode()I

    move-result v2

    const/16 v3, 0x19c

    if-ne v2, v3, :cond_c

    .line 2618
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    const/4 v3, 0x0

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mOirCache:Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;
    invoke-static {v2, v3}, Lcom/android/internal/telephony/MMTelSSTransport;->access$002(Lcom/android/internal/telephony/MMTelSSTransport;Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;)Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;

    .line 2619
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    const/4 v3, -0x1

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mOirCachePhoneId:I
    invoke-static {v2, v3}, Lcom/android/internal/telephony/MMTelSSTransport;->access$202(Lcom/android/internal/telephony/MMTelSSTransport;I)I

    .line 2620
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    const-wide/16 v4, 0x0

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mOirCacheLastQueried:J
    invoke-static {v2, v4, v5}, Lcom/android/internal/telephony/MMTelSSTransport;->access$102(Lcom/android/internal/telephony/MMTelSSTransport;J)J

    .line 2621
    const-string v2, "MMTelSS"

    const-string v3, "handleSetCLIR(): HTTP_ERROR_CODE_412"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2622
    const/16 v2, 0x19c

    goto/16 :goto_0

    .line 2597
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

    .line 2598
    .restart local v14    # "oir":Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mOirCache:Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;
    invoke-static {v2, v14}, Lcom/android/internal/telephony/MMTelSSTransport;->access$002(Lcom/android/internal/telephony/MMTelSSTransport;Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;)Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;

    .line 2599
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mOirCachePhoneId:I
    invoke-static {v2, v8}, Lcom/android/internal/telephony/MMTelSSTransport;->access$202(Lcom/android/internal/telephony/MMTelSSTransport;I)I

    .line 2600
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mOirCacheLastQueried:J
    invoke-static {v2, v12, v13}, Lcom/android/internal/telephony/MMTelSSTransport;->access$102(Lcom/android/internal/telephony/MMTelSSTransport;J)J

    .line 2601
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

    .line 2639
    .end local v12    # "curTime":J
    .end local v14    # "oir":Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;
    :catch_1
    move-exception v11

    .line 2642
    .local v11, "e":Ljava/lang/Exception;
    const-string v2, "MMTelSS"

    const-string v3, "handleSetCLIR():Start to Print Stack Trace"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2643
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    const/4 v3, 0x0

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mOirCache:Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;
    invoke-static {v2, v3}, Lcom/android/internal/telephony/MMTelSSTransport;->access$002(Lcom/android/internal/telephony/MMTelSSTransport;Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;)Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;

    .line 2644
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    const/4 v3, -0x1

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mOirCachePhoneId:I
    invoke-static {v2, v3}, Lcom/android/internal/telephony/MMTelSSTransport;->access$202(Lcom/android/internal/telephony/MMTelSSTransport;I)I

    .line 2645
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    const-wide/16 v4, 0x0

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mOirCacheLastQueried:J
    invoke-static {v2, v4, v5}, Lcom/android/internal/telephony/MMTelSSTransport;->access$102(Lcom/android/internal/telephony/MMTelSSTransport;J)J

    .line 2647
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    .line 2648
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v2, :cond_4

    .line 2649
    const/4 v2, 0x2

    invoke-static {v2}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v9

    .line 2650
    .local v9, "ce":Lcom/android/internal/telephony/CommandException;
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v3, 0x0

    invoke-static {v2, v3, v9}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 2651
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 2652
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 2653
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->releaseNetwork()V

    .line 2655
    :cond_9
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 2607
    .end local v9    # "ce":Lcom/android/internal/telephony/CommandException;
    .end local v11    # "e":Ljava/lang/Exception;
    .restart local v12    # "curTime":J
    .restart local v14    # "oir":Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;
    :cond_a
    const/4 v2, 0x2

    if-ne v10, v2, :cond_b

    .line 2608
    const/4 v2, 0x0

    :try_start_3
    invoke-virtual {v14, v2}, Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;->setDefaultPresentationRestricted(Z)V

    goto/16 :goto_2

    .line 2610
    :cond_b
    const/4 v2, 0x0

    invoke-virtual {v14, v2}, Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;->setDefaultPresentationRestricted(Z)V
    :try_end_3
    .catch Lcom/mediatek/simservs/xcap/XcapException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_2

    .line 2624
    .end local v12    # "curTime":J
    .end local v14    # "oir":Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;
    .restart local v17    # "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    :cond_c
    const-string v2, "MMTelSS"

    const-string v3, "handleSetCLIR(): XcapException"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2625
    invoke-virtual/range {v17 .. v17}, Lcom/mediatek/simservs/xcap/XcapException;->printStackTrace()V

    .line 2626
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v2, :cond_4

    .line 2627
    invoke-virtual/range {v17 .. v17}, Lcom/mediatek/simservs/xcap/XcapException;->isConnectionError()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 2628
    const-string v2, "MMTelSS"

    const-string v3, "handleSetCLIR(): xcapException.isConnectionError()"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2629
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v3, 0x0

    new-instance v4, Ljava/net/UnknownHostException;

    invoke-direct {v4}, Ljava/net/UnknownHostException;-><init>()V

    invoke-static {v2, v3, v4}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 2633
    :goto_3
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 2634
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v2

    if-eqz v2, :cond_d

    .line 2635
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->releaseNetwork()V

    .line 2637
    :cond_d
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 2631
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
    .line 2845
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 2846
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 2847
    .local v10, "reqNo":I
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 2849
    .local v11, "serialNo":I
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 2850
    .local v8, "colpEnable":I
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 2851
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

    .line 2853
    invoke-static {v6}, Lcom/android/internal/telephony/MMTelSSUtils;->isPreferXcap(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2854
    const-string v0, "MMTelSS"

    const-string v1, "handleSetCOLP(): !isPreferXcap()"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2855
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v0, :cond_0

    .line 2856
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v1, 0x0

    new-instance v2, Ljava/net/UnknownHostException;

    invoke-direct {v2}, Ljava/net/UnknownHostException;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 2857
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2927
    :cond_0
    :goto_0
    return-void

    .line 2863
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-static {v6}, Lcom/android/internal/telephony/MMTelSSUtils;->getXui(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/MMTelSSTransport;->mXui:Ljava/lang/String;

    .line 2864
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-static {v6}, Lcom/android/internal/telephony/MMTelSSUtils;->getXcapRootUri(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    .line 2865
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-static {v6}, Lcom/android/internal/telephony/MMTelSSUtils;->getXIntendedId(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/MMTelSSTransport;->mXIntendedId:Ljava/lang/String;

    .line 2867
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v0, v0, Lcom/android/internal/telephony/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2868
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

    .line 2869
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v0, :cond_0

    .line 2870
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v1, 0x0

    new-instance v2, Ljava/net/UnknownHostException;

    invoke-direct {v2}, Ljava/net/UnknownHostException;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 2871
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catch Lcom/mediatek/simservs/xcap/XcapException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 2887
    :catch_0
    move-exception v13

    .line 2888
    .local v13, "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    const-string v0, "MMTelSS"

    const-string v1, "handleSetCOLP(): XcapException"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2889
    invoke-virtual {v13}, Lcom/mediatek/simservs/xcap/XcapException;->printStackTrace()V

    .line 2890
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v0, :cond_3

    .line 2891
    invoke-virtual {v13}, Lcom/mediatek/simservs/xcap/XcapException;->isConnectionError()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2892
    const-string v0, "MMTelSS"

    const-string v1, "handleSetCOLP(): xcapException.isConnectionError()"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2893
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v1, 0x0

    new-instance v2, Ljava/net/UnknownHostException;

    invoke-direct {v2}, Ljava/net/UnknownHostException;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 2897
    :goto_1
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2898
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v0}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2899
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v0}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->releaseNetwork()V

    goto/16 :goto_0

    .line 2876
    .end local v13    # "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # invokes: Lcom/android/internal/telephony/MMTelSSTransport;->requestXcapNetwork(I)V
    invoke-static {v0, v6}, Lcom/android/internal/telephony/MMTelSSTransport;->access$300(Lcom/android/internal/telephony/MMTelSSTransport;I)V

    .line 2878
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

    .line 2880
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

    .line 2882
    .local v12, "tip":Lcom/mediatek/simservs/client/TerminatingIdentityPresentation;
    const/4 v0, 0x1

    if-ne v8, v0, :cond_5

    .line 2883
    const/4 v0, 0x1

    invoke-virtual {v12, v0}, Lcom/mediatek/simservs/client/TerminatingIdentityPresentation;->setActive(Z)V
    :try_end_1
    .catch Lcom/mediatek/simservs/xcap/XcapException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 2920
    .end local v12    # "tip":Lcom/mediatek/simservs/client/TerminatingIdentityPresentation;
    :cond_3
    :goto_2
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v0, :cond_4

    .line 2921
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 2922
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2924
    :cond_4
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v0}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2925
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v0}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->releaseNetwork()V

    goto/16 :goto_0

    .line 2885
    .restart local v12    # "tip":Lcom/mediatek/simservs/client/TerminatingIdentityPresentation;
    :cond_5
    const/4 v0, 0x0

    :try_start_2
    invoke-virtual {v12, v0}, Lcom/mediatek/simservs/client/TerminatingIdentityPresentation;->setActive(Z)V
    :try_end_2
    .catch Lcom/mediatek/simservs/xcap/XcapException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 2903
    .end local v12    # "tip":Lcom/mediatek/simservs/client/TerminatingIdentityPresentation;
    :catch_1
    move-exception v9

    .line 2906
    .local v9, "e":Ljava/lang/Exception;
    const-string v0, "MMTelSS"

    const-string v1, "handleSetCOLP():Start to Print Stack Trace"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2907
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    .line 2908
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v0, :cond_3

    .line 2909
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v7

    .line 2910
    .local v7, "ce":Lcom/android/internal/telephony/CommandException;
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v1, 0x0

    invoke-static {v0, v1, v7}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 2911
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2912
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v0}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2913
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v0}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->releaseNetwork()V

    goto/16 :goto_0

    .line 2895
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
    .line 2758
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 2759
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 2760
    .local v10, "reqNo":I
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 2762
    .local v11, "serialNo":I
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 2763
    .local v8, "colrMode":I
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 2764
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

    .line 2766
    invoke-static {v6}, Lcom/android/internal/telephony/MMTelSSUtils;->isPreferXcap(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2767
    const-string v0, "MMTelSS"

    const-string v1, "handleSetCOLR(): !isPreferXcap()"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2768
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v0, :cond_0

    .line 2769
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v1, 0x0

    new-instance v2, Ljava/net/UnknownHostException;

    invoke-direct {v2}, Ljava/net/UnknownHostException;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 2770
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2842
    :cond_0
    :goto_0
    return-void

    .line 2776
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-static {v6}, Lcom/android/internal/telephony/MMTelSSUtils;->getXui(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/MMTelSSTransport;->mXui:Ljava/lang/String;

    .line 2777
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-static {v6}, Lcom/android/internal/telephony/MMTelSSUtils;->getXcapRootUri(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    .line 2778
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-static {v6}, Lcom/android/internal/telephony/MMTelSSUtils;->getXIntendedId(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/MMTelSSTransport;->mXIntendedId:Ljava/lang/String;

    .line 2780
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v0, v0, Lcom/android/internal/telephony/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2781
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

    .line 2782
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v0, :cond_0

    .line 2783
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v1, 0x0

    new-instance v2, Ljava/net/UnknownHostException;

    invoke-direct {v2}, Ljava/net/UnknownHostException;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 2784
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catch Lcom/mediatek/simservs/xcap/XcapException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 2802
    :catch_0
    move-exception v13

    .line 2803
    .local v13, "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    const-string v0, "MMTelSS"

    const-string v1, "handleSetCOLR(): XcapException"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2804
    invoke-virtual {v13}, Lcom/mediatek/simservs/xcap/XcapException;->printStackTrace()V

    .line 2805
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v0, :cond_3

    .line 2806
    invoke-virtual {v13}, Lcom/mediatek/simservs/xcap/XcapException;->isConnectionError()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2807
    const-string v0, "MMTelSS"

    const-string v1, "handleSetCOLR(): xcapException.isConnectionError()"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2808
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v1, 0x0

    new-instance v2, Ljava/net/UnknownHostException;

    invoke-direct {v2}, Ljava/net/UnknownHostException;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 2812
    :goto_1
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2813
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v0}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2814
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v0}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->releaseNetwork()V

    goto/16 :goto_0

    .line 2789
    .end local v13    # "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # invokes: Lcom/android/internal/telephony/MMTelSSTransport;->requestXcapNetwork(I)V
    invoke-static {v0, v6}, Lcom/android/internal/telephony/MMTelSSTransport;->access$300(Lcom/android/internal/telephony/MMTelSSTransport;I)V

    .line 2791
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

    .line 2793
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

    .line 2795
    .local v12, "tir":Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;
    const/4 v0, 0x1

    if-ne v8, v0, :cond_5

    .line 2796
    const/4 v0, 0x1

    invoke-virtual {v12, v0}, Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;->setDefaultPresentationRestricted(Z)V
    :try_end_1
    .catch Lcom/mediatek/simservs/xcap/XcapException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 2835
    .end local v12    # "tir":Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;
    :cond_3
    :goto_2
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v0, :cond_4

    .line 2836
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 2837
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2839
    :cond_4
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v0}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2840
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v0}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->releaseNetwork()V

    goto/16 :goto_0

    .line 2797
    .restart local v12    # "tir":Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;
    :cond_5
    const/4 v0, 0x2

    if-ne v8, v0, :cond_6

    .line 2798
    const/4 v0, 0x0

    :try_start_2
    invoke-virtual {v12, v0}, Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;->setDefaultPresentationRestricted(Z)V
    :try_end_2
    .catch Lcom/mediatek/simservs/xcap/XcapException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 2818
    .end local v12    # "tir":Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;
    :catch_1
    move-exception v9

    .line 2821
    .local v9, "e":Ljava/lang/Exception;
    const-string v0, "MMTelSS"

    const-string v1, "handleSetCOLR():Start to Print Stack Trace"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2822
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    .line 2823
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v0, :cond_3

    .line 2824
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v7

    .line 2825
    .local v7, "ce":Lcom/android/internal/telephony/CommandException;
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v1, 0x0

    invoke-static {v0, v1, v7}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 2826
    iget-object v0, p1, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2827
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v0}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2828
    iget-object v0, p0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v0}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->releaseNetwork()V

    goto/16 :goto_0

    .line 2800
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

    .line 2810
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
    .line 2932
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 2933
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 2934
    .local v15, "reqNo":I
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 2935
    .local v16, "serialNo":I
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 2936
    .local v14, "enabled":I
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 2937
    .local v17, "serviceClass":I
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 2939
    .local v8, "phoneId":I
    invoke-static {v8}, Lcom/android/internal/telephony/MMTelSSUtils;->isPreferXcap(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2940
    const-string v2, "MMTelSS"

    const-string v3, "handleSetCW(): !isPreferXcap()"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2941
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v2, :cond_0

    .line 2942
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v3, 0x0

    new-instance v4, Ljava/net/UnknownHostException;

    invoke-direct {v4}, Ljava/net/UnknownHostException;-><init>()V

    invoke-static {v2, v3, v4}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 2943
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 2945
    :cond_0
    const/4 v2, 0x0

    .line 3050
    :goto_0
    return v2

    .line 2950
    :cond_1
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 2951
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

    .line 2954
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-static {v8}, Lcom/android/internal/telephony/MMTelSSUtils;->getXui(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/telephony/MMTelSSTransport;->mXui:Ljava/lang/String;

    .line 2955
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-static {v8}, Lcom/android/internal/telephony/MMTelSSUtils;->getXcapRootUri(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/telephony/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    .line 2956
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-static {v8}, Lcom/android/internal/telephony/MMTelSSUtils;->getXIntendedId(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/telephony/MMTelSSTransport;->mXIntendedId:Ljava/lang/String;

    .line 2958
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v2, v2, Lcom/android/internal/telephony/MMTelSSTransport;->mXcapRoot:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2959
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

    .line 2960
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v2, :cond_2

    .line 2961
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v3, 0x0

    new-instance v4, Ljava/net/UnknownHostException;

    invoke-direct {v4}, Ljava/net/UnknownHostException;-><init>()V

    invoke-static {v2, v3, v4}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 2962
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 2964
    :cond_2
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 2966
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # invokes: Lcom/android/internal/telephony/MMTelSSTransport;->requestXcapNetwork(I)V
    invoke-static {v2, v8}, Lcom/android/internal/telephony/MMTelSSTransport;->access$300(Lcom/android/internal/telephony/MMTelSSTransport;I)V

    .line 2967
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

    .line 2969
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

    .line 2971
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

    .line 2972
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCwCache:Lcom/mediatek/simservs/client/CommunicationWaiting;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$700(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/mediatek/simservs/client/CommunicationWaiting;

    move-result-object v12

    .line 2973
    .local v12, "cw":Lcom/mediatek/simservs/client/CommunicationWaiting;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mNetwork:Landroid/net/Network;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$400(Lcom/android/internal/telephony/MMTelSSTransport;)Landroid/net/Network;

    move-result-object v2

    invoke-virtual {v12, v2}, Lcom/mediatek/simservs/client/CommunicationWaiting;->setNetwork(Landroid/net/Network;)V

    .line 2974
    invoke-virtual {v12}, Lcom/mediatek/simservs/client/CommunicationWaiting;->refresh()V

    .line 2975
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCwCacheLastQueried:J
    invoke-static {v2, v10, v11}, Lcom/android/internal/telephony/MMTelSSTransport;->access$802(Lcom/android/internal/telephony/MMTelSSTransport;J)J

    .line 2990
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

    .line 2991
    const/4 v2, 0x1

    if-ne v14, v2, :cond_a

    .line 2992
    const/4 v2, 0x1

    invoke-virtual {v12, v2}, Lcom/mediatek/simservs/client/CommunicationWaiting;->setActive(Z)V
    :try_end_0
    .catch Lcom/mediatek/simservs/xcap/XcapException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 3041
    .end local v10    # "curTime":J
    .end local v12    # "cw":Lcom/mediatek/simservs/client/CommunicationWaiting;
    :cond_4
    :goto_2
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v2, :cond_5

    .line 3042
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 3043
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 3046
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 3047
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->releaseNetwork()V

    .line 3050
    :cond_6
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 2976
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

    .line 2979
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

    .line 2980
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCwCache:Lcom/mediatek/simservs/client/CommunicationWaiting;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$700(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/mediatek/simservs/client/CommunicationWaiting;

    move-result-object v12

    .line 2981
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

    .line 2996
    .end local v10    # "curTime":J
    .end local v12    # "cw":Lcom/mediatek/simservs/client/CommunicationWaiting;
    :catch_0
    move-exception v18

    .line 2997
    .local v18, "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    const/4 v3, 0x0

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCwCache:Lcom/mediatek/simservs/client/CommunicationWaiting;
    invoke-static {v2, v3}, Lcom/android/internal/telephony/MMTelSSTransport;->access$702(Lcom/android/internal/telephony/MMTelSSTransport;Lcom/mediatek/simservs/client/CommunicationWaiting;)Lcom/mediatek/simservs/client/CommunicationWaiting;

    .line 2998
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    const/4 v3, -0x1

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCwCachePhoneId:I
    invoke-static {v2, v3}, Lcom/android/internal/telephony/MMTelSSTransport;->access$902(Lcom/android/internal/telephony/MMTelSSTransport;I)I

    .line 2999
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    const-wide/16 v4, 0x0

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCwCacheLastQueried:J
    invoke-static {v2, v4, v5}, Lcom/android/internal/telephony/MMTelSSTransport;->access$802(Lcom/android/internal/telephony/MMTelSSTransport;J)J

    .line 3001
    invoke-virtual/range {v18 .. v18}, Lcom/mediatek/simservs/xcap/XcapException;->getHttpErrorCode()I

    move-result v2

    const/16 v3, 0x19c

    if-ne v2, v3, :cond_b

    .line 3002
    const-string v2, "MMTelSS"

    const-string v3, "handleSetCW(): HTTP_ERROR_CODE_412"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3003
    const/16 v2, 0x19c

    goto/16 :goto_0

    .line 2983
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

    .line 2984
    .restart local v12    # "cw":Lcom/mediatek/simservs/client/CommunicationWaiting;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCwCache:Lcom/mediatek/simservs/client/CommunicationWaiting;
    invoke-static {v2, v12}, Lcom/android/internal/telephony/MMTelSSTransport;->access$702(Lcom/android/internal/telephony/MMTelSSTransport;Lcom/mediatek/simservs/client/CommunicationWaiting;)Lcom/mediatek/simservs/client/CommunicationWaiting;

    .line 2985
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCwCachePhoneId:I
    invoke-static {v2, v8}, Lcom/android/internal/telephony/MMTelSSTransport;->access$902(Lcom/android/internal/telephony/MMTelSSTransport;I)I

    .line 2986
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCwCacheLastQueried:J
    invoke-static {v2, v10, v11}, Lcom/android/internal/telephony/MMTelSSTransport;->access$802(Lcom/android/internal/telephony/MMTelSSTransport;J)J

    .line 2987
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

    .line 3020
    .end local v10    # "curTime":J
    .end local v12    # "cw":Lcom/mediatek/simservs/client/CommunicationWaiting;
    :catch_1
    move-exception v13

    .line 3023
    .local v13, "e":Ljava/lang/Exception;
    const-string v2, "MMTelSS"

    const-string v3, "handleSetCW():Start to Print Stack Trace"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3024
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    const/4 v3, 0x0

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCwCache:Lcom/mediatek/simservs/client/CommunicationWaiting;
    invoke-static {v2, v3}, Lcom/android/internal/telephony/MMTelSSTransport;->access$702(Lcom/android/internal/telephony/MMTelSSTransport;Lcom/mediatek/simservs/client/CommunicationWaiting;)Lcom/mediatek/simservs/client/CommunicationWaiting;

    .line 3025
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    const/4 v3, -0x1

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCwCachePhoneId:I
    invoke-static {v2, v3}, Lcom/android/internal/telephony/MMTelSSTransport;->access$902(Lcom/android/internal/telephony/MMTelSSTransport;I)I

    .line 3026
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    const-wide/16 v4, 0x0

    # setter for: Lcom/android/internal/telephony/MMTelSSTransport;->mCwCacheLastQueried:J
    invoke-static {v2, v4, v5}, Lcom/android/internal/telephony/MMTelSSTransport;->access$802(Lcom/android/internal/telephony/MMTelSSTransport;J)J

    .line 3028
    invoke-virtual {v13}, Ljava/lang/Exception;->printStackTrace()V

    .line 3029
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v2, :cond_4

    .line 3030
    const/4 v2, 0x2

    invoke-static {v2}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v9

    .line 3031
    .local v9, "ce":Lcom/android/internal/telephony/CommandException;
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v3, 0x0

    invoke-static {v2, v3, v9}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 3032
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 3033
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 3034
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->releaseNetwork()V

    .line 3036
    :cond_9
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 2994
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

    .line 3005
    .end local v10    # "curTime":J
    .end local v12    # "cw":Lcom/mediatek/simservs/client/CommunicationWaiting;
    .restart local v18    # "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    :cond_b
    const-string v2, "MMTelSS"

    const-string v3, "handleSetCW(): XcapException"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3006
    invoke-virtual/range {v18 .. v18}, Lcom/mediatek/simservs/xcap/XcapException;->printStackTrace()V

    .line 3007
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v2, :cond_4

    .line 3008
    invoke-virtual/range {v18 .. v18}, Lcom/mediatek/simservs/xcap/XcapException;->isConnectionError()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 3009
    const-string v2, "MMTelSS"

    const-string v3, "handleSetCW(): xcapException.isConnectionError()"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3010
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v3, 0x0

    new-instance v4, Ljava/net/UnknownHostException;

    invoke-direct {v4}, Ljava/net/UnknownHostException;-><init>()V

    invoke-static {v2, v3, v4}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 3014
    :goto_3
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 3015
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v2

    if-eqz v2, :cond_c

    .line 3016
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/android/internal/telephony/MMTelSSTransport;

    # getter for: Lcom/android/internal/telephony/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/android/internal/telephony/XcapMobileDataNetworkManager;
    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSTransport;->access$600(Lcom/android/internal/telephony/MMTelSSTransport;)Lcom/android/internal/telephony/XcapMobileDataNetworkManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/XcapMobileDataNetworkManager;->releaseNetwork()V

    .line 3018
    :cond_c
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 3012
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
