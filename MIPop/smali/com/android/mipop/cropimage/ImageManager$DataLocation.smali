.class public final enum Lcom/android/mipop/cropimage/ImageManager$DataLocation;
.super Ljava/lang/Enum;
.source "ImageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mipop/cropimage/ImageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DataLocation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/mipop/cropimage/ImageManager$DataLocation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/mipop/cropimage/ImageManager$DataLocation;

.field public static final enum ALL:Lcom/android/mipop/cropimage/ImageManager$DataLocation;

.field public static final enum EXTERNAL:Lcom/android/mipop/cropimage/ImageManager$DataLocation;

.field public static final enum INTERNAL:Lcom/android/mipop/cropimage/ImageManager$DataLocation;

.field public static final enum NONE:Lcom/android/mipop/cropimage/ImageManager$DataLocation;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 103
    new-instance v0, Lcom/android/mipop/cropimage/ImageManager$DataLocation;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcom/android/mipop/cropimage/ImageManager$DataLocation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/mipop/cropimage/ImageManager$DataLocation;->NONE:Lcom/android/mipop/cropimage/ImageManager$DataLocation;

    new-instance v0, Lcom/android/mipop/cropimage/ImageManager$DataLocation;

    const-string v1, "INTERNAL"

    invoke-direct {v0, v1, v3}, Lcom/android/mipop/cropimage/ImageManager$DataLocation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/mipop/cropimage/ImageManager$DataLocation;->INTERNAL:Lcom/android/mipop/cropimage/ImageManager$DataLocation;

    new-instance v0, Lcom/android/mipop/cropimage/ImageManager$DataLocation;

    const-string v1, "EXTERNAL"

    invoke-direct {v0, v1, v4}, Lcom/android/mipop/cropimage/ImageManager$DataLocation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/mipop/cropimage/ImageManager$DataLocation;->EXTERNAL:Lcom/android/mipop/cropimage/ImageManager$DataLocation;

    new-instance v0, Lcom/android/mipop/cropimage/ImageManager$DataLocation;

    const-string v1, "ALL"

    invoke-direct {v0, v1, v5}, Lcom/android/mipop/cropimage/ImageManager$DataLocation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/mipop/cropimage/ImageManager$DataLocation;->ALL:Lcom/android/mipop/cropimage/ImageManager$DataLocation;

    .line 102
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/mipop/cropimage/ImageManager$DataLocation;

    sget-object v1, Lcom/android/mipop/cropimage/ImageManager$DataLocation;->NONE:Lcom/android/mipop/cropimage/ImageManager$DataLocation;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/mipop/cropimage/ImageManager$DataLocation;->INTERNAL:Lcom/android/mipop/cropimage/ImageManager$DataLocation;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/mipop/cropimage/ImageManager$DataLocation;->EXTERNAL:Lcom/android/mipop/cropimage/ImageManager$DataLocation;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/mipop/cropimage/ImageManager$DataLocation;->ALL:Lcom/android/mipop/cropimage/ImageManager$DataLocation;

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/mipop/cropimage/ImageManager$DataLocation;->$VALUES:[Lcom/android/mipop/cropimage/ImageManager$DataLocation;

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
    .line 102
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/mipop/cropimage/ImageManager$DataLocation;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 102
    const-class v0, Lcom/android/mipop/cropimage/ImageManager$DataLocation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/mipop/cropimage/ImageManager$DataLocation;

    return-object v0
.end method

.method public static values()[Lcom/android/mipop/cropimage/ImageManager$DataLocation;
    .locals 1

    .prologue
    .line 102
    sget-object v0, Lcom/android/mipop/cropimage/ImageManager$DataLocation;->$VALUES:[Lcom/android/mipop/cropimage/ImageManager$DataLocation;

    invoke-virtual {v0}, [Lcom/android/mipop/cropimage/ImageManager$DataLocation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/mipop/cropimage/ImageManager$DataLocation;

    return-object v0
.end method
