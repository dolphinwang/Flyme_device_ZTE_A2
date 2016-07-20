.class public final enum Lcom/zte/zgesture/sensorcontrol/AirGestureControl$AirGestureDemoType;
.super Ljava/lang/Enum;
.source "AirGestureControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/zgesture/sensorcontrol/AirGestureControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AirGestureDemoType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/zte/zgesture/sensorcontrol/AirGestureControl$AirGestureDemoType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/zte/zgesture/sensorcontrol/AirGestureControl$AirGestureDemoType;

.field public static final enum M:Lcom/zte/zgesture/sensorcontrol/AirGestureControl$AirGestureDemoType;

.field public static final enum NONE:Lcom/zte/zgesture/sensorcontrol/AirGestureControl$AirGestureDemoType;

.field public static final enum O:Lcom/zte/zgesture/sensorcontrol/AirGestureControl$AirGestureDemoType;

.field public static final enum V:Lcom/zte/zgesture/sensorcontrol/AirGestureControl$AirGestureDemoType;

.field public static final enum W:Lcom/zte/zgesture/sensorcontrol/AirGestureControl$AirGestureDemoType;

.field public static final enum Z:Lcom/zte/zgesture/sensorcontrol/AirGestureControl$AirGestureDemoType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 44
    new-instance v0, Lcom/zte/zgesture/sensorcontrol/AirGestureControl$AirGestureDemoType;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v3}, Lcom/zte/zgesture/sensorcontrol/AirGestureControl$AirGestureDemoType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zte/zgesture/sensorcontrol/AirGestureControl$AirGestureDemoType;->NONE:Lcom/zte/zgesture/sensorcontrol/AirGestureControl$AirGestureDemoType;

    .line 45
    new-instance v0, Lcom/zte/zgesture/sensorcontrol/AirGestureControl$AirGestureDemoType;

    const-string v1, "M"

    invoke-direct {v0, v1, v4}, Lcom/zte/zgesture/sensorcontrol/AirGestureControl$AirGestureDemoType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zte/zgesture/sensorcontrol/AirGestureControl$AirGestureDemoType;->M:Lcom/zte/zgesture/sensorcontrol/AirGestureControl$AirGestureDemoType;

    .line 46
    new-instance v0, Lcom/zte/zgesture/sensorcontrol/AirGestureControl$AirGestureDemoType;

    const-string v1, "O"

    invoke-direct {v0, v1, v5}, Lcom/zte/zgesture/sensorcontrol/AirGestureControl$AirGestureDemoType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zte/zgesture/sensorcontrol/AirGestureControl$AirGestureDemoType;->O:Lcom/zte/zgesture/sensorcontrol/AirGestureControl$AirGestureDemoType;

    .line 47
    new-instance v0, Lcom/zte/zgesture/sensorcontrol/AirGestureControl$AirGestureDemoType;

    const-string v1, "V"

    invoke-direct {v0, v1, v6}, Lcom/zte/zgesture/sensorcontrol/AirGestureControl$AirGestureDemoType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zte/zgesture/sensorcontrol/AirGestureControl$AirGestureDemoType;->V:Lcom/zte/zgesture/sensorcontrol/AirGestureControl$AirGestureDemoType;

    .line 48
    new-instance v0, Lcom/zte/zgesture/sensorcontrol/AirGestureControl$AirGestureDemoType;

    const-string v1, "Z"

    invoke-direct {v0, v1, v7}, Lcom/zte/zgesture/sensorcontrol/AirGestureControl$AirGestureDemoType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zte/zgesture/sensorcontrol/AirGestureControl$AirGestureDemoType;->Z:Lcom/zte/zgesture/sensorcontrol/AirGestureControl$AirGestureDemoType;

    .line 49
    new-instance v0, Lcom/zte/zgesture/sensorcontrol/AirGestureControl$AirGestureDemoType;

    const-string v1, "W"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/zte/zgesture/sensorcontrol/AirGestureControl$AirGestureDemoType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zte/zgesture/sensorcontrol/AirGestureControl$AirGestureDemoType;->W:Lcom/zte/zgesture/sensorcontrol/AirGestureControl$AirGestureDemoType;

    .line 43
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/zte/zgesture/sensorcontrol/AirGestureControl$AirGestureDemoType;

    sget-object v1, Lcom/zte/zgesture/sensorcontrol/AirGestureControl$AirGestureDemoType;->NONE:Lcom/zte/zgesture/sensorcontrol/AirGestureControl$AirGestureDemoType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/zte/zgesture/sensorcontrol/AirGestureControl$AirGestureDemoType;->M:Lcom/zte/zgesture/sensorcontrol/AirGestureControl$AirGestureDemoType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/zte/zgesture/sensorcontrol/AirGestureControl$AirGestureDemoType;->O:Lcom/zte/zgesture/sensorcontrol/AirGestureControl$AirGestureDemoType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/zte/zgesture/sensorcontrol/AirGestureControl$AirGestureDemoType;->V:Lcom/zte/zgesture/sensorcontrol/AirGestureControl$AirGestureDemoType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/zte/zgesture/sensorcontrol/AirGestureControl$AirGestureDemoType;->Z:Lcom/zte/zgesture/sensorcontrol/AirGestureControl$AirGestureDemoType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/zte/zgesture/sensorcontrol/AirGestureControl$AirGestureDemoType;->W:Lcom/zte/zgesture/sensorcontrol/AirGestureControl$AirGestureDemoType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/zte/zgesture/sensorcontrol/AirGestureControl$AirGestureDemoType;->$VALUES:[Lcom/zte/zgesture/sensorcontrol/AirGestureControl$AirGestureDemoType;

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
    .line 43
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/zte/zgesture/sensorcontrol/AirGestureControl$AirGestureDemoType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 43
    const-class v0, Lcom/zte/zgesture/sensorcontrol/AirGestureControl$AirGestureDemoType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/zte/zgesture/sensorcontrol/AirGestureControl$AirGestureDemoType;

    return-object v0
.end method

.method public static values()[Lcom/zte/zgesture/sensorcontrol/AirGestureControl$AirGestureDemoType;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/zte/zgesture/sensorcontrol/AirGestureControl$AirGestureDemoType;->$VALUES:[Lcom/zte/zgesture/sensorcontrol/AirGestureControl$AirGestureDemoType;

    invoke-virtual {v0}, [Lcom/zte/zgesture/sensorcontrol/AirGestureControl$AirGestureDemoType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/zte/zgesture/sensorcontrol/AirGestureControl$AirGestureDemoType;

    return-object v0
.end method
