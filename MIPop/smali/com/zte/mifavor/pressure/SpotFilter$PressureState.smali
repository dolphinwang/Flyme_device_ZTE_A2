.class public final enum Lcom/zte/mifavor/pressure/SpotFilter$PressureState;
.super Ljava/lang/Enum;
.source "SpotFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/mifavor/pressure/SpotFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PressureState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/zte/mifavor/pressure/SpotFilter$PressureState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/zte/mifavor/pressure/SpotFilter$PressureState;

.field public static final enum LIGHT:Lcom/zte/mifavor/pressure/SpotFilter$PressureState;

.field public static final enum NONE:Lcom/zte/mifavor/pressure/SpotFilter$PressureState;

.field public static final enum START_LIGHT:Lcom/zte/mifavor/pressure/SpotFilter$PressureState;

.field public static final enum START_WEIGHT:Lcom/zte/mifavor/pressure/SpotFilter$PressureState;

.field public static final enum WEIGHT:Lcom/zte/mifavor/pressure/SpotFilter$PressureState;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 42
    new-instance v0, Lcom/zte/mifavor/pressure/SpotFilter$PressureState;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcom/zte/mifavor/pressure/SpotFilter$PressureState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zte/mifavor/pressure/SpotFilter$PressureState;->NONE:Lcom/zte/mifavor/pressure/SpotFilter$PressureState;

    .line 43
    new-instance v0, Lcom/zte/mifavor/pressure/SpotFilter$PressureState;

    const-string v1, "START_LIGHT"

    invoke-direct {v0, v1, v3}, Lcom/zte/mifavor/pressure/SpotFilter$PressureState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zte/mifavor/pressure/SpotFilter$PressureState;->START_LIGHT:Lcom/zte/mifavor/pressure/SpotFilter$PressureState;

    .line 44
    new-instance v0, Lcom/zte/mifavor/pressure/SpotFilter$PressureState;

    const-string v1, "LIGHT"

    invoke-direct {v0, v1, v4}, Lcom/zte/mifavor/pressure/SpotFilter$PressureState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zte/mifavor/pressure/SpotFilter$PressureState;->LIGHT:Lcom/zte/mifavor/pressure/SpotFilter$PressureState;

    .line 45
    new-instance v0, Lcom/zte/mifavor/pressure/SpotFilter$PressureState;

    const-string v1, "START_WEIGHT"

    invoke-direct {v0, v1, v5}, Lcom/zte/mifavor/pressure/SpotFilter$PressureState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zte/mifavor/pressure/SpotFilter$PressureState;->START_WEIGHT:Lcom/zte/mifavor/pressure/SpotFilter$PressureState;

    .line 46
    new-instance v0, Lcom/zte/mifavor/pressure/SpotFilter$PressureState;

    const-string v1, "WEIGHT"

    invoke-direct {v0, v1, v6}, Lcom/zte/mifavor/pressure/SpotFilter$PressureState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zte/mifavor/pressure/SpotFilter$PressureState;->WEIGHT:Lcom/zte/mifavor/pressure/SpotFilter$PressureState;

    .line 41
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/zte/mifavor/pressure/SpotFilter$PressureState;

    sget-object v1, Lcom/zte/mifavor/pressure/SpotFilter$PressureState;->NONE:Lcom/zte/mifavor/pressure/SpotFilter$PressureState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/zte/mifavor/pressure/SpotFilter$PressureState;->START_LIGHT:Lcom/zte/mifavor/pressure/SpotFilter$PressureState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/zte/mifavor/pressure/SpotFilter$PressureState;->LIGHT:Lcom/zte/mifavor/pressure/SpotFilter$PressureState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/zte/mifavor/pressure/SpotFilter$PressureState;->START_WEIGHT:Lcom/zte/mifavor/pressure/SpotFilter$PressureState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/zte/mifavor/pressure/SpotFilter$PressureState;->WEIGHT:Lcom/zte/mifavor/pressure/SpotFilter$PressureState;

    aput-object v1, v0, v6

    sput-object v0, Lcom/zte/mifavor/pressure/SpotFilter$PressureState;->ENUM$VALUES:[Lcom/zte/mifavor/pressure/SpotFilter$PressureState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/zte/mifavor/pressure/SpotFilter$PressureState;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/zte/mifavor/pressure/SpotFilter$PressureState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/zte/mifavor/pressure/SpotFilter$PressureState;

    return-object v0
.end method

.method public static values()[Lcom/zte/mifavor/pressure/SpotFilter$PressureState;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/zte/mifavor/pressure/SpotFilter$PressureState;->ENUM$VALUES:[Lcom/zte/mifavor/pressure/SpotFilter$PressureState;

    array-length v1, v0

    new-array v2, v1, [Lcom/zte/mifavor/pressure/SpotFilter$PressureState;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
