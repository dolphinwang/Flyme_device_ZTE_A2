.class Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;
.super Landroid/content/BroadcastReceiver;
.source "DataSubSelector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;


# direct methods
.method constructor <init>(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 21
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 118
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 119
    .local v3, "action":Ljava/lang/String;
    if-nez v3, :cond_1

    .line 385
    :cond_0
    :goto_0
    return-void

    .line 122
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    move-object/from16 v17, v0

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "onReceive: action="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    # invokes: Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V
    invoke-static/range {v17 .. v18}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->access$000(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Ljava/lang/String;)V

    .line 123
    const-string v17, "android.intent.action.SIM_STATE_CHANGED"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_13

    .line 124
    const-string v17, "ss"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 125
    .local v15, "simStatus":Ljava/lang/String;
    const-string v17, "slot"

    const/16 v18, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v16

    .line 126
    .local v16, "slotId":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    move-object/from16 v17, v0

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "slotId: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " simStatus: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " mIsNeedWaitImsi: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    move-object/from16 v19, v0

    # getter for: Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mIsNeedWaitImsi:Z
    invoke-static/range {v19 .. v19}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->access$100(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;)Z

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " mIsNeedWaitUnlock: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    move-object/from16 v19, v0

    const-string v20, "persist.radio.unlock"

    # invokes: Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->isNeedWaitUnlock(Ljava/lang/String;)Z
    invoke-static/range {v19 .. v20}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->access$200(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Ljava/lang/String;)Z

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    # invokes: Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V
    invoke-static/range {v17 .. v18}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->access$000(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Ljava/lang/String;)V

    .line 129
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v17

    if-eqz v17, :cond_3

    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCT6MSupport()Z

    move-result v17

    if-nez v17, :cond_2

    # getter for: Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mOperatorSpec:Ljava/lang/String;
    invoke-static {}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->access$300()Ljava/lang/String;

    move-result-object v17

    const-string v18, "OM"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 131
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    move-object/from16 v17, v0

    const-string v18, "onReceive: SIM state change, setCapabilityIfNeeded"

    # invokes: Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V
    invoke-static/range {v17 .. v18}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->access$000(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Ljava/lang/String;)V

    .line 132
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    # setter for: Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mIsSubReady:Z
    invoke-static/range {v17 .. v18}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->access$402(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Z)Z

    .line 133
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    # invokes: Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setCapabilityIfNeeded(Landroid/content/Intent;)V
    invoke-static {v0, v1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->access$500(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Landroid/content/Intent;)V

    .line 135
    :cond_3
    const-string v17, "IMSI"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_11

    .line 136
    const-string v17, "1"

    invoke-static/range {v16 .. v17}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->updateSimImsiStatus(ILjava/lang/String;)V

    .line 138
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    move-object/from16 v17, v0

    # invokes: Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->isOP01OMSupport()Z
    invoke-static/range {v17 .. v17}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->access$600(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;)Z

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_5

    .line 139
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    move-object/from16 v17, v0

    const-string v18, "sub for OP01 open market"

    # invokes: Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V
    invoke-static/range {v17 .. v18}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->access$000(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Ljava/lang/String;)V

    .line 140
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    move-object/from16 v17, v0

    # invokes: Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->subSelectorForOp01OM()V
    invoke-static/range {v17 .. v17}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->access$700(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;)V

    .line 201
    :cond_4
    :goto_1
    invoke-static/range {v16 .. v16}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->clearRilMccMnc(I)V

    goto/16 :goto_0

    .line 141
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    move-object/from16 v17, v0

    # getter for: Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mIsNeedWaitImsi:Z
    invoke-static/range {v17 .. v17}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->access$100(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;)Z

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    move-object/from16 v17, v0

    # getter for: Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mIsNeedWaitImsiRoaming:Z
    invoke-static/range {v17 .. v17}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->access$800(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;)Z

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_9

    .line 142
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    move-object/from16 v17, v0

    # getter for: Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mIsNeedWaitImsi:Z
    invoke-static/range {v17 .. v17}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->access$100(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;)Z

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_7

    .line 143
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    # setter for: Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mIsNeedWaitImsi:Z
    invoke-static/range {v17 .. v18}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->access$102(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Z)Z

    .line 144
    const-string v17, "OP01"

    # getter for: Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mOperatorSpec:Ljava/lang/String;
    invoke-static {}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->access$300()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_8

    .line 145
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    # setter for: Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mIntent:Landroid/content/Intent;
    invoke-static {v0, v1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->access$902(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Landroid/content/Intent;)Landroid/content/Intent;

    .line 146
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    move-object/from16 v17, v0

    const-string v18, "get imsi and need to check op01 again"

    # invokes: Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V
    invoke-static/range {v17 .. v18}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->access$000(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Ljava/lang/String;)V

    .line 147
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    move-object/from16 v17, v0

    # invokes: Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->checkOp01CapSwitch6m()Z
    invoke-static/range {v17 .. v17}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->access$1000(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;)Z

    move-result v17

    if-nez v17, :cond_7

    .line 148
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    # setter for: Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mIsNeedWaitImsi:Z
    invoke-static/range {v17 .. v18}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->access$102(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Z)Z

    .line 157
    :cond_7
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    move-object/from16 v17, v0

    # getter for: Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mIsNeedWaitImsiRoaming:Z
    invoke-static/range {v17 .. v17}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->access$800(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;)Z

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_4

    .line 158
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    # setter for: Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mIsNeedWaitImsiRoaming:Z
    invoke-static/range {v17 .. v18}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->access$802(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Z)Z

    .line 159
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    move-object/from16 v17, v0

    const-string v18, "get imsi and need to check op02Roaming again"

    # invokes: Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V
    invoke-static/range {v17 .. v18}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->access$000(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Ljava/lang/String;)V

    .line 160
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    # invokes: Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->checkOp02CapSwitch(I)Z
    invoke-static/range {v17 .. v18}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->access$1100(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;I)Z

    move-result v17

    if-nez v17, :cond_4

    .line 161
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    # setter for: Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mIsNeedWaitImsiRoaming:Z
    invoke-static/range {v17 .. v18}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->access$802(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Z)Z

    goto/16 :goto_1

    .line 150
    :cond_8
    const-string v17, "OP02"

    # getter for: Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mOperatorSpec:Ljava/lang/String;
    invoke-static {}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->access$300()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_7

    .line 151
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    move-object/from16 v17, v0

    const-string v18, "get imsi and need to check op02 again"

    # invokes: Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V
    invoke-static/range {v17 .. v18}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->access$000(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Ljava/lang/String;)V

    .line 152
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    # invokes: Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->checkOp02CapSwitch(I)Z
    invoke-static/range {v17 .. v18}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->access$1100(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;I)Z

    move-result v17

    if-nez v17, :cond_7

    .line 153
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    # setter for: Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mIsNeedWaitImsi:Z
    invoke-static/range {v17 .. v18}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->access$102(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Z)Z

    goto :goto_2

    .line 164
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    move-object/from16 v17, v0

    const-string v18, "persist.radio.unlock"

    # invokes: Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->isNeedWaitUnlock(Ljava/lang/String;)Z
    invoke-static/range {v17 .. v18}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->access$200(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    move-object/from16 v17, v0

    const-string v18, "persist.radio.unlock.roaming"

    # invokes: Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->isNeedWaitUnlock(Ljava/lang/String;)Z
    invoke-static/range {v17 .. v18}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->access$200(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 166
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    move-object/from16 v17, v0

    const-string v18, "get imsi because unlock"

    # invokes: Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V
    invoke-static/range {v17 .. v18}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->access$000(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Ljava/lang/String;)V

    .line 168
    const-string v17, "phoneEx"

    invoke-static/range {v17 .. v17}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/internal/telephony/ITelephonyEx;

    move-result-object v10

    .line 170
    .local v10, "iTelEx":Lcom/mediatek/internal/telephony/ITelephonyEx;
    if-eqz v10, :cond_4

    .line 172
    :try_start_0
    invoke-interface {v10}, Lcom/mediatek/internal/telephony/ITelephonyEx;->isCapabilitySwitching()Z

    move-result v17

    if-nez v17, :cond_4

    .line 175
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    move-object/from16 v17, v0

    const-string v18, "persist.radio.unlock"

    # invokes: Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->isNeedWaitUnlock(Ljava/lang/String;)Z
    invoke-static/range {v17 .. v18}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->access$200(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_b

    .line 176
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    move-object/from16 v17, v0

    const-string v18, "persist.radio.unlock"

    const-string v19, "false"

    # invokes: Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setNeedWaitUnlock(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static/range {v17 .. v19}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->access$1200(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    const-string v17, "OP01"

    # getter for: Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mOperatorSpec:Ljava/lang/String;
    invoke-static {}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->access$300()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_c

    .line 178
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    move-object/from16 v18, v0

    # getter for: Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mIntent:Landroid/content/Intent;
    invoke-static/range {v18 .. v18}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->access$900(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;)Landroid/content/Intent;

    move-result-object v18

    # invokes: Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->subSelectorForOp01(Landroid/content/Intent;)V
    invoke-static/range {v17 .. v18}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->access$1300(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Landroid/content/Intent;)V

    .line 191
    :cond_b
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    move-object/from16 v17, v0

    const-string v18, "persist.radio.unlock.roaming"

    # invokes: Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->isNeedWaitUnlock(Ljava/lang/String;)Z
    invoke-static/range {v17 .. v18}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->access$200(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 192
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    move-object/from16 v17, v0

    const-string v18, "persist.radio.unlock.roaming"

    const-string v19, "false"

    # invokes: Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setNeedWaitUnlock(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static/range {v17 .. v19}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->access$1200(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    # invokes: Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->checkOp02CapSwitch(I)Z
    invoke-static/range {v17 .. v18}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->access$1100(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 196
    :catch_0
    move-exception v7

    .line 197
    .local v7, "e":Landroid/os/RemoteException;
    invoke-virtual {v7}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_1

    .line 179
    .end local v7    # "e":Landroid/os/RemoteException;
    :cond_c
    :try_start_1
    const-string v17, "OP02"

    # getter for: Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mOperatorSpec:Ljava/lang/String;
    invoke-static {}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->access$300()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_e

    .line 180
    const-string v17, "ro.mtk_disable_cap_switch"

    const/16 v18, 0x0

    invoke-static/range {v17 .. v18}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_d

    .line 181
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    move-object/from16 v18, v0

    # getter for: Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mIntent:Landroid/content/Intent;
    invoke-static/range {v18 .. v18}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->access$900(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;)Landroid/content/Intent;

    move-result-object v18

    # invokes: Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->subSelectorForOp02(Landroid/content/Intent;)V
    invoke-static/range {v17 .. v18}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->access$1400(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Landroid/content/Intent;)V

    goto :goto_3

    .line 183
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    move-object/from16 v17, v0

    # invokes: Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->subSelectorForOp02()V
    invoke-static/range {v17 .. v17}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->access$1500(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;)V

    goto :goto_3

    .line 185
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    move-object/from16 v17, v0

    # invokes: Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->isOP09ASupport()Z
    invoke-static/range {v17 .. v17}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->access$1600(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;)Z

    move-result v17

    if-nez v17, :cond_f

    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCT6MSupport()Z

    move-result v17

    if-eqz v17, :cond_10

    .line 186
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    move-object/from16 v18, v0

    # getter for: Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mIntent:Landroid/content/Intent;
    invoke-static/range {v18 .. v18}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->access$900(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;)Landroid/content/Intent;

    move-result-object v18

    # invokes: Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->subSelectorForOp09(Landroid/content/Intent;)V
    invoke-static/range {v17 .. v18}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->access$1700(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Landroid/content/Intent;)V

    goto/16 :goto_3

    .line 187
    :cond_10
    const-string v17, "OM"

    # getter for: Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mOperatorSpec:Ljava/lang/String;
    invoke-static {}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->access$300()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_b

    .line 188
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    move-object/from16 v18, v0

    # getter for: Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mIntent:Landroid/content/Intent;
    invoke-static/range {v18 .. v18}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->access$900(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;)Landroid/content/Intent;

    move-result-object v18

    # invokes: Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->subSelectorForOm(Landroid/content/Intent;)V
    invoke-static/range {v17 .. v18}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->access$1800(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_3

    .line 202
    .end local v10    # "iTelEx":Lcom/mediatek/internal/telephony/ITelephonyEx;
    :cond_11
    const-string v17, "ABSENT"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_12

    .line 203
    const-string v17, "0"

    invoke-static/range {v16 .. v17}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->updateSimImsiStatus(ILjava/lang/String;)V

    .line 205
    invoke-static/range {v16 .. v16}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->clearRilMccMnc(I)V

    goto/16 :goto_0

    .line 206
    :cond_12
    const-string v17, "NOT_READY"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 207
    const-string v17, "0"

    invoke-static/range {v16 .. v17}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->updateSimImsiStatus(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 210
    .end local v15    # "simStatus":Ljava/lang/String;
    .end local v16    # "slotId":I
    :cond_13
    const-string v17, "android.intent.action.ACTION_SET_RADIO_CAPABILITY_DONE"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_14

    const-string v17, "android.intent.action.ACTION_SET_RADIO_CAPABILITY_FAILED"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1c

    .line 212
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    move-object/from16 v17, v0

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "mIsNeedWaitUnlock = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    move-object/from16 v19, v0

    const-string v20, "persist.radio.unlock"

    # invokes: Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->isNeedWaitUnlock(Ljava/lang/String;)Z
    invoke-static/range {v19 .. v20}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->access$200(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Ljava/lang/String;)Z

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", mIsNeedWaitUnlockRoaming = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    move-object/from16 v19, v0

    const-string v20, "persist.radio.unlock.roaming"

    # invokes: Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->isNeedWaitUnlock(Ljava/lang/String;)Z
    invoke-static/range {v19 .. v20}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->access$200(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Ljava/lang/String;)Z

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    # invokes: Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V
    invoke-static/range {v17 .. v18}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->access$000(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Ljava/lang/String;)V

    .line 215
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    move-object/from16 v17, v0

    const-string v18, "persist.radio.unlock"

    # invokes: Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->isNeedWaitUnlock(Ljava/lang/String;)Z
    invoke-static/range {v17 .. v18}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->access$200(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    move-object/from16 v17, v0

    const-string v18, "persist.radio.unlock.roaming"

    # invokes: Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->isNeedWaitUnlock(Ljava/lang/String;)Z
    invoke-static/range {v17 .. v18}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->access$200(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 217
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    move-object/from16 v17, v0

    const-string v18, "persist.radio.unlock"

    # invokes: Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->isNeedWaitUnlock(Ljava/lang/String;)Z
    invoke-static/range {v17 .. v18}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->access$200(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_16

    .line 218
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    move-object/from16 v17, v0

    const-string v18, "persist.radio.unlock"

    const-string v19, "false"

    # invokes: Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setNeedWaitUnlock(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static/range {v17 .. v19}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->access$1200(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    const-string v17, "OP01"

    # getter for: Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mOperatorSpec:Ljava/lang/String;
    invoke-static {}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->access$300()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_17

    .line 220
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    move-object/from16 v18, v0

    # getter for: Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mIntent:Landroid/content/Intent;
    invoke-static/range {v18 .. v18}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->access$900(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;)Landroid/content/Intent;

    move-result-object v18

    # invokes: Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->subSelectorForOp01(Landroid/content/Intent;)V
    invoke-static/range {v17 .. v18}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->access$1300(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Landroid/content/Intent;)V

    .line 233
    :cond_16
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    move-object/from16 v17, v0

    const-string v18, "persist.radio.unlock.roaming"

    # invokes: Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->isNeedWaitUnlock(Ljava/lang/String;)Z
    invoke-static/range {v17 .. v18}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->access$200(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 234
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    move-object/from16 v17, v0

    const-string v18, "persist.radio.unlock.roaming"

    const-string v19, "false"

    # invokes: Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setNeedWaitUnlock(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static/range {v17 .. v19}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->access$1200(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    # invokes: Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->checkOp02CapSwitch(I)Z
    invoke-static/range {v17 .. v18}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->access$1100(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;I)Z

    goto/16 :goto_0

    .line 221
    :cond_17
    const-string v17, "OP02"

    # getter for: Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mOperatorSpec:Ljava/lang/String;
    invoke-static {}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->access$300()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_19

    .line 222
    const-string v17, "ro.mtk_disable_cap_switch"

    const/16 v18, 0x0

    invoke-static/range {v17 .. v18}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_18

    .line 223
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    move-object/from16 v18, v0

    # getter for: Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mIntent:Landroid/content/Intent;
    invoke-static/range {v18 .. v18}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->access$900(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;)Landroid/content/Intent;

    move-result-object v18

    # invokes: Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->subSelectorForOp02(Landroid/content/Intent;)V
    invoke-static/range {v17 .. v18}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->access$1400(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Landroid/content/Intent;)V

    goto :goto_4

    .line 225
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    move-object/from16 v17, v0

    # invokes: Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->subSelectorForOp02()V
    invoke-static/range {v17 .. v17}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->access$1500(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;)V

    goto :goto_4

    .line 227
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    move-object/from16 v17, v0

    # invokes: Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->isOP09ASupport()Z
    invoke-static/range {v17 .. v17}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->access$1600(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;)Z

    move-result v17

    if-nez v17, :cond_1a

    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCT6MSupport()Z

    move-result v17

    if-eqz v17, :cond_1b

    .line 228
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    move-object/from16 v18, v0

    # getter for: Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mIntent:Landroid/content/Intent;
    invoke-static/range {v18 .. v18}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->access$900(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;)Landroid/content/Intent;

    move-result-object v18

    # invokes: Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->subSelectorForOp09(Landroid/content/Intent;)V
    invoke-static/range {v17 .. v18}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->access$1700(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Landroid/content/Intent;)V

    goto/16 :goto_4

    .line 229
    :cond_1b
    const-string v17, "OM"

    # getter for: Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mOperatorSpec:Ljava/lang/String;
    invoke-static {}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->access$300()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_16

    .line 230
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    move-object/from16 v18, v0

    # getter for: Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mIntent:Landroid/content/Intent;
    invoke-static/range {v18 .. v18}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->access$900(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;)Landroid/content/Intent;

    move-result-object v18

    # invokes: Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->subSelectorForOm(Landroid/content/Intent;)V
    invoke-static/range {v17 .. v18}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->access$1800(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Landroid/content/Intent;)V

    goto/16 :goto_4

    .line 238
    :cond_1c
    const-string v17, "com.mediatek.phone.ACTION_SET_RADIO_TECHNOLOGY_DONE"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1f

    .line 239
    const/4 v11, 0x0

    .line 240
    .local v11, "isSvlteModeSwitching":Z
    invoke-static {}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->getInstance()Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->isSvlteModeSwitching()Z

    move-result v11

    .line 241
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    move-object/from16 v17, v0

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "ACTION_SET_RADIO_TECHNOLOGY_DONE,and isSvlteModeSwitching = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    # invokes: Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V
    invoke-static/range {v17 .. v18}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->access$000(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Ljava/lang/String;)V

    .line 242
    if-nez v11, :cond_0

    sget-object v17, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$RfOffState;->RF_OFF_IN_IDLE:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$RfOffState;

    invoke-static {}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->getInstance()Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->getRfOffState()Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$RfOffState;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_0

    .line 247
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v17

    if-eqz v17, :cond_1d

    # getter for: Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mOperatorSpec:Ljava/lang/String;
    invoke-static {}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->access$300()Ljava/lang/String;

    move-result-object v17

    const-string v18, "OP01"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1d

    .line 249
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    # invokes: Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->subSelectorForOp01(Landroid/content/Intent;)V
    invoke-static {v0, v1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->access$1300(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Landroid/content/Intent;)V

    .line 251
    :cond_1d
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCT6MSupport()Z

    move-result v17

    if-eqz v17, :cond_1e

    .line 252
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    # setter for: Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mRadioTechDone:Z
    invoke-static/range {v17 .. v18}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->access$1902(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Z)Z

    .line 253
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    # invokes: Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setCapabilityIfNeeded(Landroid/content/Intent;)V
    invoke-static {v0, v1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->access$500(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 254
    :cond_1e
    # getter for: Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mOperatorSpec:Ljava/lang/String;
    invoke-static {}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->access$300()Ljava/lang/String;

    move-result-object v17

    const-string v18, "OM"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 255
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    # setter for: Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mRadioTechDone:Z
    invoke-static/range {v17 .. v18}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->access$1902(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Z)Z

    .line 256
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    # invokes: Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->subSelectorForSvlte(Landroid/content/Intent;)V
    invoke-static {v0, v1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->access$2000(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 258
    .end local v11    # "isSvlteModeSwitching":Z
    :cond_1f
    const-string v17, "mediatek.intent.action.LOCATED_PLMN_CHANGED"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_22

    .line 259
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    move-object/from16 v17, v0

    const-string v18, "ACTION_LOCATED_PLMN_CHANGED"

    # invokes: Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V
    invoke-static/range {v17 .. v18}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->access$000(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Ljava/lang/String;)V

    .line 260
    const-string v17, "ro.mtk_disable_cap_switch"

    const/16 v18, 0x0

    invoke-static/range {v17 .. v18}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v17

    if-nez v17, :cond_0

    .line 261
    const-string v17, "OP02"

    # getter for: Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mOperatorSpec:Ljava/lang/String;
    invoke-static {}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->access$300()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 262
    const-string v17, "plmn"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 263
    .local v13, "plmn":Ljava/lang/String;
    if-eqz v13, :cond_0

    const-string v17, ""

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_0

    const-string v17, "00000"

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_0

    .line 266
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    move-object/from16 v17, v0

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "plmn = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    # invokes: Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V
    invoke-static/range {v17 .. v18}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->access$000(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Ljava/lang/String;)V

    .line 267
    const-string v17, "first_time_roaming"

    const/16 v18, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v14

    .line 269
    .local v14, "preference":Landroid/content/SharedPreferences;
    invoke-interface {v14}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .line 270
    .local v8, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v17, "need_to_execute_roaming"

    const/16 v18, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-interface {v14, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    .line 272
    .local v9, "firstTimeRoaming":Z
    const-string v17, "460"

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_21

    .line 273
    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v9, v0, :cond_0

    .line 274
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    move-object/from16 v17, v0

    # getter for: Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mIsNeedWaitImsi:Z
    invoke-static/range {v17 .. v17}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->access$100(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;)Z

    move-result v17

    if-nez v17, :cond_20

    .line 275
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    # invokes: Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->checkOp02CapSwitch(I)Z
    invoke-static/range {v17 .. v18}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->access$1100(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;I)Z

    goto/16 :goto_0

    .line 279
    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    # setter for: Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mIsNeedWaitImsiRoaming:Z
    invoke-static/range {v17 .. v18}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->access$802(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Z)Z

    goto/16 :goto_0

    .line 284
    :cond_21
    if-nez v9, :cond_0

    .line 286
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    move-object/from16 v17, v0

    const-string v18, "reset roaming flag"

    # invokes: Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V
    invoke-static/range {v17 .. v18}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->access$000(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Ljava/lang/String;)V

    .line 287
    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 288
    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    .line 294
    .end local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v9    # "firstTimeRoaming":Z
    .end local v13    # "plmn":Ljava/lang/String;
    .end local v14    # "preference":Landroid/content/SharedPreferences;
    :cond_22
    const-string v17, "android.intent.action.AIRPLANE_MODE"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_2a

    .line 295
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    move-object/from16 v18, v0

    const-string v17, "state"

    const/16 v19, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v17

    if-eqz v17, :cond_24

    const/16 v17, 0x1

    :goto_5
    move-object/from16 v0, v18

    move/from16 v1, v17

    # setter for: Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mAirplaneModeOn:Z
    invoke-static {v0, v1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->access$2102(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Z)Z

    .line 296
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    move-object/from16 v17, v0

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "ACTION_AIRPLANE_MODE_CHANGED, enabled = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    move-object/from16 v19, v0

    # getter for: Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mAirplaneModeOn:Z
    invoke-static/range {v19 .. v19}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->access$2100(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;)Z

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    # invokes: Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V
    invoke-static/range {v17 .. v18}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->access$000(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Ljava/lang/String;)V

    .line 297
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    move-object/from16 v17, v0

    # getter for: Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mAirplaneModeOn:Z
    invoke-static/range {v17 .. v17}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->access$2100(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;)Z

    move-result v17

    if-nez v17, :cond_0

    .line 298
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    move-object/from16 v17, v0

    # getter for: Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mIsNeedWaitAirplaneModeOff:Z
    invoke-static/range {v17 .. v17}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->access$2200(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;)Z

    move-result v17

    if-eqz v17, :cond_23

    .line 299
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    # setter for: Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mIsNeedWaitAirplaneModeOff:Z
    invoke-static/range {v17 .. v18}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->access$2202(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Z)Z

    .line 300
    const-string v17, "OP01"

    # getter for: Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mOperatorSpec:Ljava/lang/String;
    invoke-static {}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->access$300()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_25

    .line 301
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    move-object/from16 v18, v0

    # getter for: Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mIntent:Landroid/content/Intent;
    invoke-static/range {v18 .. v18}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->access$900(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;)Landroid/content/Intent;

    move-result-object v18

    # invokes: Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->subSelectorForOp01(Landroid/content/Intent;)V
    invoke-static/range {v17 .. v18}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->access$1300(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Landroid/content/Intent;)V

    .line 314
    :cond_23
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    move-object/from16 v17, v0

    # getter for: Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mIsNeedWaitAirplaneModeOffRoaming:Z
    invoke-static/range {v17 .. v17}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->access$2300(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 315
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    # setter for: Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mIsNeedWaitAirplaneModeOffRoaming:Z
    invoke-static/range {v17 .. v18}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->access$2302(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Z)Z

    .line 316
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    # invokes: Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->checkOp02CapSwitch(I)Z
    invoke-static/range {v17 .. v18}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->access$1100(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;I)Z

    goto/16 :goto_0

    .line 295
    :cond_24
    const/16 v17, 0x0

    goto/16 :goto_5

    .line 302
    :cond_25
    const-string v17, "OP02"

    # getter for: Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mOperatorSpec:Ljava/lang/String;
    invoke-static {}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->access$300()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_27

    .line 303
    const-string v17, "ro.mtk_disable_cap_switch"

    const/16 v18, 0x0

    invoke-static/range {v17 .. v18}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_26

    .line 304
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    move-object/from16 v18, v0

    # getter for: Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mIntent:Landroid/content/Intent;
    invoke-static/range {v18 .. v18}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->access$900(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;)Landroid/content/Intent;

    move-result-object v18

    # invokes: Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->subSelectorForOp02(Landroid/content/Intent;)V
    invoke-static/range {v17 .. v18}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->access$1400(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Landroid/content/Intent;)V

    goto :goto_6

    .line 306
    :cond_26
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    move-object/from16 v17, v0

    # invokes: Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->subSelectorForOp02()V
    invoke-static/range {v17 .. v17}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->access$1500(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;)V

    goto :goto_6

    .line 308
    :cond_27
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    move-object/from16 v17, v0

    # invokes: Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->isOP09ASupport()Z
    invoke-static/range {v17 .. v17}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->access$1600(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;)Z

    move-result v17

    if-nez v17, :cond_28

    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCT6MSupport()Z

    move-result v17

    if-eqz v17, :cond_29

    .line 309
    :cond_28
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    move-object/from16 v18, v0

    # getter for: Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mIntent:Landroid/content/Intent;
    invoke-static/range {v18 .. v18}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->access$900(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;)Landroid/content/Intent;

    move-result-object v18

    # invokes: Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->subSelectorForOp09(Landroid/content/Intent;)V
    invoke-static/range {v17 .. v18}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->access$1700(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Landroid/content/Intent;)V

    goto/16 :goto_6

    .line 310
    :cond_29
    const-string v17, "OM"

    # getter for: Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mOperatorSpec:Ljava/lang/String;
    invoke-static {}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->access$300()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_23

    .line 311
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    move-object/from16 v18, v0

    # getter for: Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mIntent:Landroid/content/Intent;
    invoke-static/range {v18 .. v18}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->access$900(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;)Landroid/content/Intent;

    move-result-object v18

    # invokes: Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->subSelectorForOm(Landroid/content/Intent;)V
    invoke-static/range {v17 .. v18}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->access$1800(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Landroid/content/Intent;)V

    goto/16 :goto_6

    .line 319
    :cond_2a
    const-string v17, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_2c

    .line 320
    const-string v17, "subscription"

    const/16 v18, -0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v12

    .line 322
    .local v12, "nDefaultDataSubId":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    move-object/from16 v17, v0

    # getter for: Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mIsUserConfirmDefaultData:Z
    invoke-static/range {v17 .. v17}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->access$2400(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;)Z

    move-result v17

    if-eqz v17, :cond_2b

    invoke-static {v12}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v17

    if-eqz v17, :cond_2b

    .line 324
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    move-object/from16 v17, v0

    # invokes: Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->handleDataEnableForOp02()V
    invoke-static/range {v17 .. v17}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->access$2500(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;)V

    .line 325
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    # setter for: Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mIsUserConfirmDefaultData:Z
    invoke-static/range {v17 .. v18}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->access$2402(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Z)Z

    .line 327
    :cond_2b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    # invokes: Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setLastValidDefaultDataSub(I)V
    invoke-static {v0, v12}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->access$2600(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;I)V

    goto/16 :goto_0

    .line 328
    .end local v12    # "nDefaultDataSubId":I
    :cond_2c
    const-string v17, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_32

    .line 329
    const-string v17, "simDetectStatus"

    const/16 v18, 0x4

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 331
    .local v6, "detectedType":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    move-object/from16 v17, v0

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "DataSubSelector detectedType:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    # invokes: Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V
    invoke-static/range {v17 .. v18}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->access$000(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Ljava/lang/String;)V

    .line 333
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v17

    if-eqz v17, :cond_2d

    # getter for: Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mOperatorSpec:Ljava/lang/String;
    invoke-static {}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->access$300()Ljava/lang/String;

    move-result-object v17

    const-string v18, "OP01"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_2d

    .line 335
    const/16 v17, 0x4

    move/from16 v0, v17

    if-ne v6, v0, :cond_2d

    .line 336
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    # invokes: Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->subSelectorForOp01(Landroid/content/Intent;)V
    invoke-static {v0, v1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->access$1300(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Landroid/content/Intent;)V

    .line 342
    :cond_2d
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v17

    if-eqz v17, :cond_2f

    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCT6MSupport()Z

    move-result v17

    if-nez v17, :cond_2e

    # getter for: Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mOperatorSpec:Ljava/lang/String;
    invoke-static {}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->access$300()Ljava/lang/String;

    move-result-object v17

    const-string v18, "OM"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_2f

    .line 344
    :cond_2e
    const/16 v17, 0x4

    move/from16 v0, v17

    if-ne v6, v0, :cond_2f

    .line 345
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    # setter for: Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mIsSubReady:Z
    invoke-static/range {v17 .. v18}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->access$402(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Z)Z

    .line 346
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    # invokes: Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setCapabilityIfNeeded(Landroid/content/Intent;)V
    invoke-static {v0, v1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->access$500(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Landroid/content/Intent;)V

    .line 350
    :cond_2f
    # getter for: Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mOperatorSpec:Ljava/lang/String;
    invoke-static {}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->access$300()Ljava/lang/String;

    move-result-object v17

    const-string v18, "OP02"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_30

    const/16 v17, 0x4

    move/from16 v0, v17

    if-ne v6, v0, :cond_30

    .line 351
    const-string v17, "ro.mtk_disable_cap_switch"

    const/16 v18, 0x0

    invoke-static/range {v17 .. v18}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v17

    if-nez v17, :cond_30

    .line 353
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultDataSubId()I

    move-result v5

    .line 354
    .local v5, "defDataSubId":I
    invoke-static {v5}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v4

    .line 355
    .local v4, "defDataPhoneId":I
    if-ltz v4, :cond_31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    move-object/from16 v17, v0

    # getter for: Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I
    invoke-static/range {v17 .. v17}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->access$2700(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;)I

    move-result v17

    move/from16 v0, v17

    if-ge v4, v0, :cond_31

    .line 357
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    move-object/from16 v17, v0

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "sync capability and data, find data phoneId from sub = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    # invokes: Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V
    invoke-static/range {v17 .. v18}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->access$000(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Ljava/lang/String;)V

    .line 358
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    # invokes: Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setCapability(I)Z
    invoke-static {v0, v4}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->access$2800(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;I)Z

    .line 364
    .end local v4    # "defDataPhoneId":I
    .end local v5    # "defDataSubId":I
    :cond_30
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    move-object/from16 v17, v0

    # invokes: Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->isOP01OMSupport()Z
    invoke-static/range {v17 .. v17}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->access$600(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;)Z

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_0

    .line 365
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    move-object/from16 v17, v0

    const-string v18, "sub for OP01 open market"

    # invokes: Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V
    invoke-static/range {v17 .. v18}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->access$000(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Ljava/lang/String;)V

    .line 366
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    move-object/from16 v17, v0

    # invokes: Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->subSelectorForOp01OM()V
    invoke-static/range {v17 .. v17}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->access$700(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;)V

    goto/16 :goto_0

    .line 360
    .restart local v4    # "defDataPhoneId":I
    .restart local v5    # "defDataSubId":I
    :cond_31
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    move-object/from16 v17, v0

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "phoneId out of boundary :"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    # invokes: Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V
    invoke-static/range {v17 .. v18}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->access$000(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Ljava/lang/String;)V

    goto :goto_7

    .line 368
    .end local v4    # "defDataPhoneId":I
    .end local v5    # "defDataSubId":I
    .end local v6    # "detectedType":I
    :cond_32
    const-string v17, "com.mediatek.phone.ACTION_SET_RADIO_TECHNOLOGY_START"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_34

    .line 370
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCT6MSupport()Z

    move-result v17

    if-nez v17, :cond_33

    # getter for: Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mOperatorSpec:Ljava/lang/String;
    invoke-static {}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->access$300()Ljava/lang/String;

    move-result-object v17

    const-string v18, "OM"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 371
    :cond_33
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    # setter for: Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mRadioTechDone:Z
    invoke-static/range {v17 .. v18}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->access$1902(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Z)Z

    goto/16 :goto_0

    .line 373
    :cond_34
    const-string v17, "com.mediatek.intent.action.INTENT_ACTION_RF_OFF_IN_IDLE"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_36

    .line 374
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCT6MSupport()Z

    move-result v17

    if-nez v17, :cond_35

    # getter for: Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mOperatorSpec:Ljava/lang/String;
    invoke-static {}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->access$300()Ljava/lang/String;

    move-result-object v17

    const-string v18, "OM"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 375
    :cond_35
    sget-object v17, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$RfOffState;->RF_OFF_IN_IDLE:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$RfOffState;

    invoke-static {}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->getInstance()Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->getRfOffState()Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$RfOffState;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_0

    .line 377
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    # invokes: Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setCapabilityIfNeeded(Landroid/content/Intent;)V
    invoke-static {v0, v1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->access$500(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 380
    :cond_36
    const-string v17, "android.intent.action.ACTION_SHUTDOWN_IPO"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 381
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    move-object/from16 v17, v0

    const-string v18, "DataSubSelector receive ACTION_SHUTDOWN_IPO, clear properties"

    # invokes: Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V
    invoke-static/range {v17 .. v18}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->access$000(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Ljava/lang/String;)V

    .line 382
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->clearAllSimImsiStatus()V

    .line 383
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    move-object/from16 v17, v0

    # getter for: Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I
    invoke-static/range {v17 .. v17}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->access$2700(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;)I

    move-result v17

    invoke-static/range {v17 .. v17}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->clearAllRilMccMnc(I)V

    goto/16 :goto_0
.end method
