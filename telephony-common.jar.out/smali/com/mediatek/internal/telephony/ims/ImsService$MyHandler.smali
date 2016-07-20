.class Lcom/mediatek/internal/telephony/ims/ImsService$MyHandler;
.super Landroid/os/Handler;
.source "ImsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/ims/ImsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/internal/telephony/ims/ImsService;


# direct methods
.method private constructor <init>(Lcom/mediatek/internal/telephony/ims/ImsService;)V
    .locals 0

    .prologue
    .line 790
    iput-object p1, p0, Lcom/mediatek/internal/telephony/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/internal/telephony/ims/ImsService;Lcom/mediatek/internal/telephony/ims/ImsService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/mediatek/internal/telephony/ims/ImsService;
    .param p2, "x1"    # Lcom/mediatek/internal/telephony/ims/ImsService$1;

    .prologue
    .line 790
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/ims/ImsService$MyHandler;-><init>(Lcom/mediatek/internal/telephony/ims/ImsService;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 14
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 796
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->getMainCapabilityPhoneId()I

    move-result v4

    .line 797
    .local v4, "phoneId":I
    iget v10, p1, Landroid/os/Message;->what:I

    packed-switch v10, :pswitch_data_0

    .line 968
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 799
    :pswitch_1
    const-string v10, "ImsService"

    const-string v11, "receive EVENT_IMS_REGISTRATION_INFO"

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 815
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 818
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v10, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v10, [I

    check-cast v10, [I

    const/4 v11, 0x2

    aget v8, v10, v11

    .line 819
    .local v8, "socketId":I
    iget-object v10, p0, Lcom/mediatek/internal/telephony/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsService;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsService;->mActivePhoneId:I
    invoke-static {v10}, Lcom/mediatek/internal/telephony/ims/ImsService;->access$300(Lcom/mediatek/internal/telephony/ims/ImsService;)I

    move-result v10

    invoke-static {v10}, Landroid/telephony/SubscriptionManager;->getSubIdUsingPhoneId(I)I

    move-result v9

    .line 820
    .local v9, "subId":I
    invoke-static {v9}, Landroid/telephony/SubscriptionManager;->getSlotId(I)I

    move-result v7

    .line 821
    .local v7, "slotId":I
    const-string v10, "ImsService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "IMS: socketId = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " mActivePhoneId = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/mediatek/internal/telephony/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsService;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsService;->mActivePhoneId:I
    invoke-static {v12}, Lcom/mediatek/internal/telephony/ims/ImsService;->access$300(Lcom/mediatek/internal/telephony/ims/ImsService;)I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " subId = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " slotId = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 824
    if-eq v8, v7, :cond_1

    .line 825
    const-string v10, "ImsService"

    const-string v11, "IMS: ignore other slot\'s registration event"

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 830
    :cond_1
    const/4 v3, 0x3

    .line 831
    .local v3, "newImsRegInfo":I
    iget-object v10, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v10, [I

    check-cast v10, [I

    const/4 v11, 0x0

    aget v10, v10, v11

    const/4 v11, 0x1

    if-ne v10, v11, :cond_3

    .line 832
    const/4 v3, 0x0

    .line 837
    :goto_1
    const-string v10, "persist.ims.simulate"

    const/4 v11, 0x0

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_2

    .line 838
    iget-object v10, p0, Lcom/mediatek/internal/telephony/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsService;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsService;->mImsRegistry:Z
    invoke-static {v10}, Lcom/mediatek/internal/telephony/ims/ImsService;->access$400(Lcom/mediatek/internal/telephony/ims/ImsService;)Z

    move-result v10

    if-eqz v10, :cond_4

    const/4 v3, 0x0

    .line 840
    :goto_2
    const-string v10, "ImsService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Override EVENT_IMS_REGISTRATION_INFO: newImsRegInfo="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 844
    :cond_2
    iget-object v10, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v10, [I

    check-cast v10, [I

    const/4 v11, 0x1

    aget v2, v10, v11

    .line 848
    .local v2, "newImsExtInfo":I
    const-string v10, "ImsService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "newReg:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " oldReg:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/mediatek/internal/telephony/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsService;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsService;->mImsRegInfo:I
    invoke-static {v12}, Lcom/mediatek/internal/telephony/ims/ImsService;->access$800(Lcom/mediatek/internal/telephony/ims/ImsService;)I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 851
    iget-object v10, p0, Lcom/mediatek/internal/telephony/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsService;

    # setter for: Lcom/mediatek/internal/telephony/ims/ImsService;->mImsRegInfo:I
    invoke-static {v10, v3}, Lcom/mediatek/internal/telephony/ims/ImsService;->access$802(Lcom/mediatek/internal/telephony/ims/ImsService;I)I

    .line 852
    iget-object v10, p0, Lcom/mediatek/internal/telephony/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsService;

    iget-object v11, p0, Lcom/mediatek/internal/telephony/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsService;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsService;->mImsRegInfo:I
    invoke-static {v11}, Lcom/mediatek/internal/telephony/ims/ImsService;->access$800(Lcom/mediatek/internal/telephony/ims/ImsService;)I

    move-result v11

    # invokes: Lcom/mediatek/internal/telephony/ims/ImsService;->notifyRegistrationStateChange(I)V
    invoke-static {v10, v11}, Lcom/mediatek/internal/telephony/ims/ImsService;->access$900(Lcom/mediatek/internal/telephony/ims/ImsService;I)V

    .line 856
    const-string v10, "ImsService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "newRegExt:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "oldRegExt:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/mediatek/internal/telephony/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsService;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsService;->mImsExtInfo:I
    invoke-static {v12}, Lcom/mediatek/internal/telephony/ims/ImsService;->access$1000(Lcom/mediatek/internal/telephony/ims/ImsService;)I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 859
    iget-object v10, p0, Lcom/mediatek/internal/telephony/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsService;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsService;->mImsRegInfo:I
    invoke-static {v10}, Lcom/mediatek/internal/telephony/ims/ImsService;->access$800(Lcom/mediatek/internal/telephony/ims/ImsService;)I

    move-result v10

    if-nez v10, :cond_5

    .line 860
    iget-object v10, p0, Lcom/mediatek/internal/telephony/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsService;

    # setter for: Lcom/mediatek/internal/telephony/ims/ImsService;->mImsExtInfo:I
    invoke-static {v10, v2}, Lcom/mediatek/internal/telephony/ims/ImsService;->access$1002(Lcom/mediatek/internal/telephony/ims/ImsService;I)I

    .line 864
    :goto_3
    iget-object v10, p0, Lcom/mediatek/internal/telephony/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsService;

    iget-object v11, p0, Lcom/mediatek/internal/telephony/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsService;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsService;->mImsExtInfo:I
    invoke-static {v11}, Lcom/mediatek/internal/telephony/ims/ImsService;->access$1000(Lcom/mediatek/internal/telephony/ims/ImsService;)I

    move-result v11

    # invokes: Lcom/mediatek/internal/telephony/ims/ImsService;->notifyRegistrationCapabilityChange(I)V
    invoke-static {v10, v11}, Lcom/mediatek/internal/telephony/ims/ImsService;->access$1100(Lcom/mediatek/internal/telephony/ims/ImsService;I)V

    goto/16 :goto_0

    .line 834
    .end local v2    # "newImsExtInfo":I
    :cond_3
    const/4 v3, 0x1

    goto/16 :goto_1

    .line 838
    :cond_4
    const/4 v3, 0x1

    goto/16 :goto_2

    .line 862
    .restart local v2    # "newImsExtInfo":I
    :cond_5
    iget-object v10, p0, Lcom/mediatek/internal/telephony/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsService;

    const/4 v11, 0x0

    # setter for: Lcom/mediatek/internal/telephony/ims/ImsService;->mImsExtInfo:I
    invoke-static {v10, v11}, Lcom/mediatek/internal/telephony/ims/ImsService;->access$1002(Lcom/mediatek/internal/telephony/ims/ImsService;I)I

    goto :goto_3

    .line 870
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v2    # "newImsExtInfo":I
    .end local v3    # "newImsRegInfo":I
    .end local v7    # "slotId":I
    .end local v8    # "socketId":I
    .end local v9    # "subId":I
    :pswitch_2
    const-string v10, "ImsService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "EVENT_IMS_ENABLING_URC: mActivePhoneId = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/mediatek/internal/telephony/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsService;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsService;->mActivePhoneId:I
    invoke-static {v12}, Lcom/mediatek/internal/telephony/ims/ImsService;->access$300(Lcom/mediatek/internal/telephony/ims/ImsService;)I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " phoneId = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 874
    iget-object v10, p0, Lcom/mediatek/internal/telephony/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsService;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsService;->mActivePhoneId:I
    invoke-static {v10}, Lcom/mediatek/internal/telephony/ims/ImsService;->access$300(Lcom/mediatek/internal/telephony/ims/ImsService;)I

    move-result v10

    if-eq v10, v4, :cond_6

    .line 875
    iget-object v10, p0, Lcom/mediatek/internal/telephony/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsService;

    # setter for: Lcom/mediatek/internal/telephony/ims/ImsService;->mActivePhoneId:I
    invoke-static {v10, v4}, Lcom/mediatek/internal/telephony/ims/ImsService;->access$302(Lcom/mediatek/internal/telephony/ims/ImsService;I)I

    .line 878
    :cond_6
    new-instance v1, Landroid/content/Intent;

    const-string v10, "com.android.ims.IMS_SERVICE_UP"

    invoke-direct {v1, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 879
    .local v1, "intent":Landroid/content/Intent;
    const-string v10, "android:phone_id"

    iget-object v11, p0, Lcom/mediatek/internal/telephony/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsService;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsService;->mActivePhoneId:I
    invoke-static {v11}, Lcom/mediatek/internal/telephony/ims/ImsService;->access$300(Lcom/mediatek/internal/telephony/ims/ImsService;)I

    move-result v11

    invoke-virtual {v1, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 880
    iget-object v10, p0, Lcom/mediatek/internal/telephony/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsService;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsService;->mContext:Landroid/content/Context;
    invoke-static {v10}, Lcom/mediatek/internal/telephony/ims/ImsService;->access$600(Lcom/mediatek/internal/telephony/ims/ImsService;)Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 882
    iget-object v10, p0, Lcom/mediatek/internal/telephony/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsService;

    invoke-virtual {v10}, Lcom/mediatek/internal/telephony/ims/ImsService;->enableImsAdapter()V

    .line 883
    iget-object v10, p0, Lcom/mediatek/internal/telephony/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsService;

    const/4 v11, 0x1

    # setter for: Lcom/mediatek/internal/telephony/ims/ImsService;->mImsState:I
    invoke-static {v10, v11}, Lcom/mediatek/internal/telephony/ims/ImsService;->access$1202(Lcom/mediatek/internal/telephony/ims/ImsService;I)I

    .line 884
    const-string v10, "ro.mtk_wfc_support"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "1"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 885
    iget-object v10, p0, Lcom/mediatek/internal/telephony/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsService;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsService;->mImsRILAdapter:Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;
    invoke-static {v10}, Lcom/mediatek/internal/telephony/ims/ImsService;->access$700(Lcom/mediatek/internal/telephony/ims/ImsService;)Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;

    move-result-object v10

    iget-object v11, p0, Lcom/mediatek/internal/telephony/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsService;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsService;->mContext:Landroid/content/Context;
    invoke-static {v11}, Lcom/mediatek/internal/telephony/ims/ImsService;->access$600(Lcom/mediatek/internal/telephony/ims/ImsService;)Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "user_selected_wfc_preference"

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    invoke-virtual {v10, v11}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->sendWfcProfileInfo(I)V

    goto/16 :goto_0

    .line 893
    .end local v1    # "intent":Landroid/content/Intent;
    :pswitch_3
    const-string v10, "ImsService"

    const-string v11, "receive EVENT_IMS_ENABLED_URC"

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 899
    :pswitch_4
    const-string v10, "ImsService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "EVENT_IMS_DISABLING_URC: mActivePhoneId = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/mediatek/internal/telephony/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsService;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsService;->mActivePhoneId:I
    invoke-static {v12}, Lcom/mediatek/internal/telephony/ims/ImsService;->access$300(Lcom/mediatek/internal/telephony/ims/ImsService;)I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " phoneId = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 903
    iget-object v10, p0, Lcom/mediatek/internal/telephony/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsService;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsService;->mActivePhoneId:I
    invoke-static {v10}, Lcom/mediatek/internal/telephony/ims/ImsService;->access$300(Lcom/mediatek/internal/telephony/ims/ImsService;)I

    move-result v10

    if-eq v10, v4, :cond_0

    .line 904
    iget-object v10, p0, Lcom/mediatek/internal/telephony/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsService;

    # setter for: Lcom/mediatek/internal/telephony/ims/ImsService;->mActivePhoneId:I
    invoke-static {v10, v4}, Lcom/mediatek/internal/telephony/ims/ImsService;->access$302(Lcom/mediatek/internal/telephony/ims/ImsService;I)I

    goto/16 :goto_0

    .line 909
    :pswitch_5
    const-string v10, "ImsService"

    const-string v11, "receive EVENT_IMS_DISABLED_URC"

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 910
    new-instance v1, Landroid/content/Intent;

    const-string v10, "com.android.ims.IMS_SERVICE_DOWN"

    invoke-direct {v1, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 911
    .restart local v1    # "intent":Landroid/content/Intent;
    iget-object v10, p0, Lcom/mediatek/internal/telephony/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsService;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsService;->mContext:Landroid/content/Context;
    invoke-static {v10}, Lcom/mediatek/internal/telephony/ims/ImsService;->access$600(Lcom/mediatek/internal/telephony/ims/ImsService;)Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 913
    iget-object v10, p0, Lcom/mediatek/internal/telephony/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsService;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/mediatek/internal/telephony/ims/ImsService;->disableImsAdapter(Z)V

    .line 914
    iget-object v10, p0, Lcom/mediatek/internal/telephony/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsService;

    const/4 v11, 0x0

    # setter for: Lcom/mediatek/internal/telephony/ims/ImsService;->mImsState:I
    invoke-static {v10, v11}, Lcom/mediatek/internal/telephony/ims/ImsService;->access$1202(Lcom/mediatek/internal/telephony/ims/ImsService;I)I

    goto/16 :goto_0

    .line 919
    .end local v1    # "intent":Landroid/content/Intent;
    :pswitch_6
    const-string v10, "ImsService"

    const-string v11, "receive EVENT_SET_IMS_ENABLED_DONE"

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 925
    :pswitch_7
    const-string v10, "ImsService"

    const-string v11, "receive EVENT_SET_IMS_DISABLE_DONE"

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 929
    :pswitch_8
    const-string v10, "ImsService"

    const-string v11, "receive EVENT_INCOMING_CALL_INDICATION"

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 930
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 931
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v10, p0, Lcom/mediatek/internal/telephony/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsService;

    # invokes: Lcom/mediatek/internal/telephony/ims/ImsService;->sendIncomingCallIndication(Landroid/os/AsyncResult;)V
    invoke-static {v10, v0}, Lcom/mediatek/internal/telephony/ims/ImsService;->access$1300(Lcom/mediatek/internal/telephony/ims/ImsService;Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 934
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_9
    const-string v10, "ImsService"

    const-string v11, "receive EVENT_CALL_RING"

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 937
    :pswitch_a
    const-string v10, "ImsService"

    const-string v11, "receive EVENT_RADIO_NOT_AVAILABLE"

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 938
    iget-object v10, p0, Lcom/mediatek/internal/telephony/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsService;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsService;->mContext:Landroid/content/Context;
    invoke-static {v10}, Lcom/mediatek/internal/telephony/ims/ImsService;->access$600(Lcom/mediatek/internal/telephony/ims/ImsService;)Landroid/content/Context;

    move-result-object v10

    new-instance v11, Landroid/content/Intent;

    const-string v12, "com.android.ims.IMS_SERVICE_DOWN"

    invoke-direct {v11, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v11}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 939
    iget-object v10, p0, Lcom/mediatek/internal/telephony/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsService;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/mediatek/internal/telephony/ims/ImsService;->disableImsAdapter(Z)V

    goto/16 :goto_0

    .line 942
    :pswitch_b
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 943
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v10, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v10, [I

    move-object v6, v10

    check-cast v6, [I

    .line 945
    .local v6, "sipMessage":[I
    if-eqz v6, :cond_0

    .line 946
    const-string v10, "ImsService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Method ="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/4 v12, 0x3

    aget v12, v6, v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "Reg cause ="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/4 v12, 0x4

    aget v12, v6, v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 947
    const/4 v10, 0x3

    aget v10, v6, v10

    if-eqz v10, :cond_7

    const/4 v10, 0x3

    aget v10, v6, v10

    const/16 v11, 0x9

    if-ne v10, v11, :cond_0

    .line 950
    :cond_7
    iget-object v10, p0, Lcom/mediatek/internal/telephony/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsService;

    iget-object v11, p0, Lcom/mediatek/internal/telephony/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsService;

    const/4 v12, 0x3

    aget v12, v6, v12

    const/4 v13, 0x4

    aget v13, v6, v13

    # invokes: Lcom/mediatek/internal/telephony/ims/ImsService;->translateRegErrors(II)I
    invoke-static {v11, v12, v13}, Lcom/mediatek/internal/telephony/ims/ImsService;->access$1400(Lcom/mediatek/internal/telephony/ims/ImsService;II)I

    move-result v11

    iput v11, v10, Lcom/mediatek/internal/telephony/ims/ImsService;->mWfcRegErrorCode:I

    goto/16 :goto_0

    .line 956
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v6    # "sipMessage":[I
    :pswitch_c
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/content/Intent;

    .line 957
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string v10, "handoverResult"

    const/4 v11, 0x0

    invoke-virtual {v1, v10, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    .line 959
    .local v5, "result":Z
    const-string v10, "ImsService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "EVENT_HANDOVER_DONE_INDICATION result = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 960
    if-eqz v5, :cond_0

    iget-object v10, p0, Lcom/mediatek/internal/telephony/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsService;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsService;->mImsRegInfo:I
    invoke-static {v10}, Lcom/mediatek/internal/telephony/ims/ImsService;->access$800(Lcom/mediatek/internal/telephony/ims/ImsService;)I

    move-result v10

    if-nez v10, :cond_0

    .line 961
    iget-object v10, p0, Lcom/mediatek/internal/telephony/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsService;

    iget-object v11, p0, Lcom/mediatek/internal/telephony/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsService;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsService;->mImsExtInfo:I
    invoke-static {v11}, Lcom/mediatek/internal/telephony/ims/ImsService;->access$1000(Lcom/mediatek/internal/telephony/ims/ImsService;)I

    move-result v11

    # invokes: Lcom/mediatek/internal/telephony/ims/ImsService;->notifyRegistrationCapabilityChange(I)V
    invoke-static {v10, v11}, Lcom/mediatek/internal/telephony/ims/ImsService;->access$1100(Lcom/mediatek/internal/telephony/ims/ImsService;I)V

    goto/16 :goto_0

    .line 797
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_a
        :pswitch_6
        :pswitch_7
        :pswitch_5
        :pswitch_0
        :pswitch_8
        :pswitch_0
        :pswitch_9
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method
