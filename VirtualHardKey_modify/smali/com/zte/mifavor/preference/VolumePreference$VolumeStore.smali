.class public Lcom/zte/mifavor/preference/VolumePreference$VolumeStore;
.super Ljava/lang/Object;
.source "VolumePreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/mifavor/preference/VolumePreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VolumeStore"
.end annotation


# instance fields
.field public originalVolume:I

.field public volume:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 187
    iput v0, p0, Lcom/zte/mifavor/preference/VolumePreference$VolumeStore;->volume:I

    .line 188
    iput v0, p0, Lcom/zte/mifavor/preference/VolumePreference$VolumeStore;->originalVolume:I

    return-void
.end method
