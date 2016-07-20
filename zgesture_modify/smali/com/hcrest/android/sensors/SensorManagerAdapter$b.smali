.class Lcom/hcrest/android/sensors/SensorManagerAdapter$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hcrest/android/sensors/SensorManagerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field final a:I

.field b:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/hcrest/android/sensors/SensorManagerAdapter$a;",
            ">;"
        }
    .end annotation
.end field

.field c:I


# direct methods
.method public constructor <init>(II)V
    .locals 2

    .prologue
    .line 357
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 354
    new-instance v0, Ljava/util/Vector;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lcom/hcrest/android/sensors/SensorManagerAdapter$b;->b:Ljava/util/Vector;

    .line 355
    const/4 v0, 0x0

    iput v0, p0, Lcom/hcrest/android/sensors/SensorManagerAdapter$b;->c:I

    .line 358
    iput p1, p0, Lcom/hcrest/android/sensors/SensorManagerAdapter$b;->a:I

    .line 359
    iput p2, p0, Lcom/hcrest/android/sensors/SensorManagerAdapter$b;->c:I

    .line 360
    return-void
.end method
