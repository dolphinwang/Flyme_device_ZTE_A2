.class Lcom/android/internal/telephony/uicc/UiccController$1;
.super Landroid/content/BroadcastReceiver;
.source "UiccController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/uicc/UiccController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/uicc/UiccController;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/uicc/UiccController;)V
    .locals 0

    .prologue
    .line 1104
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 17
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1106
    if-nez p2, :cond_1

    .line 1294
    :cond_0
    :goto_0
    return-void

    .line 1107
    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 1108
    .local v1, "action":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "mIntentReceiver Receive action "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    # invokes: Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V
    invoke-static {v12, v13}, Lcom/android/internal/telephony/uicc/UiccController;->access$100(Lcom/android/internal/telephony/uicc/UiccController;Ljava/lang/String;)V

    .line 1110
    const-string v12, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 1111
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "ss"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    # invokes: Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V
    invoke-static {v12, v13}, Lcom/android/internal/telephony/uicc/UiccController;->access$100(Lcom/android/internal/telephony/uicc/UiccController;Ljava/lang/String;)V

    .line 1112
    const-string v12, "ss"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1113
    .local v9, "stateExtra":Ljava/lang/String;
    const-string v12, "slot"

    const/4 v13, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    .line 1114
    .local v8, "slot":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "mIntentReceiver ACTION_SIM_STATE_CHANGED slot "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " ,state "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    # invokes: Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V
    invoke-static {v12, v13}, Lcom/android/internal/telephony/uicc/UiccController;->access$100(Lcom/android/internal/telephony/uicc/UiccController;Ljava/lang/String;)V

    .line 1116
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v12

    invoke-virtual {v12}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v12

    if-lt v8, v12, :cond_2

    .line 1117
    const-string v12, "UiccController"

    const-string v13, "BroadcastReceiver SIM State changed slot is invalid"

    invoke-static {v12, v13}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1121
    :cond_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {v12, v8}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v12

    if-eqz v12, :cond_3

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {v12, v8}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/internal/telephony/uicc/UiccCard;->getIccCardType()Ljava/lang/String;

    move-result-object v5

    .line 1123
    .local v5, "iccType":Ljava/lang/String;
    :goto_1
    const-string v12, "READY"

    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    const-string v12, "USIM"

    invoke-virtual {v12, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 1125
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    # getter for: Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v12}, Lcom/android/internal/telephony/uicc/UiccController;->access$200(Lcom/android/internal/telephony/uicc/UiccController;)[Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v12

    aget-object v12, v12, v8

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    const/16 v15, 0xc8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Lcom/android/internal/telephony/uicc/UiccController;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v14

    invoke-interface {v12, v13, v14}, Lcom/android/internal/telephony/CommandsInterface;->openIccApplication(ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 1121
    .end local v5    # "iccType":Ljava/lang/String;
    :cond_3
    const-string v5, ""

    goto :goto_1

    .line 1127
    .end local v8    # "slot":I
    .end local v9    # "stateExtra":Ljava/lang/String;
    :cond_4
    const-string v12, "android.intent.action.sim.ACTION_RESET_MODEM"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 1128
    const-string v12, "persist.radio.simswitch"

    const/4 v13, 0x1

    invoke-static {v12, v13}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 1129
    .local v7, "phoneIdFor3G":I
    if-lez v7, :cond_5

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    # getter for: Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v12}, Lcom/android/internal/telephony/uicc/UiccController;->access$200(Lcom/android/internal/telephony/uicc/UiccController;)[Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v12

    array-length v12, v12

    if-le v7, v12, :cond_6

    .line 1130
    :cond_5
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Receive ACTION_RESET_MODEM: invalid phone id."

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    # invokes: Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V
    invoke-static {v12, v13}, Lcom/android/internal/telephony/uicc/UiccController;->access$100(Lcom/android/internal/telephony/uicc/UiccController;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1133
    :cond_6
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "phone "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " will reset modem"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    # invokes: Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V
    invoke-static {v12, v13}, Lcom/android/internal/telephony/uicc/UiccController;->access$100(Lcom/android/internal/telephony/uicc/UiccController;Ljava/lang/String;)V

    .line 1134
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    # getter for: Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v12}, Lcom/android/internal/telephony/uicc/UiccController;->access$200(Lcom/android/internal/telephony/uicc/UiccController;)[Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v12

    add-int/lit8 v13, v7, -0x1

    aget-object v12, v12, v13

    const/4 v13, 0x0

    invoke-interface {v12, v13}, Lcom/android/internal/telephony/CommandsInterface;->resetRadio(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1135
    .end local v7    # "phoneIdFor3G":I
    :cond_7
    const-string v12, "com.mediatek.phone.ACTION_SET_RADIO_TECHNOLOGY_START"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_15

    .line 1136
    invoke-static {}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->getActiveSvlteModeSlotId()I

    move-result v10

    .line 1137
    .local v10, "svlteSlotId":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    const/4 v13, 0x0

    iput-boolean v13, v12, Lcom/android/internal/telephony/uicc/UiccController;->mSetRadioDone:Z

    .line 1138
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Receive ACTION_SET_RADIO_TECHNOLOGY_START oldSvlteSlotId: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    iget v14, v14, Lcom/android/internal/telephony/uicc/UiccController;->oldSvlteSlotId:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "  svlteSlotId: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " mSetRadioDone: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    iget-boolean v14, v14, Lcom/android/internal/telephony/uicc/UiccController;->mSetRadioDone:Z

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    # invokes: Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V
    invoke-static {v12, v13}, Lcom/android/internal/telephony/uicc/UiccController;->access$100(Lcom/android/internal/telephony/uicc/UiccController;Ljava/lang/String;)V

    .line 1141
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "START: mSvlteCi: "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    # getter for: Lcom/android/internal/telephony/uicc/UiccController;->mSvlteCi:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v12}, Lcom/android/internal/telephony/uicc/UiccController;->access$300(Lcom/android/internal/telephony/uicc/UiccController;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v12

    if-eqz v12, :cond_8

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    # getter for: Lcom/android/internal/telephony/uicc/UiccController;->mSvlteCi:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v12}, Lcom/android/internal/telephony/uicc/UiccController;->access$300(Lcom/android/internal/telephony/uicc/UiccController;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->hashCode()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    :goto_2
    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    # invokes: Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V
    invoke-static {v13, v12}, Lcom/android/internal/telephony/uicc/UiccController;->access$100(Lcom/android/internal/telephony/uicc/UiccController;Ljava/lang/String;)V

    .line 1142
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    # getter for: Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v12}, Lcom/android/internal/telephony/uicc/UiccController;->access$200(Lcom/android/internal/telephony/uicc/UiccController;)[Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v12

    array-length v12, v12

    if-ge v4, v12, :cond_a

    .line 1143
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "mCis["

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v14, "]: "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    # getter for: Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v12}, Lcom/android/internal/telephony/uicc/UiccController;->access$200(Lcom/android/internal/telephony/uicc/UiccController;)[Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v12

    aget-object v12, v12, v4

    if-eqz v12, :cond_9

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    # getter for: Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v12}, Lcom/android/internal/telephony/uicc/UiccController;->access$200(Lcom/android/internal/telephony/uicc/UiccController;)[Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v12

    aget-object v12, v12, v4

    invoke-virtual {v12}, Ljava/lang/Object;->hashCode()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    :goto_4
    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    # invokes: Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V
    invoke-static {v13, v12}, Lcom/android/internal/telephony/uicc/UiccController;->access$100(Lcom/android/internal/telephony/uicc/UiccController;Ljava/lang/String;)V

    .line 1142
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 1141
    .end local v4    # "i":I
    :cond_8
    const/4 v12, 0x0

    goto :goto_2

    .line 1143
    .restart local v4    # "i":I
    :cond_9
    const/4 v12, 0x0

    goto :goto_4

    .line 1145
    :cond_a
    const/4 v12, -0x1

    if-ne v10, v12, :cond_f

    .line 1146
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    iget v12, v12, Lcom/android/internal/telephony/uicc/UiccController;->oldSvlteSlotId:I

    const/4 v13, -0x1

    if-eq v12, v13, :cond_b

    .line 1147
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    # getter for: Lcom/android/internal/telephony/uicc/UiccController;->mSvlteCi:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v13}, Lcom/android/internal/telephony/uicc/UiccController;->access$300(Lcom/android/internal/telephony/uicc/UiccController;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/android/internal/telephony/uicc/UiccController;->unSetSvlteCi(Lcom/android/internal/telephony/CommandsInterface;)V

    .line 1150
    :cond_b
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    # getter for: Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v13}, Lcom/android/internal/telephony/uicc/UiccController;->access$200(Lcom/android/internal/telephony/uicc/UiccController;)[Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/android/internal/telephony/uicc/UiccController;->unSetCis([Lcom/android/internal/telephony/CommandsInterface;)V

    .line 1151
    const/4 v4, 0x0

    :goto_5
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    # getter for: Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v12}, Lcom/android/internal/telephony/uicc/UiccController;->access$200(Lcom/android/internal/telephony/uicc/UiccController;)[Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v12

    array-length v12, v12

    if-ge v4, v12, :cond_c

    .line 1152
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    # getter for: Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v12}, Lcom/android/internal/telephony/uicc/UiccController;->access$200(Lcom/android/internal/telephony/uicc/UiccController;)[Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v12

    invoke-static {v4}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->getSvltePhoneProxy(I)Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    move-result-object v13

    invoke-virtual {v13}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getLtePhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v13

    iget-object v13, v13, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    aput-object v13, v12, v4

    .line 1151
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 1155
    :cond_c
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    # getter for: Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v13}, Lcom/android/internal/telephony/uicc/UiccController;->access$200(Lcom/android/internal/telephony/uicc/UiccController;)[Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Lcom/android/internal/telephony/uicc/UiccController;->setCis([Lcom/android/internal/telephony/CommandsInterface;Z)V

    .line 1157
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    # getter for: Lcom/android/internal/telephony/uicc/UiccController;->mSvlteIndex:I
    invoke-static {v12}, Lcom/android/internal/telephony/uicc/UiccController;->access$400(Lcom/android/internal/telephony/uicc/UiccController;)I

    move-result v12

    const/4 v13, -0x1

    if-eq v12, v13, :cond_d

    .line 1158
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    # getter for: Lcom/android/internal/telephony/uicc/UiccController;->mSvlteIndex:I
    invoke-static {v13}, Lcom/android/internal/telephony/uicc/UiccController;->access$400(Lcom/android/internal/telephony/uicc/UiccController;)I

    move-result v13

    invoke-static {v13}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->getSvltePhoneProxy(I)Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    move-result-object v13

    invoke-virtual {v13}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getLtePhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v13

    iget-object v13, v13, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {v12, v13}, Lcom/android/internal/telephony/uicc/UiccController;->setSvlteCi(Lcom/android/internal/telephony/CommandsInterface;)V

    .line 1160
    :cond_d
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    iput v10, v12, Lcom/android/internal/telephony/uicc/UiccController;->oldSvlteSlotId:I

    .line 1185
    :cond_e
    :goto_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "END: mSvlteCi: "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    # getter for: Lcom/android/internal/telephony/uicc/UiccController;->mSvlteCi:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v12}, Lcom/android/internal/telephony/uicc/UiccController;->access$300(Lcom/android/internal/telephony/uicc/UiccController;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v12

    if-eqz v12, :cond_13

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    # getter for: Lcom/android/internal/telephony/uicc/UiccController;->mSvlteCi:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v12}, Lcom/android/internal/telephony/uicc/UiccController;->access$300(Lcom/android/internal/telephony/uicc/UiccController;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->hashCode()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    :goto_7
    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    # invokes: Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V
    invoke-static {v13, v12}, Lcom/android/internal/telephony/uicc/UiccController;->access$100(Lcom/android/internal/telephony/uicc/UiccController;Ljava/lang/String;)V

    .line 1186
    const/4 v4, 0x0

    :goto_8
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    # getter for: Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v12}, Lcom/android/internal/telephony/uicc/UiccController;->access$200(Lcom/android/internal/telephony/uicc/UiccController;)[Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v12

    array-length v12, v12

    if-ge v4, v12, :cond_0

    .line 1187
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "mCis["

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v14, "]: "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    # getter for: Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v12}, Lcom/android/internal/telephony/uicc/UiccController;->access$200(Lcom/android/internal/telephony/uicc/UiccController;)[Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v12

    aget-object v12, v12, v4

    if-eqz v12, :cond_14

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    # getter for: Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v12}, Lcom/android/internal/telephony/uicc/UiccController;->access$200(Lcom/android/internal/telephony/uicc/UiccController;)[Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v12

    aget-object v12, v12, v4

    invoke-virtual {v12}, Ljava/lang/Object;->hashCode()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    :goto_9
    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    # invokes: Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V
    invoke-static {v13, v12}, Lcom/android/internal/telephony/uicc/UiccController;->access$100(Lcom/android/internal/telephony/uicc/UiccController;Ljava/lang/String;)V

    .line 1186
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    .line 1161
    :cond_f
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    iget v12, v12, Lcom/android/internal/telephony/uicc/UiccController;->oldSvlteSlotId:I

    if-eq v12, v10, :cond_e

    .line 1162
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    iget v12, v12, Lcom/android/internal/telephony/uicc/UiccController;->oldSvlteSlotId:I

    const/4 v13, -0x1

    if-eq v12, v13, :cond_10

    .line 1163
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    # getter for: Lcom/android/internal/telephony/uicc/UiccController;->mSvlteCi:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v13}, Lcom/android/internal/telephony/uicc/UiccController;->access$300(Lcom/android/internal/telephony/uicc/UiccController;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/android/internal/telephony/uicc/UiccController;->unSetSvlteCi(Lcom/android/internal/telephony/CommandsInterface;)V

    .line 1166
    :cond_10
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    # getter for: Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v13}, Lcom/android/internal/telephony/uicc/UiccController;->access$200(Lcom/android/internal/telephony/uicc/UiccController;)[Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/android/internal/telephony/uicc/UiccController;->unSetCis([Lcom/android/internal/telephony/CommandsInterface;)V

    .line 1168
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-static {v10}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->getSvltePhoneProxy(I)Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    move-result-object v13

    invoke-virtual {v13}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getLtePhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v13

    iget-object v13, v13, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {v12, v13}, Lcom/android/internal/telephony/uicc/UiccController;->setSvlteCi(Lcom/android/internal/telephony/CommandsInterface;)V

    .line 1169
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {v12, v10}, Lcom/android/internal/telephony/uicc/UiccController;->setSvlteIndex(I)V

    .line 1170
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    iget v13, v13, Lcom/android/internal/telephony/uicc/UiccController;->oldSvlteSlotId:I

    # invokes: Lcom/android/internal/telephony/uicc/UiccController;->triggerGetSingleModeCCardStatus(II)V
    invoke-static {v12, v13, v10}, Lcom/android/internal/telephony/uicc/UiccController;->access$500(Lcom/android/internal/telephony/uicc/UiccController;II)V

    .line 1171
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    # getter for: Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v12}, Lcom/android/internal/telephony/uicc/UiccController;->access$200(Lcom/android/internal/telephony/uicc/UiccController;)[Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v12

    array-length v12, v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_11

    .line 1172
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    # getter for: Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v12}, Lcom/android/internal/telephony/uicc/UiccController;->access$200(Lcom/android/internal/telephony/uicc/UiccController;)[Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static {v14}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->getSvltePhoneProxy(I)Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    move-result-object v14

    invoke-virtual {v14}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getNLtePhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v14

    iget-object v14, v14, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    aput-object v14, v12, v13

    .line 1182
    :goto_a
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    # getter for: Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v13}, Lcom/android/internal/telephony/uicc/UiccController;->access$200(Lcom/android/internal/telephony/uicc/UiccController;)[Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Lcom/android/internal/telephony/uicc/UiccController;->setCis([Lcom/android/internal/telephony/CommandsInterface;Z)V

    .line 1183
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    iput v10, v12, Lcom/android/internal/telephony/uicc/UiccController;->oldSvlteSlotId:I

    goto/16 :goto_6

    .line 1174
    :cond_11
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    # getter for: Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v12}, Lcom/android/internal/telephony/uicc/UiccController;->access$200(Lcom/android/internal/telephony/uicc/UiccController;)[Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v12

    invoke-static {v10}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->getSvltePhoneProxy(I)Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    move-result-object v13

    invoke-virtual {v13}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getNLtePhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v13

    iget-object v13, v13, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    aput-object v13, v12, v10

    .line 1175
    if-nez v10, :cond_12

    .line 1176
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    # getter for: Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v12}, Lcom/android/internal/telephony/uicc/UiccController;->access$200(Lcom/android/internal/telephony/uicc/UiccController;)[Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v12

    const/4 v13, 0x1

    const/4 v14, 0x1

    invoke-static {v14}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->getSvltePhoneProxy(I)Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    move-result-object v14

    invoke-virtual {v14}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getLtePhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v14

    iget-object v14, v14, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    aput-object v14, v12, v13

    goto :goto_a

    .line 1178
    :cond_12
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    # getter for: Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v12}, Lcom/android/internal/telephony/uicc/UiccController;->access$200(Lcom/android/internal/telephony/uicc/UiccController;)[Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static {v14}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->getSvltePhoneProxy(I)Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    move-result-object v14

    invoke-virtual {v14}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getLtePhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v14

    iget-object v14, v14, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    aput-object v14, v12, v13

    goto :goto_a

    .line 1185
    :cond_13
    const/4 v12, 0x0

    goto/16 :goto_7

    .line 1187
    :cond_14
    const/4 v12, 0x0

    goto/16 :goto_9

    .line 1189
    .end local v4    # "i":I
    .end local v10    # "svlteSlotId":I
    :cond_15
    const-string v12, "com.mediatek.phone.ACTION_SET_RADIO_TECHNOLOGY_DONE"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 1190
    const/4 v6, 0x0

    .line 1191
    .local v6, "isModeSwitching":Z
    const/4 v2, 0x0

    .line 1192
    .local v2, "hasPendedSwitch":Z
    const/4 v3, 0x0

    .line 1193
    .local v3, "hasWaitSwitch":Z
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    iget-boolean v12, v12, Lcom/android/internal/telephony/uicc/UiccController;->bSetTrm:Z

    if-nez v12, :cond_16

    .line 1194
    invoke-static {}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->getInstance()Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;

    move-result-object v12

    invoke-virtual {v12}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->isSvlteModeSwitching()Z

    move-result v6

    .line 1195
    invoke-static {}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->getInstance()Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;

    move-result-object v12

    invoke-virtual {v12}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->hasPendedSwitch()Z

    move-result v2

    .line 1196
    invoke-static {}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->getInstance()Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;

    move-result-object v12

    invoke-virtual {v12}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->getWaitSwitch()Z

    move-result v3

    .line 1197
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "isModeSwitching: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", hasPendedSwitch: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", hasWaitSwitch: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    # invokes: Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V
    invoke-static {v12, v13}, Lcom/android/internal/telephony/uicc/UiccController;->access$100(Lcom/android/internal/telephony/uicc/UiccController;Ljava/lang/String;)V

    .line 1199
    if-nez v6, :cond_16

    if-nez v2, :cond_16

    if-nez v3, :cond_16

    .line 1200
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    const/4 v13, 0x1

    iput-boolean v13, v12, Lcom/android/internal/telephony/uicc/UiccController;->mSetRadioDone:Z

    .line 1203
    :cond_16
    invoke-static {}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->getActiveSvlteModeSlotId()I

    move-result v10

    .line 1204
    .restart local v10    # "svlteSlotId":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "svlteSlotId: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    # invokes: Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V
    invoke-static {v12, v13}, Lcom/android/internal/telephony/uicc/UiccController;->access$100(Lcom/android/internal/telephony/uicc/UiccController;Ljava/lang/String;)V

    .line 1205
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Receive ACTION_SET_RADIO_TECHNOLOGY_DONE mSetRadioDone: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    iget-boolean v14, v14, Lcom/android/internal/telephony/uicc/UiccController;->mSetRadioDone:Z

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " bSetTrm="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    iget-boolean v14, v14, Lcom/android/internal/telephony/uicc/UiccController;->bSetTrm:Z

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    # invokes: Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V
    invoke-static {v12, v13}, Lcom/android/internal/telephony/uicc/UiccController;->access$100(Lcom/android/internal/telephony/uicc/UiccController;Ljava/lang/String;)V

    .line 1207
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "START: mSvlteCi: "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    # getter for: Lcom/android/internal/telephony/uicc/UiccController;->mSvlteCi:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v12}, Lcom/android/internal/telephony/uicc/UiccController;->access$300(Lcom/android/internal/telephony/uicc/UiccController;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v12

    if-eqz v12, :cond_17

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    # getter for: Lcom/android/internal/telephony/uicc/UiccController;->mSvlteCi:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v12}, Lcom/android/internal/telephony/uicc/UiccController;->access$300(Lcom/android/internal/telephony/uicc/UiccController;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->hashCode()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    :goto_b
    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    # invokes: Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V
    invoke-static {v13, v12}, Lcom/android/internal/telephony/uicc/UiccController;->access$100(Lcom/android/internal/telephony/uicc/UiccController;Ljava/lang/String;)V

    .line 1208
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_c
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    # getter for: Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v12}, Lcom/android/internal/telephony/uicc/UiccController;->access$200(Lcom/android/internal/telephony/uicc/UiccController;)[Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v12

    array-length v12, v12

    if-ge v4, v12, :cond_19

    .line 1209
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "mCis["

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v14, "]: "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    # getter for: Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v12}, Lcom/android/internal/telephony/uicc/UiccController;->access$200(Lcom/android/internal/telephony/uicc/UiccController;)[Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v12

    aget-object v12, v12, v4

    if-eqz v12, :cond_18

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    # getter for: Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v12}, Lcom/android/internal/telephony/uicc/UiccController;->access$200(Lcom/android/internal/telephony/uicc/UiccController;)[Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v12

    aget-object v12, v12, v4

    invoke-virtual {v12}, Ljava/lang/Object;->hashCode()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    :goto_d
    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    # invokes: Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V
    invoke-static {v13, v12}, Lcom/android/internal/telephony/uicc/UiccController;->access$100(Lcom/android/internal/telephony/uicc/UiccController;Ljava/lang/String;)V

    .line 1208
    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    .line 1207
    .end local v4    # "i":I
    :cond_17
    const/4 v12, 0x0

    goto :goto_b

    .line 1209
    .restart local v4    # "i":I
    :cond_18
    const/4 v12, 0x0

    goto :goto_d

    .line 1211
    :cond_19
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    # getter for: Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v12}, Lcom/android/internal/telephony/uicc/UiccController;->access$200(Lcom/android/internal/telephony/uicc/UiccController;)[Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v12

    array-length v12, v12

    new-array v11, v12, [Lcom/android/internal/telephony/CommandsInterface;

    .line 1213
    .local v11, "tempCis":[Lcom/android/internal/telephony/CommandsInterface;
    const/4 v12, -0x1

    if-ne v10, v12, :cond_1a

    .line 1214
    const/4 v4, 0x0

    :goto_e
    array-length v12, v11

    if-ge v4, v12, :cond_1b

    .line 1215
    invoke-static {v4}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->getSvltePhoneProxy(I)Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    move-result-object v12

    invoke-virtual {v12}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getLtePhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v12

    iget-object v12, v12, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    aput-object v12, v11, v4

    .line 1214
    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    .line 1218
    :cond_1a
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    # getter for: Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v12}, Lcom/android/internal/telephony/uicc/UiccController;->access$200(Lcom/android/internal/telephony/uicc/UiccController;)[Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v12

    array-length v12, v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_1c

    .line 1219
    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static {v13}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->getSvltePhoneProxy(I)Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    move-result-object v13

    invoke-virtual {v13}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getNLtePhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v13

    iget-object v13, v13, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    aput-object v13, v11, v12

    .line 1229
    :cond_1b
    :goto_f
    const/4 v4, 0x0

    :goto_10
    array-length v12, v11

    if-ge v4, v12, :cond_1f

    .line 1230
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "tempCis["

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v14, "]: "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    aget-object v12, v11, v4

    if-eqz v12, :cond_1e

    aget-object v12, v11, v4

    invoke-virtual {v12}, Ljava/lang/Object;->hashCode()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    :goto_11
    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    # invokes: Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V
    invoke-static {v13, v12}, Lcom/android/internal/telephony/uicc/UiccController;->access$100(Lcom/android/internal/telephony/uicc/UiccController;Ljava/lang/String;)V

    .line 1229
    add-int/lit8 v4, v4, 0x1

    goto :goto_10

    .line 1221
    :cond_1c
    invoke-static {v10}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->getSvltePhoneProxy(I)Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    move-result-object v12

    invoke-virtual {v12}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getNLtePhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v12

    iget-object v12, v12, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    aput-object v12, v11, v10

    .line 1222
    if-nez v10, :cond_1d

    .line 1223
    const/4 v12, 0x1

    const/4 v13, 0x1

    invoke-static {v13}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->getSvltePhoneProxy(I)Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    move-result-object v13

    invoke-virtual {v13}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getLtePhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v13

    iget-object v13, v13, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    aput-object v13, v11, v12

    goto :goto_f

    .line 1225
    :cond_1d
    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static {v13}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->getSvltePhoneProxy(I)Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    move-result-object v13

    invoke-virtual {v13}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getLtePhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v13

    iget-object v13, v13, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    aput-object v13, v11, v12

    goto :goto_f

    .line 1230
    :cond_1e
    const/4 v12, 0x0

    goto :goto_11

    .line 1232
    :cond_1f
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    # getter for: Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v12}, Lcom/android/internal/telephony/uicc/UiccController;->access$200(Lcom/android/internal/telephony/uicc/UiccController;)[Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v12

    array-length v12, v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_24

    .line 1233
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    # getter for: Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v12}, Lcom/android/internal/telephony/uicc/UiccController;->access$200(Lcom/android/internal/telephony/uicc/UiccController;)[Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v12

    const/4 v13, 0x0

    aget-object v12, v12, v13

    if-eqz v12, :cond_20

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    # getter for: Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v12}, Lcom/android/internal/telephony/uicc/UiccController;->access$200(Lcom/android/internal/telephony/uicc/UiccController;)[Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v12

    const/4 v13, 0x0

    aget-object v12, v12, v13

    const/4 v13, 0x0

    aget-object v13, v11, v13

    invoke-virtual {v12, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_21

    :cond_20
    const/4 v12, 0x0

    aget-object v12, v11, v12

    if-eqz v12, :cond_23

    const/4 v12, 0x0

    aget-object v12, v11, v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    # getter for: Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v13}, Lcom/android/internal/telephony/uicc/UiccController;->access$200(Lcom/android/internal/telephony/uicc/UiccController;)[Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v13

    const/4 v14, 0x0

    aget-object v13, v13, v14

    invoke-virtual {v12, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_23

    .line 1235
    :cond_21
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    const-string v13, "at least one CI changed"

    # invokes: Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V
    invoke-static {v12, v13}, Lcom/android/internal/telephony/uicc/UiccController;->access$100(Lcom/android/internal/telephony/uicc/UiccController;Ljava/lang/String;)V

    .line 1236
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "slot[0].activephone = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const/4 v14, 0x0

    invoke-static {v14}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->getSvltePhoneProxy(I)Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    move-result-object v14

    invoke-virtual {v14}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    # invokes: Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V
    invoke-static {v12, v13}, Lcom/android/internal/telephony/uicc/UiccController;->access$100(Lcom/android/internal/telephony/uicc/UiccController;Ljava/lang/String;)V

    .line 1237
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "mCis[0] = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    # getter for: Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v14}, Lcom/android/internal/telephony/uicc/UiccController;->access$200(Lcom/android/internal/telephony/uicc/UiccController;)[Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v14

    const/4 v15, 0x0

    aget-object v14, v14, v15

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    # invokes: Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V
    invoke-static {v12, v13}, Lcom/android/internal/telephony/uicc/UiccController;->access$100(Lcom/android/internal/telephony/uicc/UiccController;Ljava/lang/String;)V

    .line 1238
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "tempCis[0] = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const/4 v14, 0x0

    aget-object v14, v11, v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    # invokes: Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V
    invoke-static {v12, v13}, Lcom/android/internal/telephony/uicc/UiccController;->access$100(Lcom/android/internal/telephony/uicc/UiccController;Ljava/lang/String;)V

    .line 1239
    const/4 v12, 0x0

    aget-object v12, v11, v12

    if-nez v12, :cond_22

    .line 1240
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    const-string v13, "sorry, at least one change as null, unSetCis/setCis limitation, abort"

    # invokes: Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V
    invoke-static {v12, v13}, Lcom/android/internal/telephony/uicc/UiccController;->access$100(Lcom/android/internal/telephony/uicc/UiccController;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1244
    :cond_22
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    # getter for: Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v12}, Lcom/android/internal/telephony/uicc/UiccController;->access$200(Lcom/android/internal/telephony/uicc/UiccController;)[Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    aget-object v14, v11, v14

    aput-object v14, v12, v13

    .line 1267
    :cond_23
    :goto_12
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "END: mSvlteCi: "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    # getter for: Lcom/android/internal/telephony/uicc/UiccController;->mSvlteCi:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v12}, Lcom/android/internal/telephony/uicc/UiccController;->access$300(Lcom/android/internal/telephony/uicc/UiccController;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v12

    if-eqz v12, :cond_2b

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    # getter for: Lcom/android/internal/telephony/uicc/UiccController;->mSvlteCi:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v12}, Lcom/android/internal/telephony/uicc/UiccController;->access$300(Lcom/android/internal/telephony/uicc/UiccController;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->hashCode()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    :goto_13
    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    # invokes: Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V
    invoke-static {v13, v12}, Lcom/android/internal/telephony/uicc/UiccController;->access$100(Lcom/android/internal/telephony/uicc/UiccController;Ljava/lang/String;)V

    .line 1268
    const/4 v4, 0x0

    :goto_14
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    # getter for: Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v12}, Lcom/android/internal/telephony/uicc/UiccController;->access$200(Lcom/android/internal/telephony/uicc/UiccController;)[Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v12

    array-length v12, v12

    if-ge v4, v12, :cond_0

    .line 1269
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "mCis["

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v14, "]: "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    # getter for: Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v12}, Lcom/android/internal/telephony/uicc/UiccController;->access$200(Lcom/android/internal/telephony/uicc/UiccController;)[Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v12

    aget-object v12, v12, v4

    if-eqz v12, :cond_2c

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    # getter for: Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v12}, Lcom/android/internal/telephony/uicc/UiccController;->access$200(Lcom/android/internal/telephony/uicc/UiccController;)[Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v12

    aget-object v12, v12, v4

    invoke-virtual {v12}, Ljava/lang/Object;->hashCode()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    :goto_15
    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    # invokes: Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V
    invoke-static {v13, v12}, Lcom/android/internal/telephony/uicc/UiccController;->access$100(Lcom/android/internal/telephony/uicc/UiccController;Ljava/lang/String;)V

    .line 1268
    add-int/lit8 v4, v4, 0x1

    goto :goto_14

    .line 1247
    :cond_24
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    # getter for: Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v12}, Lcom/android/internal/telephony/uicc/UiccController;->access$200(Lcom/android/internal/telephony/uicc/UiccController;)[Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v12

    const/4 v13, 0x0

    aget-object v12, v12, v13

    if-eqz v12, :cond_25

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    # getter for: Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v12}, Lcom/android/internal/telephony/uicc/UiccController;->access$200(Lcom/android/internal/telephony/uicc/UiccController;)[Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v12

    const/4 v13, 0x0

    aget-object v12, v12, v13

    const/4 v13, 0x0

    aget-object v13, v11, v13

    invoke-virtual {v12, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_28

    :cond_25
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    # getter for: Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v12}, Lcom/android/internal/telephony/uicc/UiccController;->access$200(Lcom/android/internal/telephony/uicc/UiccController;)[Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v12

    const/4 v13, 0x1

    aget-object v12, v12, v13

    if-eqz v12, :cond_26

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    # getter for: Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v12}, Lcom/android/internal/telephony/uicc/UiccController;->access$200(Lcom/android/internal/telephony/uicc/UiccController;)[Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v12

    const/4 v13, 0x1

    aget-object v12, v12, v13

    const/4 v13, 0x1

    aget-object v13, v11, v13

    invoke-virtual {v12, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_28

    :cond_26
    const/4 v12, 0x0

    aget-object v12, v11, v12

    if-eqz v12, :cond_27

    const/4 v12, 0x0

    aget-object v12, v11, v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    # getter for: Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v13}, Lcom/android/internal/telephony/uicc/UiccController;->access$200(Lcom/android/internal/telephony/uicc/UiccController;)[Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v13

    const/4 v14, 0x0

    aget-object v13, v13, v14

    invoke-virtual {v12, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_28

    :cond_27
    const/4 v12, 0x1

    aget-object v12, v11, v12

    if-eqz v12, :cond_23

    const/4 v12, 0x1

    aget-object v12, v11, v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    # getter for: Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v13}, Lcom/android/internal/telephony/uicc/UiccController;->access$200(Lcom/android/internal/telephony/uicc/UiccController;)[Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v13

    const/4 v14, 0x1

    aget-object v13, v13, v14

    invoke-virtual {v12, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_23

    .line 1251
    :cond_28
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    const-string v13, "at least one CI changed"

    # invokes: Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V
    invoke-static {v12, v13}, Lcom/android/internal/telephony/uicc/UiccController;->access$100(Lcom/android/internal/telephony/uicc/UiccController;Ljava/lang/String;)V

    .line 1252
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "slot[0].activephone = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const/4 v14, 0x0

    invoke-static {v14}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->getSvltePhoneProxy(I)Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    move-result-object v14

    invoke-virtual {v14}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    # invokes: Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V
    invoke-static {v12, v13}, Lcom/android/internal/telephony/uicc/UiccController;->access$100(Lcom/android/internal/telephony/uicc/UiccController;Ljava/lang/String;)V

    .line 1253
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "slot[1].activephone = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const/4 v14, 0x1

    invoke-static {v14}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->getSvltePhoneProxy(I)Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    move-result-object v14

    invoke-virtual {v14}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    # invokes: Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V
    invoke-static {v12, v13}, Lcom/android/internal/telephony/uicc/UiccController;->access$100(Lcom/android/internal/telephony/uicc/UiccController;Ljava/lang/String;)V

    .line 1254
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "mCis[0] = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    # getter for: Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v14}, Lcom/android/internal/telephony/uicc/UiccController;->access$200(Lcom/android/internal/telephony/uicc/UiccController;)[Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v14

    const/4 v15, 0x0

    aget-object v14, v14, v15

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    # invokes: Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V
    invoke-static {v12, v13}, Lcom/android/internal/telephony/uicc/UiccController;->access$100(Lcom/android/internal/telephony/uicc/UiccController;Ljava/lang/String;)V

    .line 1255
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "tempCis[0] = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const/4 v14, 0x0

    aget-object v14, v11, v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    # invokes: Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V
    invoke-static {v12, v13}, Lcom/android/internal/telephony/uicc/UiccController;->access$100(Lcom/android/internal/telephony/uicc/UiccController;Ljava/lang/String;)V

    .line 1256
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "mCis[1] = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    # getter for: Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v14}, Lcom/android/internal/telephony/uicc/UiccController;->access$200(Lcom/android/internal/telephony/uicc/UiccController;)[Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v14

    const/4 v15, 0x1

    aget-object v14, v14, v15

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    # invokes: Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V
    invoke-static {v12, v13}, Lcom/android/internal/telephony/uicc/UiccController;->access$100(Lcom/android/internal/telephony/uicc/UiccController;Ljava/lang/String;)V

    .line 1257
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "tempCis[1] = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const/4 v14, 0x1

    aget-object v14, v11, v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    # invokes: Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V
    invoke-static {v12, v13}, Lcom/android/internal/telephony/uicc/UiccController;->access$100(Lcom/android/internal/telephony/uicc/UiccController;Ljava/lang/String;)V

    .line 1258
    const/4 v12, 0x0

    aget-object v12, v11, v12

    if-eqz v12, :cond_29

    const/4 v12, 0x1

    aget-object v12, v11, v12

    if-nez v12, :cond_2a

    .line 1259
    :cond_29
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    const-string v13, "sorry, at least one change as null, unSetCis/setCis limitation, abort"

    # invokes: Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V
    invoke-static {v12, v13}, Lcom/android/internal/telephony/uicc/UiccController;->access$100(Lcom/android/internal/telephony/uicc/UiccController;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1263
    :cond_2a
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    # getter for: Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v12}, Lcom/android/internal/telephony/uicc/UiccController;->access$200(Lcom/android/internal/telephony/uicc/UiccController;)[Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    aget-object v14, v11, v14

    aput-object v14, v12, v13

    .line 1264
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    # getter for: Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v12}, Lcom/android/internal/telephony/uicc/UiccController;->access$200(Lcom/android/internal/telephony/uicc/UiccController;)[Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v12

    const/4 v13, 0x1

    const/4 v14, 0x1

    aget-object v14, v11, v14

    aput-object v14, v12, v13

    goto/16 :goto_12

    .line 1267
    :cond_2b
    const/4 v12, 0x0

    goto/16 :goto_13

    .line 1269
    :cond_2c
    const/4 v12, 0x0

    goto/16 :goto_15
.end method
