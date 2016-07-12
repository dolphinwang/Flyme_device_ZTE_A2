.class public final enum Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$RfOffState;
.super Ljava/lang/Enum;
.source "SvlteModeController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RfOffState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$RfOffState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$RfOffState;

.field public static final enum RF_OFF_BY_MODE_SWITCH:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$RfOffState;

.field public static final enum RF_OFF_BY_POWER_OFF:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$RfOffState;

.field public static final enum RF_OFF_BY_SIM_SWITCH:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$RfOffState;

.field public static final enum RF_OFF_IN_IDLE:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$RfOffState;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 181
    new-instance v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$RfOffState;

    const-string v1, "RF_OFF_IN_IDLE"

    invoke-direct {v0, v1, v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$RfOffState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$RfOffState;->RF_OFF_IN_IDLE:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$RfOffState;

    .line 182
    new-instance v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$RfOffState;

    const-string v1, "RF_OFF_BY_MODE_SWITCH"

    invoke-direct {v0, v1, v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$RfOffState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$RfOffState;->RF_OFF_BY_MODE_SWITCH:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$RfOffState;

    .line 183
    new-instance v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$RfOffState;

    const-string v1, "RF_OFF_BY_SIM_SWITCH"

    invoke-direct {v0, v1, v4}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$RfOffState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$RfOffState;->RF_OFF_BY_SIM_SWITCH:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$RfOffState;

    .line 184
    new-instance v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$RfOffState;

    const-string v1, "RF_OFF_BY_POWER_OFF"

    invoke-direct {v0, v1, v5}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$RfOffState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$RfOffState;->RF_OFF_BY_POWER_OFF:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$RfOffState;

    .line 180
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$RfOffState;

    sget-object v1, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$RfOffState;->RF_OFF_IN_IDLE:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$RfOffState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$RfOffState;->RF_OFF_BY_MODE_SWITCH:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$RfOffState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$RfOffState;->RF_OFF_BY_SIM_SWITCH:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$RfOffState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$RfOffState;->RF_OFF_BY_POWER_OFF:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$RfOffState;

    aput-object v1, v0, v5

    sput-object v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$RfOffState;->$VALUES:[Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$RfOffState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 180
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$RfOffState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 180
    const-class v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$RfOffState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$RfOffState;

    return-object v0
.end method

.method public static values()[Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$RfOffState;
    .locals 1

    .prologue
    .line 180
    sget-object v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$RfOffState;->$VALUES:[Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$RfOffState;

    invoke-virtual {v0}, [Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$RfOffState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$RfOffState;

    return-object v0
.end method
