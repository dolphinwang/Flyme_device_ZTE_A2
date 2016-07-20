.class public Lcom/android/fmradio/FmStation;
.super Ljava/lang/Object;
.source "FmStation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/fmradio/FmStation$Station;
    }
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.android.fmradio"

.field public static final COLUMNS:[Ljava/lang/String;

.field public static final CURRENT_STATION:Ljava/lang/String; = "curent_station"

.field public static final MAX_FAVORITE_STATION_COUNT:I = 0x10

.field public static final STATION:Ljava/lang/String; = "station"

.field private static final TAG:Ljava/lang/String; = "FmStation"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 41
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 42
    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 43
    const-string v2, "frequency"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 44
    const-string v2, "is_favorite"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 45
    const-string v2, "station_name"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    .line 46
    const-string v2, "program_service"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    .line 47
    const-string v2, "radio_text"

    aput-object v2, v0, v1

    .line 41
    sput-object v0, Lcom/android/fmradio/FmStation;->COLUMNS:[Ljava/lang/String;

    .line 51
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addToFavorite(Landroid/content/Context;I)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "frequency"    # I

    .prologue
    const/4 v4, 0x1

    .line 304
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0, v4}, Landroid/content/ContentValues;-><init>(I)V

    .line 305
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "is_favorite"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 306
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 307
    sget-object v2, Lcom/android/fmradio/FmStation$Station;->CONTENT_URI:Landroid/net/Uri;

    .line 309
    const-string v3, "frequency=?"

    .line 310
    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 306
    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 311
    return-void
.end method

.method public static cleanAllStations(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 403
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/fmradio/FmStation$Station;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 404
    return-void
.end method

.method public static cleanSearchedStations(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 393
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/fmradio/FmStation$Station;->CONTENT_URI:Landroid/net/Uri;

    .line 394
    const-string v2, "is_favorite=0"

    const/4 v3, 0x0

    .line 393
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 395
    return-void
.end method

.method public static deleteStationInDb(Landroid/content/Context;I)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "frequency"    # I

    .prologue
    .line 173
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 174
    sget-object v1, Lcom/android/fmradio/FmStation$Station;->CONTENT_URI:Landroid/net/Uri;

    .line 175
    const-string v2, "frequency=?"

    .line 176
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 173
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 177
    return-void
.end method

.method public static getCurrentStation(Landroid/content/Context;)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 216
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 217
    .local v1, "prefs":Landroid/content/SharedPreferences;
    const-string v2, "curent_station"

    const/16 v3, 0x3e8

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 218
    .local v0, "currentStation":I
    return v0
.end method

.method public static getStationCount(Landroid/content/Context;)I
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 338
    const/4 v7, 0x0

    .line 339
    .local v7, "stationNus":I
    const/4 v6, 0x0

    .line 341
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 342
    sget-object v1, Lcom/android/fmradio/FmStation$Station;->CONTENT_URI:Landroid/net/Uri;

    .line 343
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    .line 344
    const/4 v3, 0x0

    .line 345
    const/4 v4, 0x0

    .line 346
    const/4 v5, 0x0

    .line 341
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 347
    if-eqz v6, :cond_0

    .line 348
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    .line 351
    :cond_0
    if-eqz v6, :cond_1

    .line 352
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 355
    :cond_1
    return v7

    .line 350
    :catchall_0
    move-exception v0

    .line 351
    if-eqz v6, :cond_2

    .line 352
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 354
    :cond_2
    throw v0
.end method

.method public static getStationCount(Landroid/content/Context;I)I
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "stationType"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 367
    const/4 v7, 0x0

    .line 368
    .local v7, "stationNus":I
    if-lez p1, :cond_1

    move v8, v4

    .line 369
    .local v8, "type":I
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 370
    sget-object v1, Lcom/android/fmradio/FmStation$Station;->CONTENT_URI:Landroid/net/Uri;

    .line 371
    sget-object v2, Lcom/android/fmradio/FmStation;->COLUMNS:[Ljava/lang/String;

    .line 372
    const-string v3, "is_favorite=?"

    .line 373
    new-array v4, v4, [Ljava/lang/String;

    .line 374
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v5

    .line 376
    const/4 v5, 0x0

    .line 369
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 377
    .local v6, "cur":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 379
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    .line 381
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 384
    :cond_0
    return v7

    .end local v6    # "cur":Landroid/database/Cursor;
    .end local v8    # "type":I
    :cond_1
    move v8, v5

    .line 368
    goto :goto_0

    .line 380
    .restart local v6    # "cur":Landroid/database/Cursor;
    .restart local v8    # "type":I
    :catchall_0
    move-exception v0

    .line 381
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 382
    throw v0
.end method

.method public static getStationName(Landroid/content/Context;I)Ljava/lang/String;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "frequency"    # I

    .prologue
    .line 244
    const-string v7, ""

    .line 245
    .local v7, "stationName":Ljava/lang/String;
    const/4 v6, 0x0

    .line 247
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 248
    sget-object v1, Lcom/android/fmradio/FmStation$Station;->CONTENT_URI:Landroid/net/Uri;

    .line 249
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "station_name"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "program_service"

    aput-object v4, v2, v3

    .line 250
    const-string v3, "frequency=?"

    .line 251
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v5

    .line 252
    const/4 v5, 0x0

    .line 247
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 253
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 255
    const-string v0, "station_name"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 261
    :cond_0
    if-eqz v6, :cond_1

    .line 262
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 265
    :cond_1
    return-object v7

    .line 260
    :catchall_0
    move-exception v0

    .line 261
    if-eqz v6, :cond_2

    .line 262
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 264
    :cond_2
    throw v0
.end method

.method public static insertStationToDb(Landroid/content/Context;ILjava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "frequency"    # I
    .param p2, "stationName"    # Ljava/lang/String;

    .prologue
    .line 98
    new-instance v0, Landroid/content/ContentValues;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 99
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "frequency"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 100
    const-string v1, "station_name"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/fmradio/FmStation$Station;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 102
    return-void
.end method

.method public static insertStationToDb(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "frequency"    # I
    .param p2, "stationName"    # Ljava/lang/String;
    .param p3, "ps"    # Ljava/lang/String;
    .param p4, "rt"    # Ljava/lang/String;

    .prologue
    .line 115
    new-instance v0, Landroid/content/ContentValues;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 116
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "frequency"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 117
    const-string v1, "station_name"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    const-string v1, "program_service"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    const-string v1, "radio_text"

    invoke-virtual {v0, v1, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/fmradio/FmStation$Station;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 121
    return-void
.end method

.method public static insertStationToDb(Landroid/content/Context;Landroid/content/ContentValues;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 130
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/fmradio/FmStation$Station;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 131
    return-void
.end method

.method public static isFavoriteStation(Landroid/content/Context;I)Z
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "frequency"    # I

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 277
    const/4 v7, 0x0

    .line 278
    .local v7, "isFavorite":Z
    const/4 v6, 0x0

    .line 280
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 281
    sget-object v1, Lcom/android/fmradio/FmStation$Station;->CONTENT_URI:Landroid/net/Uri;

    .line 282
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "is_favorite"

    aput-object v4, v2, v3

    .line 283
    const-string v3, "frequency=?"

    .line 284
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v4, v5

    .line 285
    const/4 v5, 0x0

    .line 280
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 286
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 287
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-lez v0, :cond_2

    move v7, v8

    .line 290
    :cond_0
    :goto_0
    if-eqz v6, :cond_1

    .line 291
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 294
    :cond_1
    return v7

    :cond_2
    move v7, v9

    .line 287
    goto :goto_0

    .line 289
    :catchall_0
    move-exception v0

    .line 290
    if-eqz v6, :cond_3

    .line 291
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 293
    :cond_3
    throw v0
.end method

.method public static isStationExist(Landroid/content/Context;I)Z
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "frequency"    # I

    .prologue
    .line 188
    const/4 v7, 0x0

    .line 189
    .local v7, "isExist":Z
    const/4 v6, 0x0

    .line 191
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 192
    sget-object v1, Lcom/android/fmradio/FmStation$Station;->CONTENT_URI:Landroid/net/Uri;

    .line 193
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "station_name"

    aput-object v4, v2, v3

    .line 194
    const-string v3, "frequency=?"

    .line 195
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v5

    .line 196
    const/4 v5, 0x0

    .line 191
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 197
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 198
    const/4 v7, 0x1

    .line 201
    :cond_0
    if-eqz v6, :cond_1

    .line 202
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 205
    :cond_1
    return v7

    .line 200
    :catchall_0
    move-exception v0

    .line 201
    if-eqz v6, :cond_2

    .line 202
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 204
    :cond_2
    throw v0
.end method

.method public static removeFromFavorite(Landroid/content/Context;I)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "frequency"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 320
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0, v4}, Landroid/content/ContentValues;-><init>(I)V

    .line 321
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "is_favorite"

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 323
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 324
    sget-object v2, Lcom/android/fmradio/FmStation$Station;->CONTENT_URI:Landroid/net/Uri;

    .line 326
    const-string v3, "frequency=?"

    .line 327
    new-array v4, v4, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    .line 323
    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 328
    return-void
.end method

.method public static setCurrentStation(Landroid/content/Context;I)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "frequency"    # I

    .prologue
    .line 228
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 229
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 230
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "curent_station"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 231
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 232
    return-void
.end method

.method public static updateStationToDb(Landroid/content/Context;ILandroid/content/ContentValues;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "frequency"    # I
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 159
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 160
    sget-object v1, Lcom/android/fmradio/FmStation$Station;->CONTENT_URI:Landroid/net/Uri;

    .line 162
    const-string v2, "frequency=?"

    .line 163
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 159
    invoke-virtual {v0, v1, p2, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 164
    return-void
.end method

.method public static updateStationToDb(Landroid/content/Context;ILjava/lang/String;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "frequency"    # I
    .param p2, "stationName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    .line 141
    const/4 v0, 0x1

    .line 142
    .local v0, "size":I
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1, v5}, Landroid/content/ContentValues;-><init>(I)V

    .line 143
    .local v1, "values":Landroid/content/ContentValues;
    const-string v2, "station_name"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 145
    sget-object v3, Lcom/android/fmradio/FmStation$Station;->CONTENT_URI:Landroid/net/Uri;

    .line 147
    const-string v4, "frequency=?"

    .line 148
    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 144
    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 149
    return-void
.end method
