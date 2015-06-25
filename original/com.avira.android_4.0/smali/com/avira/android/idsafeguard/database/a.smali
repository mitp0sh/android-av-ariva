.class public final Lcom/avira/android/idsafeguard/database/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/avira/android/idsafeguard/database/a;->a:Landroid/content/ContentResolver;

    .line 36
    return-void
.end method

.method private a(Landroid/net/Uri;Ljava/util/ArrayList;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentValues;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 203
    const/4 v0, 0x0

    .line 204
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 206
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Landroid/content/ContentValues;

    .line 207
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/content/ContentValues;

    .line 208
    iget-object v1, p0, Lcom/avira/android/idsafeguard/database/a;->a:Landroid/content/ContentResolver;

    invoke-virtual {v1, p1, v0}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result v0

    .line 210
    :cond_0
    return v0
.end method


# virtual methods
.method public final a()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 172
    iget-object v0, p0, Lcom/avira/android/idsafeguard/database/a;->a:Landroid/content/ContentResolver;

    sget-object v1, Lcom/avira/android/idsafeguard/database/ISContentProvider;->RECENT_BREACHES_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public final a(Lcom/avira/android/idsafeguard/api/gson/ISBreachesResponse;)I
    .locals 2

    .prologue
    .line 135
    invoke-virtual {p1}, Lcom/avira/android/idsafeguard/api/gson/ISBreachesResponse;->getBreachesContentValues()Ljava/util/ArrayList;

    move-result-object v0

    .line 136
    sget-object v1, Lcom/avira/android/idsafeguard/database/ISContentProvider;->RECENT_BREACHES_CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p0, v1, v0}, Lcom/avira/android/idsafeguard/database/a;->a(Landroid/net/Uri;Ljava/util/ArrayList;)I

    move-result v0

    return v0
.end method

.method public final a(Lcom/avira/android/idsafeguard/api/gson/ISCheckEmailsResponse;)I
    .locals 2

    .prologue
    .line 161
    invoke-virtual {p1}, Lcom/avira/android/idsafeguard/api/gson/ISCheckEmailsResponse;->getBreachedEmailsContentValues()Ljava/util/ArrayList;

    move-result-object v0

    .line 162
    sget-object v1, Lcom/avira/android/idsafeguard/database/ISContentProvider;->BREACHED_EMAIL_CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p0, v1, v0}, Lcom/avira/android/idsafeguard/database/a;->a(Landroid/net/Uri;Ljava/util/ArrayList;)I

    move-result v0

    return v0
.end method

.method public final a(Ljava/lang/String;)I
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 48
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 49
    const-string v1, "dismissed"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 50
    const-string v1, "email=?"

    .line 51
    new-array v2, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    .line 52
    iget-object v3, p0, Lcom/avira/android/idsafeguard/database/a;->a:Landroid/content/ContentResolver;

    sget-object v4, Lcom/avira/android/idsafeguard/database/ISContentProvider;->BREACHED_EMAIL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4, v0, v1, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 54
    return v0
.end method

.method public final a(Ljava/lang/String;I)I
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 68
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 69
    const-string v1, "dismissed"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 70
    const-string v1, "email=? and breachId=?"

    .line 71
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    .line 72
    iget-object v3, p0, Lcom/avira/android/idsafeguard/database/a;->a:Landroid/content/ContentResolver;

    sget-object v4, Lcom/avira/android/idsafeguard/database/ISContentProvider;->BREACHED_EMAIL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4, v0, v1, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 73
    return v0
.end method

.method public final a(Ljava/util/Collection;)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Landroid/content/ContentValues;",
            ">;)I"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 84
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 123
    :goto_0
    return v0

    .line 89
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 91
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 92
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    new-array v4, v1, [Ljava/lang/String;

    move v1, v0

    .line 95
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 102
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    .line 103
    const-string v5, "email"

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 104
    const-string v6, "breachId"

    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 105
    const-string v6, "("

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    const-string v6, "email"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    const-string v6, "=? and "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    const-string v6, "breachId"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    const-string v6, "=?)"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    aput-object v5, v4, v1

    .line 112
    add-int/lit8 v5, v1, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    .line 113
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 115
    const-string v0, " or "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    :cond_1
    add-int/lit8 v0, v1, 0x2

    move v1, v0

    .line 118
    goto :goto_1

    .line 120
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 121
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 122
    const-string v2, "dismissed"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 123
    iget-object v2, p0, Lcom/avira/android/idsafeguard/database/a;->a:Landroid/content/ContentResolver;

    sget-object v3, Lcom/avira/android/idsafeguard/database/ISContentProvider;->BREACHED_EMAIL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v1, v0, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public final b()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 182
    iget-object v0, p0, Lcom/avira/android/idsafeguard/database/a;->a:Landroid/content/ContentResolver;

    sget-object v1, Lcom/avira/android/idsafeguard/database/ISContentProvider;->BREACH_INFO_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public final b(Lcom/avira/android/idsafeguard/api/gson/ISBreachesResponse;)I
    .locals 2

    .prologue
    .line 148
    invoke-virtual {p1}, Lcom/avira/android/idsafeguard/api/gson/ISBreachesResponse;->getBreachesContentValues()Ljava/util/ArrayList;

    move-result-object v0

    .line 149
    sget-object v1, Lcom/avira/android/idsafeguard/database/ISContentProvider;->BREACH_INFO_CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p0, v1, v0}, Lcom/avira/android/idsafeguard/database/a;->a(Landroid/net/Uri;Ljava/util/ArrayList;)I

    move-result v0

    return v0
.end method

.method public final b(Ljava/lang/String;)[I
    .locals 7

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 216
    sget-object v1, Lcom/avira/android/idsafeguard/database/ISContentProvider;->BREACHED_EMAIL_CONTENT_URI:Landroid/net/Uri;

    .line 217
    new-array v2, v4, [Ljava/lang/String;

    const-string v0, "breachId"

    aput-object v0, v2, v6

    .line 218
    const-string v3, "email=?"

    .line 219
    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v6

    .line 222
    iget-object v0, p0, Lcom/avira/android/idsafeguard/database/a;->a:Landroid/content/ContentResolver;

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 224
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 226
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    new-array v5, v0, [I

    move v0, v6

    .line 230
    :cond_0
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    aput v2, v5, v0

    .line 231
    add-int/lit8 v0, v0, 0x1

    .line 233
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 236
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 237
    return-object v5
.end method

.method public final c()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 192
    iget-object v0, p0, Lcom/avira/android/idsafeguard/database/a;->a:Landroid/content/ContentResolver;

    sget-object v1, Lcom/avira/android/idsafeguard/database/ISContentProvider;->BREACHED_EMAIL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public final c(Ljava/lang/String;)I
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 249
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 250
    const-string v1, "dismissed"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 251
    const-string v1, "email!=?"

    .line 252
    new-array v2, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    .line 253
    iget-object v3, p0, Lcom/avira/android/idsafeguard/database/a;->a:Landroid/content/ContentResolver;

    sget-object v4, Lcom/avira/android/idsafeguard/database/ISContentProvider;->BREACHED_EMAIL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4, v0, v1, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 254
    return v0
.end method
