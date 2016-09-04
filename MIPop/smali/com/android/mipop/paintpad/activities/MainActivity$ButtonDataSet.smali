.class Lcom/android/mipop/paintpad/activities/MainActivity$ButtonDataSet;
.super Ljava/lang/Object;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mipop/paintpad/activities/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ButtonDataSet"
.end annotation


# instance fields
.field final btnSelectedRes:I

.field final btnUnselectedRes:I

.field final synthetic this$0:Lcom/android/mipop/paintpad/activities/MainActivity;

.field final value:I


# direct methods
.method public constructor <init>(Lcom/android/mipop/paintpad/activities/MainActivity;III)V
    .locals 0
    .param p2, "btnselectedres"    # I
    .param p3, "btnunselectedres"    # I
    .param p4, "value"    # I

    .prologue
    .line 105
    iput-object p1, p0, Lcom/android/mipop/paintpad/activities/MainActivity$ButtonDataSet;->this$0:Lcom/android/mipop/paintpad/activities/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    iput p2, p0, Lcom/android/mipop/paintpad/activities/MainActivity$ButtonDataSet;->btnSelectedRes:I

    .line 107
    iput p3, p0, Lcom/android/mipop/paintpad/activities/MainActivity$ButtonDataSet;->btnUnselectedRes:I

    .line 108
    iput p4, p0, Lcom/android/mipop/paintpad/activities/MainActivity$ButtonDataSet;->value:I

    .line 109
    return-void
.end method
