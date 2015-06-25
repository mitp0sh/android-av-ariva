.class public Lcom/avira/android/blacklist/model/BLContactHistory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/avira/android/blacklist/model/BLContactHistory;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Lcom/avira/android/blacklist/d/q;

.field private b:Lcom/avira/android/blacklist/model/BLContact;

.field private final c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/avira/android/blacklist/model/BLHistoryItem;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/avira/android/blacklist/model/BLHistoryItem;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/avira/android/blacklist/b/f;

.field private f:Lcom/avira/android/blacklist/d/j;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 324
    new-instance v0, Lcom/avira/android/blacklist/model/c;

    invoke-direct {v0}, Lcom/avira/android/blacklist/model/c;-><init>()V

    sput-object v0, Lcom/avira/android/blacklist/model/BLContactHistory;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/avira/android/blacklist/model/BLContactHistory;->c:Ljava/util/ArrayList;

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/avira/android/blacklist/model/BLContactHistory;->d:Ljava/util/ArrayList;

    .line 82
    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Lcom/avira/android/blacklist/b/f;Lcom/avira/android/blacklist/d/j;)V
    .locals 3

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/avira/android/blacklist/model/BLContactHistory;-><init>()V

    .line 45
    invoke-static {}, Lcom/avira/android/blacklist/d/l;->a()Lcom/avira/android/blacklist/d/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avira/android/blacklist/d/l;->b()Lcom/avira/android/blacklist/d/q;

    move-result-object v0

    iput-object v0, p0, Lcom/avira/android/blacklist/model/BLContactHistory;->a:Lcom/avira/android/blacklist/d/q;

    .line 47
    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 49
    new-instance v0, Lcom/avira/android/blacklist/model/BLContact;

    invoke-direct {v0}, Lcom/avira/android/blacklist/model/BLContact;-><init>()V

    iput-object v0, p0, Lcom/avira/android/blacklist/model/BLContactHistory;->b:Lcom/avira/android/blacklist/model/BLContact;

    .line 60
    :goto_0
    iput-object p4, p0, Lcom/avira/android/blacklist/model/BLContactHistory;->e:Lcom/avira/android/blacklist/b/f;

    .line 61
    iput-object p5, p0, Lcom/avira/android/blacklist/model/BLContactHistory;->f:Lcom/avira/android/blacklist/d/j;

    .line 63
    return-void

    .line 51
    :cond_0
    const-wide/16 v0, -0x2

    cmp-long v0, p1, v0

    if-nez v0, :cond_1

    .line 53
    new-instance v0, Lcom/avira/android/blacklist/model/BLContact;

    invoke-direct {v0, p3}, Lcom/avira/android/blacklist/model/BLContact;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/avira/android/blacklist/model/BLContactHistory;->b:Lcom/avira/android/blacklist/model/BLContact;

    goto :goto_0

    .line 58
    :cond_1
    iget-object v0, p0, Lcom/avira/android/blacklist/model/BLContactHistory;->a:Lcom/avira/android/blacklist/d/q;

    invoke-virtual {v0, p1, p2}, Lcom/avira/android/blacklist/d/q;->a(J)Lcom/avira/android/blacklist/model/BLContact;

    move-result-object v0

    iput-object v0, p0, Lcom/avira/android/blacklist/model/BLContactHistory;->b:Lcom/avira/android/blacklist/model/BLContact;

    goto :goto_0
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 302
    invoke-direct {p0}, Lcom/avira/android/blacklist/model/BLContactHistory;-><init>()V

    .line 303
    const-class v0, Lcom/avira/android/blacklist/model/BLContact;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/avira/android/blacklist/model/BLContact;

    iput-object v0, p0, Lcom/avira/android/blacklist/model/BLContactHistory;->b:Lcom/avira/android/blacklist/model/BLContact;

    .line 305
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avira/android/blacklist/b/f;->valueOf(Ljava/lang/String;)Lcom/avira/android/blacklist/b/f;

    move-result-object v0

    iput-object v0, p0, Lcom/avira/android/blacklist/model/BLContactHistory;->e:Lcom/avira/android/blacklist/b/f;

    .line 306
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avira/android/blacklist/d/j;->valueOf(Ljava/lang/String;)Lcom/avira/android/blacklist/d/j;

    move-result-object v0

    iput-object v0, p0, Lcom/avira/android/blacklist/model/BLContactHistory;->f:Lcom/avira/android/blacklist/d/j;

    .line 307
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    move v2, v1

    .line 308
    :goto_0
    if-ge v2, v3, :cond_0

    .line 310
    iget-object v4, p0, Lcom/avira/android/blacklist/model/BLContactHistory;->c:Ljava/util/ArrayList;

    const-class v0, Lcom/avira/android/blacklist/model/BLHistoryItem;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/avira/android/blacklist/model/BLHistoryItem;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 308
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 313
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 314
    :goto_1
    if-ge v1, v2, :cond_1

    .line 316
    iget-object v3, p0, Lcom/avira/android/blacklist/model/BLContactHistory;->d:Ljava/util/ArrayList;

    const-class v0, Lcom/avira/android/blacklist/model/BLHistoryItem;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/avira/android/blacklist/model/BLHistoryItem;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 314
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 318
    :cond_1
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;B)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/avira/android/blacklist/model/BLContactHistory;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private d(Lcom/avira/android/blacklist/d/j;)J
    .locals 10

    .prologue
    .line 250
    sget-object v0, Lcom/avira/android/blacklist/d/j;->CALL:Lcom/avira/android/blacklist/d/j;

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/avira/android/blacklist/model/BLContactHistory;->c:Ljava/util/ArrayList;

    .line 252
    :goto_0
    const-wide/16 v2, 0x0

    .line 254
    const/4 v1, 0x0

    .line 255
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avira/android/blacklist/model/BLHistoryItem;

    .line 257
    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/avira/android/blacklist/model/BLHistoryItem;->b()J

    move-result-wide v6

    invoke-virtual {v1}, Lcom/avira/android/blacklist/model/BLHistoryItem;->b()J

    move-result-wide v8

    cmp-long v5, v6, v8

    if-lez v5, :cond_4

    :cond_0
    :goto_2
    move-object v1, v0

    .line 261
    goto :goto_1

    .line 250
    :cond_1
    iget-object v0, p0, Lcom/avira/android/blacklist/model/BLContactHistory;->d:Ljava/util/ArrayList;

    goto :goto_0

    .line 263
    :cond_2
    if-eqz v1, :cond_3

    .line 265
    invoke-virtual {v1}, Lcom/avira/android/blacklist/model/BLHistoryItem;->b()J

    move-result-wide v0

    .line 268
    :goto_3
    return-wide v0

    :cond_3
    move-wide v0, v2

    goto :goto_3

    :cond_4
    move-object v0, v1

    goto :goto_2
.end method


# virtual methods
.method public final a()J
    .locals 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/avira/android/blacklist/model/BLContactHistory;->b:Lcom/avira/android/blacklist/model/BLContact;

    invoke-virtual {v0}, Lcom/avira/android/blacklist/model/BLContact;->b()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public final a(Lcom/avira/android/blacklist/d/j;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/avira/android/blacklist/d/j;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/avira/android/blacklist/model/BLHistoryItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 171
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 173
    sget-object v1, Lcom/avira/android/blacklist/model/d;->$SwitchMap$com$avira$android$blacklist$utilities$BLContactManagerHelper$BlacklistOption:[I

    invoke-virtual {p1}, Lcom/avira/android/blacklist/d/j;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 186
    :goto_0
    return-object v0

    .line 176
    :pswitch_0
    iget-object v1, p0, Lcom/avira/android/blacklist/model/BLContactHistory;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 180
    :pswitch_1
    iget-object v1, p0, Lcom/avira/android/blacklist/model/BLContactHistory;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 184
    :pswitch_2
    iget-object v1, p0, Lcom/avira/android/blacklist/model/BLContactHistory;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 185
    iget-object v1, p0, Lcom/avira/android/blacklist/model/BLContactHistory;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 173
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final a(JZ)V
    .locals 9

    .prologue
    .line 135
    iget-object v0, p0, Lcom/avira/android/blacklist/model/BLContactHistory;->c:Ljava/util/ArrayList;

    new-instance v1, Lcom/avira/android/blacklist/model/BLHistoryItem;

    iget-object v2, p0, Lcom/avira/android/blacklist/model/BLContactHistory;->b:Lcom/avira/android/blacklist/model/BLContact;

    invoke-virtual {v2}, Lcom/avira/android/blacklist/model/BLContact;->b()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const/4 v7, 0x0

    move-wide v4, p1

    move v6, p3

    invoke-direct/range {v1 .. v7}, Lcom/avira/android/blacklist/model/BLHistoryItem;-><init>(JJZLjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 136
    return-void
.end method

.method public final a(JZLjava/lang/String;)V
    .locals 9

    .prologue
    .line 149
    iget-object v0, p0, Lcom/avira/android/blacklist/model/BLContactHistory;->d:Ljava/util/ArrayList;

    new-instance v1, Lcom/avira/android/blacklist/model/BLHistoryItem;

    iget-object v2, p0, Lcom/avira/android/blacklist/model/BLContactHistory;->b:Lcom/avira/android/blacklist/model/BLContact;

    invoke-virtual {v2}, Lcom/avira/android/blacklist/model/BLContact;->b()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    move-wide v4, p1

    move v6, p3

    move-object v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/avira/android/blacklist/model/BLHistoryItem;-><init>(JJZLjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 150
    return-void
.end method

.method public final b(Lcom/avira/android/blacklist/d/j;)I
    .locals 3

    .prologue
    .line 215
    const/4 v1, 0x0

    .line 217
    sget-object v0, Lcom/avira/android/blacklist/d/j;->CALL:Lcom/avira/android/blacklist/d/j;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/avira/android/blacklist/model/BLContactHistory;->c:Ljava/util/ArrayList;

    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avira/android/blacklist/model/BLHistoryItem;

    .line 219
    invoke-virtual {v0}, Lcom/avira/android/blacklist/model/BLHistoryItem;->c()Z

    move-result v0

    if-nez v0, :cond_2

    .line 221
    add-int/lit8 v0, v1, 0x1

    :goto_2
    move v1, v0

    .line 223
    goto :goto_1

    .line 217
    :cond_0
    iget-object v0, p0, Lcom/avira/android/blacklist/model/BLContactHistory;->d:Ljava/util/ArrayList;

    goto :goto_0

    .line 224
    :cond_1
    return v1

    :cond_2
    move v0, v1

    goto :goto_2
.end method

.method public final b()Lcom/avira/android/blacklist/model/BLContact;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/avira/android/blacklist/model/BLContactHistory;->b:Lcom/avira/android/blacklist/model/BLContact;

    return-object v0
.end method

.method public final c(Lcom/avira/android/blacklist/d/j;)I
    .locals 1

    .prologue
    .line 237
    sget-object v0, Lcom/avira/android/blacklist/d/j;->CALL:Lcom/avira/android/blacklist/d/j;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/avira/android/blacklist/model/BLContactHistory;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/avira/android/blacklist/model/BLContactHistory;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public final c()Ljava/lang/String;
    .locals 5

    .prologue
    .line 101
    iget-object v0, p0, Lcom/avira/android/blacklist/model/BLContactHistory;->b:Lcom/avira/android/blacklist/model/BLContact;

    invoke-virtual {v0}, Lcom/avira/android/blacklist/model/BLContact;->e()Ljava/lang/String;

    move-result-object v0

    .line 102
    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/avira/android/ApplicationService;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 103
    iget-object v2, p0, Lcom/avira/android/blacklist/model/BLContactHistory;->b:Lcom/avira/android/blacklist/model/BLContact;

    invoke-virtual {v2}, Lcom/avira/android/blacklist/model/BLContact;->h()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 105
    const v0, 0x7f08036b

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 111
    :cond_0
    :goto_0
    return-object v0

    .line 107
    :cond_1
    iget-object v2, p0, Lcom/avira/android/blacklist/model/BLContactHistory;->b:Lcom/avira/android/blacklist/model/BLContact;

    invoke-virtual {v2}, Lcom/avira/android/blacklist/model/BLContact;->i()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 109
    const v2, 0x7f08036c

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/avira/android/blacklist/model/BLContactHistory;->b:Lcom/avira/android/blacklist/model/BLContact;

    invoke-virtual {v0}, Lcom/avira/android/blacklist/model/BLContact;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 344
    const/4 v0, 0x0

    return v0
.end method

.method public final e()V
    .locals 3

    .prologue
    .line 200
    iget-object v0, p0, Lcom/avira/android/blacklist/model/BLContactHistory;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/avira/android/blacklist/model/BLContactHistory;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 202
    invoke-static {}, Lcom/avira/android/blacklist/d/l;->a()Lcom/avira/android/blacklist/d/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avira/android/blacklist/d/l;->d()Lcom/avira/android/blacklist/d/n;

    move-result-object v0

    iget-object v1, p0, Lcom/avira/android/blacklist/model/BLContactHistory;->e:Lcom/avira/android/blacklist/b/f;

    iget-object v2, p0, Lcom/avira/android/blacklist/model/BLContactHistory;->f:Lcom/avira/android/blacklist/d/j;

    invoke-virtual {v0, p0, v1, v2}, Lcom/avira/android/blacklist/d/n;->a(Lcom/avira/android/blacklist/model/BLContactHistory;Lcom/avira/android/blacklist/b/f;Lcom/avira/android/blacklist/d/j;)Lcom/avira/android/blacklist/model/BLContactHistory;

    .line 203
    return-void
.end method

.method public final f()Ljava/lang/String;
    .locals 2

    .prologue
    .line 278
    invoke-static {}, Lcom/avira/android/utilities/g;->a()Lcom/avira/android/utilities/g;

    invoke-virtual {p0}, Lcom/avira/android/blacklist/model/BLContactHistory;->g()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/avira/android/utilities/g;->c(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final g()J
    .locals 5

    .prologue
    .line 288
    sget-object v0, Lcom/avira/android/blacklist/d/j;->CALL:Lcom/avira/android/blacklist/d/j;

    invoke-direct {p0, v0}, Lcom/avira/android/blacklist/model/BLContactHistory;->d(Lcom/avira/android/blacklist/d/j;)J

    move-result-wide v0

    .line 289
    sget-object v2, Lcom/avira/android/blacklist/d/j;->SMS:Lcom/avira/android/blacklist/d/j;

    invoke-direct {p0, v2}, Lcom/avira/android/blacklist/model/BLContactHistory;->d(Lcom/avira/android/blacklist/d/j;)J

    move-result-wide v2

    .line 291
    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    :goto_0
    return-wide v0

    :cond_0
    move-wide v0, v2

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 350
    iget-object v0, p0, Lcom/avira/android/blacklist/model/BLContactHistory;->b:Lcom/avira/android/blacklist/model/BLContact;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 351
    iget-object v0, p0, Lcom/avira/android/blacklist/model/BLContactHistory;->e:Lcom/avira/android/blacklist/b/f;

    invoke-virtual {v0}, Lcom/avira/android/blacklist/b/f;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 352
    iget-object v0, p0, Lcom/avira/android/blacklist/model/BLContactHistory;->f:Lcom/avira/android/blacklist/d/j;

    invoke-virtual {v0}, Lcom/avira/android/blacklist/d/j;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 354
    iget-object v0, p0, Lcom/avira/android/blacklist/model/BLContactHistory;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 355
    iget-object v0, p0, Lcom/avira/android/blacklist/model/BLContactHistory;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avira/android/blacklist/model/BLHistoryItem;

    .line 357
    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    goto :goto_0

    .line 360
    :cond_0
    iget-object v0, p0, Lcom/avira/android/blacklist/model/BLContactHistory;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 361
    iget-object v0, p0, Lcom/avira/android/blacklist/model/BLContactHistory;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avira/android/blacklist/model/BLHistoryItem;

    .line 363
    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    goto :goto_1

    .line 365
    :cond_1
    return-void
.end method
