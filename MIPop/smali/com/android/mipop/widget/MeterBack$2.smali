.class Lcom/android/mipop/widget/MeterBack$2;
.super Ljava/lang/Thread;
.source "MeterBack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mipop/widget/MeterBack;->onPressureChangedCallback(Lcom/zte/mifavor/pressure/SpotFilter$PressureState;Lcom/zte/mifavor/pressure/SpotFilter$PressureState;Lcom/zte/mifavor/pressure/SpotFilter$Spot;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mipop/widget/MeterBack;


# direct methods
.method constructor <init>(Lcom/android/mipop/widget/MeterBack;)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lcom/android/mipop/widget/MeterBack$2;->this$0:Lcom/android/mipop/widget/MeterBack;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 109
    :try_start_0
    new-instance v1, Landroid/app/Instrumentation;

    invoke-direct {v1}, Landroid/app/Instrumentation;-><init>()V

    .line 110
    .local v1, "inst":Landroid/app/Instrumentation;
    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/app/Instrumentation;->sendKeyDownUpSync(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    .end local v1    # "inst":Landroid/app/Instrumentation;
    :goto_0
    return-void

    .line 111
    :catch_0
    move-exception v0

    .line 113
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "lxg"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
