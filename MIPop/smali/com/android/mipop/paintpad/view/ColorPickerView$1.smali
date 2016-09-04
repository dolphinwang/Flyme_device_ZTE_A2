.class Lcom/android/mipop/paintpad/view/ColorPickerView$1;
.super Ljava/lang/Object;
.source "ColorPickerView.java"

# interfaces
.implements Lcom/android/mipop/paintpad/view/ColorPickerView$onColorChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mipop/paintpad/view/ColorPickerView;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mipop/paintpad/view/ColorPickerView;


# direct methods
.method constructor <init>(Lcom/android/mipop/paintpad/view/ColorPickerView;)V
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Lcom/android/mipop/paintpad/view/ColorPickerView$1;->this$0:Lcom/android/mipop/paintpad/view/ColorPickerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onColorChanged(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 97
    return-void
.end method
