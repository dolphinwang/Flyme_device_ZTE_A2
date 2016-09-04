.class Lcom/android/mipop/widget/MeterBack$1;
.super Ljava/lang/Object;
.source "MeterBack.java"

# interfaces
.implements Lcom/zte/mifavor/pressure/SpotFilter$PressureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mipop/widget/MeterBack;->initPressureLib()V
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
    .line 85
    iput-object p1, p0, Lcom/android/mipop/widget/MeterBack$1;->this$0:Lcom/android/mipop/widget/MeterBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPressureChanged(Lcom/zte/mifavor/pressure/SpotFilter$Spot;)V
    .locals 0
    .param p1, "spot"    # Lcom/zte/mifavor/pressure/SpotFilter$Spot;

    .prologue
    .line 88
    return-void
.end method

.method public onStateChanged(Lcom/zte/mifavor/pressure/SpotFilter$PressureState;Lcom/zte/mifavor/pressure/SpotFilter$PressureState;Lcom/zte/mifavor/pressure/SpotFilter$Spot;)V
    .locals 1
    .param p1, "oldState"    # Lcom/zte/mifavor/pressure/SpotFilter$PressureState;
    .param p2, "newState"    # Lcom/zte/mifavor/pressure/SpotFilter$PressureState;
    .param p3, "spot"    # Lcom/zte/mifavor/pressure/SpotFilter$Spot;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/mipop/widget/MeterBack$1;->this$0:Lcom/android/mipop/widget/MeterBack;

    # invokes: Lcom/android/mipop/widget/MeterBack;->onPressureChangedCallback(Lcom/zte/mifavor/pressure/SpotFilter$PressureState;Lcom/zte/mifavor/pressure/SpotFilter$PressureState;Lcom/zte/mifavor/pressure/SpotFilter$Spot;)V
    invoke-static {v0, p1, p2, p3}, Lcom/android/mipop/widget/MeterBack;->access$000(Lcom/android/mipop/widget/MeterBack;Lcom/zte/mifavor/pressure/SpotFilter$PressureState;Lcom/zte/mifavor/pressure/SpotFilter$PressureState;Lcom/zte/mifavor/pressure/SpotFilter$Spot;)V

    .line 92
    return-void
.end method
