.class final Lcom/zte/mifavor/preference/AbsSavedState$2;
.super Ljava/lang/Object;
.source "AbsSavedState.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/mifavor/preference/AbsSavedState;
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
        "Lcom/zte/mifavor/preference/AbsSavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/zte/mifavor/preference/AbsSavedState;
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 79
    const-class v1, Lcom/zte/mifavor/preference/Preference;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    .line 80
    .local v0, "superState":Landroid/os/Parcelable;
    if-eqz v0, :cond_0

    .line 81
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "superState must be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 83
    :cond_0
    sget-object v1, Lcom/zte/mifavor/preference/AbsSavedState;->EMPTY_STATE:Lcom/zte/mifavor/preference/AbsSavedState;

    return-object v1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 75
    invoke-virtual {p0, p1}, Lcom/zte/mifavor/preference/AbsSavedState$2;->createFromParcel(Landroid/os/Parcel;)Lcom/zte/mifavor/preference/AbsSavedState;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/zte/mifavor/preference/AbsSavedState;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 87
    new-array v0, p1, [Lcom/zte/mifavor/preference/AbsSavedState;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 75
    invoke-virtual {p0, p1}, Lcom/zte/mifavor/preference/AbsSavedState$2;->newArray(I)[Lcom/zte/mifavor/preference/AbsSavedState;

    move-result-object v0

    return-object v0
.end method
