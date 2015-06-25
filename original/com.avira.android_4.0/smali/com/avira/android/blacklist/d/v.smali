.class public final Lcom/avira/android/blacklist/d/v;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final SMS_URI:Ljava/lang/String; = "content://sms"

.field private static final mContactEventContentObserverHandler:Landroid/os/Handler;


# instance fields
.field private final a:Landroid/content/ContentResolver;

.field private final b:Landroid/database/ContentObserver;

.field private c:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lcom/avira/android/blacklist/model/j;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lcom/avira/android/blacklist/model/j;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 75
    new-instance v0, Lcom/avira/android/blacklist/d/y;

    invoke-direct {v0}, Lcom/avira/android/blacklist/d/y;-><init>()V

    sput-object v0, Lcom/avira/android/blacklist/d/v;->mContactEventContentObserverHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avira/android/ApplicationService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/avira/android/blacklist/d/v;->a:Landroid/content/ContentResolver;

    .line 45
    new-instance v0, Lcom/avira/android/blacklist/d/w;

    invoke-direct {v0, p0}, Lcom/avira/android/blacklist/d/w;-><init>(Lcom/avira/android/blacklist/d/v;)V

    .line 54
    new-instance v1, Lcom/avira/android/blacklist/d/x;

    invoke-direct {v1, p0, v0, v0}, Lcom/avira/android/blacklist/d/x;-><init>(Lcom/avira/android/blacklist/d/v;Landroid/os/Handler;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/avira/android/blacklist/d/v;->b:Landroid/database/ContentObserver;

    .line 66
    iget-object v0, p0, Lcom/avira/android/blacklist/d/v;->a:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/avira/android/blacklist/d/v;->b:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 69
    new-instance v0, Lcom/avira/android/blacklist/d/z;

    invoke-direct {v0, p0}, Lcom/avira/android/blacklist/d/z;-><init>(Lcom/avira/android/blacklist/d/v;)V

    .line 70
    iget-object v1, p0, Lcom/avira/android/blacklist/d/v;->a:Landroid/content/ContentResolver;

    sget-object v2, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 72
    iget-object v1, p0, Lcom/avira/android/blacklist/d/v;->a:Landroid/content/ContentResolver;

    const-string v2, "content://sms"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 73
    return-void
.end method

.method private a(Ljava/lang/String;J)Lcom/avira/android/blacklist/model/j;
    .locals 6

    .prologue
    .line 301
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "[^0-9]*"

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 303
    :cond_0
    const/4 v0, 0x0

    .line 355
    :cond_1
    :goto_0
    return-object v0

    .line 306
    :cond_2
    iget-object v0, p0, Lcom/avira/android/blacklist/d/v;->c:Ljava/util/Hashtable;

    if-nez v0, :cond_3

    .line 308
    invoke-direct {p0}, Lcom/avira/android/blacklist/d/v;->e()V

    .line 311
    :cond_3
    iget-object v0, p0, Lcom/avira/android/blacklist/d/v;->c:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avira/android/blacklist/model/j;

    .line 312
    if-eqz v0, :cond_4

    .line 314
    invoke-virtual {v0}, Lcom/avira/android/blacklist/model/j;->a()Ljava/lang/String;

    move-result-object v1

    .line 342
    :goto_1
    if-nez v0, :cond_6

    .line 344
    new-instance v0, Lcom/avira/android/blacklist/model/j;

    invoke-direct {v0, v1, p1, p2, p3}, Lcom/avira/android/blacklist/model/j;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    .line 345
    iget-object v1, p0, Lcom/avira/android/blacklist/d/v;->d:Ljava/util/Hashtable;

    invoke-virtual {v0}, Lcom/avira/android/blacklist/model/j;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 318
    :cond_4
    iget-object v0, p0, Lcom/avira/android/blacklist/d/v;->d:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avira/android/blacklist/model/j;

    .line 319
    if-nez v0, :cond_9

    .line 321
    iget-object v1, p0, Lcom/avira/android/blacklist/d/v;->c:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v0

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avira/android/blacklist/model/j;

    .line 323
    invoke-virtual {v0}, Lcom/avira/android/blacklist/model/j;->b()Ljava/lang/String;

    move-result-object v3

    .line 324
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v4, v5, :cond_5

    .line 326
    invoke-virtual {v3, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-static {p1, v3}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    move-object v1, v0

    .line 328
    goto :goto_2

    .line 333
    :cond_5
    invoke-virtual {p1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-static {p1, v3}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    :goto_3
    move-object v1, v0

    .line 338
    goto :goto_2

    .line 349
    :cond_6
    invoke-virtual {v0}, Lcom/avira/android/blacklist/model/j;->e()J

    move-result-wide v2

    cmp-long v1, p2, v2

    if-lez v1, :cond_1

    .line 351
    invoke-virtual {v0, p2, p3}, Lcom/avira/android/blacklist/model/j;->a(J)V

    goto :goto_0

    :cond_7
    move-object v0, v1

    goto :goto_3

    :cond_8
    move-object v0, v1

    move-object v1, p1

    goto :goto_1

    :cond_9
    move-object v1, p1

    goto :goto_1
.end method

.method static synthetic a(Lcom/avira/android/blacklist/d/v;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/avira/android/blacklist/d/v;->e()V

    return-void
.end method

.method static synthetic d()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/avira/android/blacklist/d/v;->mContactEventContentObserverHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private e()V
    .locals 14

    .prologue
    const/4 v5, 0x0

    const/4 v13, 0x2

    const/4 v12, 0x1

    const/4 v6, 0x0

    .line 168
    iget-object v0, p0, Lcom/avira/android/blacklist/d/v;->c:Ljava/util/Hashtable;

    if-nez v0, :cond_1

    .line 170
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/avira/android/blacklist/d/v;->c:Ljava/util/Hashtable;

    .line 177
    :goto_0
    iget-object v0, p0, Lcom/avira/android/blacklist/d/v;->a:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "display_name"

    aput-object v3, v2, v6

    const-string v3, "_id"

    aput-object v3, v2, v12

    const-string v3, "has_phone_number"

    aput-object v3, v2, v13

    const-string v3, "in_visible_group= ?"

    new-array v4, v12, [Ljava/lang/String;

    const-string v7, "1"

    aput-object v7, v4, v6

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 181
    if-eqz v7, :cond_5

    .line 183
    :cond_0
    :goto_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 185
    const-string v0, "display_name"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 186
    const-string v0, "_id"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 187
    const-string v0, "has_phone_number"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 189
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 190
    if-lez v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/avira/android/blacklist/d/v;->a:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v13, [Ljava/lang/String;

    const-string v3, "contact_id"

    aput-object v3, v2, v6

    const-string v3, "data1"

    aput-object v3, v2, v12

    const-string v3, "contact_id = ?"

    new-array v4, v12, [Ljava/lang/String;

    aput-object v9, v4, v6

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    move v0, v6

    .line 199
    :goto_2
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 201
    const-string v1, "data1"

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 203
    new-instance v4, Lcom/avira/android/blacklist/model/j;

    if-nez v0, :cond_2

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    :goto_3
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    const-wide/16 v10, 0x0

    invoke-direct {v4, v1, v9, v10, v11}, Lcom/avira/android/blacklist/model/j;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    .line 205
    iget-object v1, p0, Lcom/avira/android/blacklist/d/v;->c:Ljava/util/Hashtable;

    invoke-virtual {v1, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    add-int/lit8 v0, v0, 0x1

    .line 208
    goto :goto_2

    .line 174
    :cond_1
    iget-object v0, p0, Lcom/avira/android/blacklist/d/v;->c:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    goto/16 :goto_0

    .line 203
    :cond_2
    const-string v1, "%s (%s)"

    new-array v9, v13, [Ljava/lang/Object;

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v12

    invoke-static {v1, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    .line 209
    :cond_3
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    .line 212
    :cond_4
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 214
    :cond_5
    return-void
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/avira/android/blacklist/model/j;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 122
    new-instance v6, Ljava/util/Hashtable;

    invoke-direct {v6}, Ljava/util/Hashtable;-><init>()V

    .line 124
    iget-object v0, p0, Lcom/avira/android/blacklist/d/v;->a:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "name"

    aput-object v5, v2, v4

    const/4 v4, 0x1

    const-string v5, "number"

    aput-object v5, v2, v4

    const/4 v4, 0x2

    const-string v5, "date"

    aput-object v5, v2, v4

    const/4 v4, 0x3

    const-string v5, "type"

    aput-object v5, v2, v4

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 127
    if-eqz v0, :cond_4

    .line 129
    iget-object v1, p0, Lcom/avira/android/blacklist/d/v;->c:Ljava/util/Hashtable;

    if-nez v1, :cond_0

    .line 131
    invoke-direct {p0}, Lcom/avira/android/blacklist/d/v;->e()V

    .line 134
    :cond_0
    iget-object v1, p0, Lcom/avira/android/blacklist/d/v;->d:Ljava/util/Hashtable;

    if-nez v1, :cond_2

    .line 136
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lcom/avira/android/blacklist/d/v;->d:Ljava/util/Hashtable;

    .line 143
    :cond_1
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 145
    const-string v1, "number"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 146
    const-string v2, "date"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 148
    invoke-direct {p0, v1, v2, v3}, Lcom/avira/android/blacklist/d/v;->a(Ljava/lang/String;J)Lcom/avira/android/blacklist/model/j;

    move-result-object v1

    .line 149
    if-eqz v1, :cond_1

    .line 151
    invoke-virtual {v1}, Lcom/avira/android/blacklist/model/j;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 140
    :cond_2
    iget-object v1, p0, Lcom/avira/android/blacklist/d/v;->d:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->clear()V

    goto :goto_0

    .line 154
    :cond_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 157
    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 159
    new-instance v1, Lcom/avira/android/blacklist/model/l;

    invoke-direct {v1}, Lcom/avira/android/blacklist/model/l;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 160
    return-object v0
.end method

.method public final b()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/avira/android/blacklist/model/j;",
            ">;"
        }
    .end annotation

    .prologue
    .line 223
    iget-object v0, p0, Lcom/avira/android/blacklist/d/v;->c:Ljava/util/Hashtable;

    if-nez v0, :cond_0

    .line 226
    invoke-direct {p0}, Lcom/avira/android/blacklist/d/v;->e()V

    .line 229
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/avira/android/blacklist/d/v;->c:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 231
    new-instance v1, Lcom/avira/android/blacklist/model/k;

    invoke-direct {v1}, Lcom/avira/android/blacklist/model/k;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 232
    return-object v0
.end method

.method public final c()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/avira/android/blacklist/model/j;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 242
    new-instance v6, Ljava/util/Hashtable;

    invoke-direct {v6}, Ljava/util/Hashtable;-><init>()V

    .line 244
    iget-object v0, p0, Lcom/avira/android/blacklist/d/v;->a:Landroid/content/ContentResolver;

    const-string v1, "content://sms"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "address"

    aput-object v5, v2, v4

    const/4 v4, 0x1

    const-string v5, "date"

    aput-object v5, v2, v4

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 250
    if-eqz v0, :cond_4

    .line 252
    iget-object v1, p0, Lcom/avira/android/blacklist/d/v;->c:Ljava/util/Hashtable;

    if-nez v1, :cond_0

    .line 254
    invoke-direct {p0}, Lcom/avira/android/blacklist/d/v;->e()V

    .line 257
    :cond_0
    iget-object v1, p0, Lcom/avira/android/blacklist/d/v;->d:Ljava/util/Hashtable;

    if-nez v1, :cond_2

    .line 259
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lcom/avira/android/blacklist/d/v;->d:Ljava/util/Hashtable;

    .line 266
    :cond_1
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 268
    const-string v1, "address"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 269
    const-string v2, "date"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 271
    invoke-direct {p0, v1, v2, v3}, Lcom/avira/android/blacklist/d/v;->a(Ljava/lang/String;J)Lcom/avira/android/blacklist/model/j;

    move-result-object v1

    .line 272
    if-eqz v1, :cond_1

    .line 274
    invoke-virtual {v1}, Lcom/avira/android/blacklist/model/j;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 263
    :cond_2
    iget-object v1, p0, Lcom/avira/android/blacklist/d/v;->d:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->clear()V

    goto :goto_0

    .line 278
    :cond_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 281
    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 283
    new-instance v1, Lcom/avira/android/blacklist/model/l;

    invoke-direct {v1}, Lcom/avira/android/blacklist/model/l;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 284
    return-object v0
.end method

.method protected final finalize()V
    .locals 2

    .prologue
    .line 107
    :try_start_0
    iget-object v0, p0, Lcom/avira/android/blacklist/d/v;->a:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/avira/android/blacklist/d/v;->b:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    :goto_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 113
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
