.class final Lcom/zte/mifavor/preference/MultiCheckPreference$SavedState$1;
.super Ljava/lang/Object;
.source "MultiCheckPreference.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/mifavor/preference/MultiCheckPreference$SavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/zte/mifavor/preference/MultiCheckPreference$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 327
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/zte/mifavor/preference/MultiCheckPreference$SavedState;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 329
    new-instance v0, Lcom/zte/mifavor/preference/MultiCheckPreference$SavedState;

    invoke-direct {v0, p1}, Lcom/zte/mifavor/preference/MultiCheckPreference$SavedState;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 327
    invoke-virtual {p0, p1}, Lcom/zte/mifavor/preference/MultiCheckPreference$SavedState$1;->createFromParcel(Landroid/os/Parcel;)Lcom/zte/mifavor/preference/MultiCheckPreference$SavedState;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/zte/mifavor/preference/MultiCheckPreference$SavedState;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 333
    new-array v0, p1, [Lcom/zte/mifavor/preference/MultiCheckPreference$SavedState;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 327
    invoke-virtual {p0, p1}, Lcom/zte/mifavor/preference/MultiCheckPreference$SavedState$1;->newArray(I)[Lcom/zte/mifavor/preference/MultiCheckPreference$SavedState;

    move-result-object v0

    return-object v0
.end method
