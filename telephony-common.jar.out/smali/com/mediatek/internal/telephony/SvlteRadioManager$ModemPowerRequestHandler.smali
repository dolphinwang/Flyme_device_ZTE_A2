.class Lcom/mediatek/internal/telephony/SvlteRadioManager$ModemPowerRequestHandler;
.super Ljava/lang/Object;
.source "SvlteRadioManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/SvlteRadioManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ModemPowerRequestHandler"
.end annotation


# instance fields
.field private mIsModemOffRequestBlocked:Z

.field private mIsModemOnRequestBlocked:Z


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1030
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1031
    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/SvlteRadioManager$ModemPowerRequestHandler;->mIsModemOffRequestBlocked:Z

    .line 1032
    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/SvlteRadioManager$ModemPowerRequestHandler;->mIsModemOnRequestBlocked:Z

    .line 1033
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 1092
    const-string v0, "SvlteRadioManager"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1093
    return-void
.end method


# virtual methods
.method public isAllModemPowerOffRequestDone()Z
    .locals 8

    .prologue
    .line 1059
    const/4 v2, 0x1

    .line 1060
    .local v2, "isAllModemPowerOff":Z
    const/4 v5, 0x0

    .line 1061
    .local v5, "modemOff":Ljava/lang/String;
    sget-object v0, Lcom/mediatek/internal/telephony/RadioManager;->PROPERTY_RADIO_OFF:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v0, v1

    .line 1062
    .local v4, "modem":Ljava/lang/String;
    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1063
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MPRH: isAllModemPowerRequestDone "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/mediatek/internal/telephony/SvlteRadioManager$ModemPowerRequestHandler;->log(Ljava/lang/String;)V

    .line 1064
    const-string v6, "1"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 1065
    const/4 v2, 0x0

    .line 1069
    .end local v4    # "modem":Ljava/lang/String;
    :cond_0
    return v2

    .line 1061
    .restart local v4    # "modem":Ljava/lang/String;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public isModemOffRequestBlocked()Z
    .locals 2

    .prologue
    .line 1036
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MPRH: isModemOffRequestBlocked : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/SvlteRadioManager$ModemPowerRequestHandler;->mIsModemOffRequestBlocked:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/SvlteRadioManager$ModemPowerRequestHandler;->log(Ljava/lang/String;)V

    .line 1037
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/SvlteRadioManager$ModemPowerRequestHandler;->mIsModemOffRequestBlocked:Z

    return v0
.end method

.method public isModemOnRequestBlocked()Z
    .locals 2

    .prologue
    .line 1041
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MPRH: isModemOnRequestBlocked : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/SvlteRadioManager$ModemPowerRequestHandler;->mIsModemOnRequestBlocked:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/SvlteRadioManager$ModemPowerRequestHandler;->log(Ljava/lang/String;)V

    .line 1042
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/SvlteRadioManager$ModemPowerRequestHandler;->mIsModemOnRequestBlocked:Z

    return v0
.end method

.method public refreshRFBlockedState(Z)V
    .locals 2
    .param p1, "power"    # Z

    .prologue
    .line 1073
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MPRH: refreshRFBlockedState : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->getInstance()Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->getRfOffState()Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$RfOffState;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/SvlteRadioManager$ModemPowerRequestHandler;->log(Ljava/lang/String;)V

    .line 1075
    if-eqz p1, :cond_0

    .line 1076
    invoke-static {}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->getInstance()Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;

    move-result-object v0

    sget-object v1, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$RfOffState;->RF_OFF_IN_IDLE:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$RfOffState;

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->setAndGetRfOffState(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$RfOffState;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$RfOffState;

    .line 1082
    :goto_0
    return-void

    .line 1079
    :cond_0
    invoke-static {}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->getInstance()Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;

    move-result-object v0

    sget-object v1, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$RfOffState;->RF_OFF_BY_POWER_OFF:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$RfOffState;

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->setAndGetRfOffState(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$RfOffState;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$RfOffState;

    goto :goto_0
.end method

.method public setModemPowerOffState(Ljava/lang/String;)V
    .locals 6
    .param p1, "onOff"    # Ljava/lang/String;

    .prologue
    .line 1085
    sget-object v0, Lcom/mediatek/internal/telephony/RadioManager;->PROPERTY_RADIO_OFF:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 1086
    .local v3, "modem":Ljava/lang/String;
    invoke-static {v3, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1087
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MPRH: set "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/mediatek/internal/telephony/SvlteRadioManager$ModemPowerRequestHandler;->log(Ljava/lang/String;)V

    .line 1085
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1089
    .end local v3    # "modem":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public setModemPowerRequestBlocked(ZZ)V
    .locals 2
    .param p1, "power"    # Z
    .param p2, "isBlocked"    # Z

    .prologue
    .line 1046
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MPRH: setModemPowerRequestBlocked : power = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isBlocked = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/SvlteRadioManager$ModemPowerRequestHandler;->log(Ljava/lang/String;)V

    .line 1048
    if-eqz p1, :cond_1

    .line 1049
    iput-boolean p2, p0, Lcom/mediatek/internal/telephony/SvlteRadioManager$ModemPowerRequestHandler;->mIsModemOnRequestBlocked:Z

    .line 1056
    :cond_0
    :goto_0
    return-void

    .line 1051
    :cond_1
    iput-boolean p2, p0, Lcom/mediatek/internal/telephony/SvlteRadioManager$ModemPowerRequestHandler;->mIsModemOffRequestBlocked:Z

    .line 1052
    if-eqz p2, :cond_0

    .line 1053
    const-string v0, "-1"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/SvlteRadioManager$ModemPowerRequestHandler;->setModemPowerOffState(Ljava/lang/String;)V

    goto :goto_0
.end method
