.class public final Lcom/google/b/j;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final DEFAULT_JSON_NON_EXECUTABLE:Z = false

.field private static final JSON_NON_EXECUTABLE_PREFIX:Ljava/lang/String; = ")]}\'\n"


# instance fields
.field final a:Lcom/google/b/s;

.field final b:Lcom/google/b/z;

.field private final c:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/util/Map",
            "<",
            "Lcom/google/b/c/a",
            "<*>;",
            "Lcom/google/b/p",
            "<*>;>;>;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/b/c/a",
            "<*>;",
            "Lcom/google/b/ae",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/b/af;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Lcom/google/b/b/f;

.field private final g:Z

.field private final h:Z

.field private final i:Z

.field private final j:Z


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    .line 174
    sget-object v1, Lcom/google/b/b/s;->DEFAULT:Lcom/google/b/b/s;

    sget-object v2, Lcom/google/b/c;->IDENTITY:Lcom/google/b/c;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v3

    sget-object v4, Lcom/google/b/ab;->DEFAULT:Lcom/google/b/ab;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/b/j;-><init>(Lcom/google/b/b/s;Lcom/google/b/i;Ljava/util/Map;Lcom/google/b/ab;Ljava/util/List;)V

    .line 178
    return-void
.end method

.method private constructor <init>(Lcom/google/b/b/s;Lcom/google/b/i;Ljava/util/Map;Lcom/google/b/ab;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/b/b/s;",
            "Lcom/google/b/i;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/reflect/Type;",
            "Lcom/google/b/q",
            "<*>;>;",
            "Lcom/google/b/ab;",
            "Ljava/util/List",
            "<",
            "Lcom/google/b/af;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lcom/google/b/j;->c:Ljava/lang/ThreadLocal;

    .line 112
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/j;->d:Ljava/util/Map;

    .line 123
    new-instance v0, Lcom/google/b/k;

    invoke-direct {v0, p0}, Lcom/google/b/k;-><init>(Lcom/google/b/j;)V

    iput-object v0, p0, Lcom/google/b/j;->a:Lcom/google/b/s;

    .line 130
    new-instance v0, Lcom/google/b/l;

    invoke-direct {v0, p0}, Lcom/google/b/l;-><init>(Lcom/google/b/j;)V

    iput-object v0, p0, Lcom/google/b/j;->b:Lcom/google/b/z;

    .line 186
    new-instance v0, Lcom/google/b/b/f;

    invoke-direct {v0, p3}, Lcom/google/b/b/f;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/google/b/j;->f:Lcom/google/b/b/f;

    .line 187
    iput-boolean v1, p0, Lcom/google/b/j;->g:Z

    .line 188
    iput-boolean v1, p0, Lcom/google/b/j;->i:Z

    .line 189
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/b/j;->h:Z

    .line 190
    iput-boolean v1, p0, Lcom/google/b/j;->j:Z

    .line 192
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 195
    sget-object v0, Lcom/google/b/b/a/y;->JSON_ELEMENT_FACTORY:Lcom/google/b/af;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 196
    sget-object v0, Lcom/google/b/b/a/m;->FACTORY:Lcom/google/b/af;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 199
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 202
    invoke-interface {v1, p5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 205
    sget-object v0, Lcom/google/b/b/a/y;->STRING_FACTORY:Lcom/google/b/af;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 206
    sget-object v0, Lcom/google/b/b/a/y;->INTEGER_FACTORY:Lcom/google/b/af;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 207
    sget-object v0, Lcom/google/b/b/a/y;->BOOLEAN_FACTORY:Lcom/google/b/af;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 208
    sget-object v0, Lcom/google/b/b/a/y;->BYTE_FACTORY:Lcom/google/b/af;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 209
    sget-object v0, Lcom/google/b/b/a/y;->SHORT_FACTORY:Lcom/google/b/af;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 210
    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const-class v3, Ljava/lang/Long;

    sget-object v0, Lcom/google/b/ab;->DEFAULT:Lcom/google/b/ab;

    if-ne p4, v0, :cond_0

    sget-object v0, Lcom/google/b/b/a/y;->LONG:Lcom/google/b/ae;

    :goto_0
    invoke-static {v2, v3, v0}, Lcom/google/b/b/a/y;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/google/b/ae;)Lcom/google/b/af;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 212
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const-class v2, Ljava/lang/Double;

    new-instance v3, Lcom/google/b/m;

    invoke-direct {v3, p0}, Lcom/google/b/m;-><init>(Lcom/google/b/j;)V

    invoke-static {v0, v2, v3}, Lcom/google/b/b/a/y;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/google/b/ae;)Lcom/google/b/af;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 214
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const-class v2, Ljava/lang/Float;

    new-instance v3, Lcom/google/b/n;

    invoke-direct {v3, p0}, Lcom/google/b/n;-><init>(Lcom/google/b/j;)V

    invoke-static {v0, v2, v3}, Lcom/google/b/b/a/y;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/google/b/ae;)Lcom/google/b/af;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 216
    sget-object v0, Lcom/google/b/b/a/y;->NUMBER_FACTORY:Lcom/google/b/af;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 217
    sget-object v0, Lcom/google/b/b/a/y;->CHARACTER_FACTORY:Lcom/google/b/af;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 218
    sget-object v0, Lcom/google/b/b/a/y;->STRING_BUILDER_FACTORY:Lcom/google/b/af;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 219
    sget-object v0, Lcom/google/b/b/a/y;->STRING_BUFFER_FACTORY:Lcom/google/b/af;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 220
    const-class v0, Ljava/math/BigDecimal;

    sget-object v2, Lcom/google/b/b/a/y;->BIG_DECIMAL:Lcom/google/b/ae;

    invoke-static {v0, v2}, Lcom/google/b/b/a/y;->a(Ljava/lang/Class;Lcom/google/b/ae;)Lcom/google/b/af;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 221
    const-class v0, Ljava/math/BigInteger;

    sget-object v2, Lcom/google/b/b/a/y;->BIG_INTEGER:Lcom/google/b/ae;

    invoke-static {v0, v2}, Lcom/google/b/b/a/y;->a(Ljava/lang/Class;Lcom/google/b/ae;)Lcom/google/b/af;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 222
    sget-object v0, Lcom/google/b/b/a/y;->URL_FACTORY:Lcom/google/b/af;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 223
    sget-object v0, Lcom/google/b/b/a/y;->URI_FACTORY:Lcom/google/b/af;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 224
    sget-object v0, Lcom/google/b/b/a/y;->UUID_FACTORY:Lcom/google/b/af;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 225
    sget-object v0, Lcom/google/b/b/a/y;->LOCALE_FACTORY:Lcom/google/b/af;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 226
    sget-object v0, Lcom/google/b/b/a/y;->INET_ADDRESS_FACTORY:Lcom/google/b/af;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 227
    sget-object v0, Lcom/google/b/b/a/y;->BIT_SET_FACTORY:Lcom/google/b/af;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 228
    sget-object v0, Lcom/google/b/b/a/e;->FACTORY:Lcom/google/b/af;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 229
    sget-object v0, Lcom/google/b/b/a/y;->CALENDAR_FACTORY:Lcom/google/b/af;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 230
    sget-object v0, Lcom/google/b/b/a/v;->FACTORY:Lcom/google/b/af;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 231
    sget-object v0, Lcom/google/b/b/a/t;->FACTORY:Lcom/google/b/af;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 232
    sget-object v0, Lcom/google/b/b/a/y;->TIMESTAMP_FACTORY:Lcom/google/b/af;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 233
    sget-object v0, Lcom/google/b/b/a/a;->FACTORY:Lcom/google/b/af;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 234
    sget-object v0, Lcom/google/b/b/a/y;->ENUM_FACTORY:Lcom/google/b/af;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 235
    sget-object v0, Lcom/google/b/b/a/y;->CLASS_FACTORY:Lcom/google/b/af;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 238
    new-instance v0, Lcom/google/b/b/a/c;

    iget-object v2, p0, Lcom/google/b/j;->f:Lcom/google/b/b/f;

    invoke-direct {v0, v2}, Lcom/google/b/b/a/c;-><init>(Lcom/google/b/b/f;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 239
    new-instance v0, Lcom/google/b/b/a/k;

    iget-object v2, p0, Lcom/google/b/j;->f:Lcom/google/b/b/f;

    invoke-direct {v0, v2}, Lcom/google/b/b/a/k;-><init>(Lcom/google/b/b/f;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 240
    new-instance v0, Lcom/google/b/b/a/p;

    iget-object v2, p0, Lcom/google/b/j;->f:Lcom/google/b/b/f;

    invoke-direct {v0, v2, p2, p1}, Lcom/google/b/b/a/p;-><init>(Lcom/google/b/b/f;Lcom/google/b/i;Lcom/google/b/b/s;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 243
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/j;->e:Ljava/util/List;

    .line 244
    return-void

    .line 210
    :cond_0
    new-instance v0, Lcom/google/b/o;

    invoke-direct {v0, p0}, Lcom/google/b/o;-><init>(Lcom/google/b/j;)V

    goto/16 :goto_0
.end method

.method private a(Ljava/io/Writer;)Lcom/google/b/d/d;
    .locals 2

    .prologue
    .line 638
    iget-boolean v0, p0, Lcom/google/b/j;->i:Z

    if-eqz v0, :cond_0

    .line 639
    const-string v0, ")]}\'\n"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 641
    :cond_0
    new-instance v0, Lcom/google/b/d/d;

    invoke-direct {v0, p1}, Lcom/google/b/d/d;-><init>(Ljava/io/Writer;)V

    .line 642
    iget-boolean v1, p0, Lcom/google/b/j;->j:Z

    if-eqz v1, :cond_1

    .line 643
    const-string v1, "  "

    invoke-virtual {v0, v1}, Lcom/google/b/d/d;->c(Ljava/lang/String;)V

    .line 645
    :cond_1
    iget-boolean v1, p0, Lcom/google/b/j;->g:Z

    invoke-virtual {v0, v1}, Lcom/google/b/d/d;->d(Z)V

    .line 646
    return-object v0
.end method

.method private a(Lcom/google/b/d/a;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/b/d/a;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 795
    .line 796
    invoke-virtual {p1}, Lcom/google/b/d/a;->p()Z

    move-result v2

    .line 797
    invoke-virtual {p1, v1}, Lcom/google/b/d/a;->a(Z)V

    .line 799
    :try_start_0
    invoke-virtual {p1}, Lcom/google/b/d/a;->f()Lcom/google/b/d/c;

    .line 800
    const/4 v1, 0x0

    .line 801
    invoke-static {p2}, Lcom/google/b/c/a;->a(Ljava/lang/reflect/Type;)Lcom/google/b/c/a;

    move-result-object v0

    .line 802
    invoke-virtual {p0, v0}, Lcom/google/b/j;->a(Lcom/google/b/c/a;)Lcom/google/b/ae;

    move-result-object v0

    .line 803
    invoke-virtual {v0, p1}, Lcom/google/b/ae;->a(Lcom/google/b/d/a;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 820
    invoke-virtual {p1, v2}, Lcom/google/b/d/a;->a(Z)V

    :goto_0
    return-object v0

    .line 805
    :catch_0
    move-exception v0

    .line 810
    if-eqz v1, :cond_0

    .line 811
    invoke-virtual {p1, v2}, Lcom/google/b/d/a;->a(Z)V

    const/4 v0, 0x0

    goto :goto_0

    .line 813
    :cond_0
    :try_start_1
    new-instance v1, Lcom/google/b/aa;

    invoke-direct {v1, v0}, Lcom/google/b/aa;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 820
    :catchall_0
    move-exception v0

    invoke-virtual {p1, v2}, Lcom/google/b/d/a;->a(Z)V

    throw v0

    .line 814
    :catch_1
    move-exception v0

    .line 815
    :try_start_2
    new-instance v1, Lcom/google/b/aa;

    invoke-direct {v1, v0}, Lcom/google/b/aa;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 816
    :catch_2
    move-exception v0

    .line 818
    new-instance v1, Lcom/google/b/aa;

    invoke-direct {v1, v0}, Lcom/google/b/aa;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method static synthetic a(D)V
    .locals 4

    .prologue
    .line 97
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0, p1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not a valid double value as per JSON specification. To override this behavior, use GsonBuilder.serializeSpecialFloatingPointValues() method."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/b/af;Lcom/google/b/c/a;)Lcom/google/b/ae;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/b/af;",
            "Lcom/google/b/c/a",
            "<TT;>;)",
            "Lcom/google/b/ae",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 420
    const/4 v0, 0x0

    .line 422
    iget-object v1, p0, Lcom/google/b/j;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/b/af;

    .line 423
    if-nez v1, :cond_1

    .line 424
    if-ne v0, p1, :cond_0

    .line 425
    const/4 v0, 0x1

    move v1, v0

    goto :goto_0

    .line 430
    :cond_1
    invoke-interface {v0, p0, p2}, Lcom/google/b/af;->a(Lcom/google/b/j;Lcom/google/b/c/a;)Lcom/google/b/ae;

    move-result-object v0

    .line 431
    if-eqz v0, :cond_0

    .line 432
    return-object v0

    .line 435
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "GSON cannot serialize "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a(Lcom/google/b/c/a;)Lcom/google/b/ae;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/b/c/a",
            "<TT;>;)",
            "Lcom/google/b/ae",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 332
    iget-object v0, p0, Lcom/google/b/j;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/b/ae;

    .line 333
    if-eqz v0, :cond_1

    .line 368
    :cond_0
    :goto_0
    return-object v0

    .line 337
    :cond_1
    iget-object v0, p0, Lcom/google/b/j;->c:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 338
    const/4 v1, 0x0

    .line 339
    if-nez v0, :cond_5

    .line 340
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 341
    iget-object v0, p0, Lcom/google/b/j;->c:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 342
    const/4 v0, 0x1

    move-object v2, v1

    move v1, v0

    .line 346
    :goto_1
    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/b/p;

    .line 347
    if-nez v0, :cond_0

    .line 352
    :try_start_0
    new-instance v3, Lcom/google/b/p;

    invoke-direct {v3}, Lcom/google/b/p;-><init>()V

    .line 353
    invoke-interface {v2, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    iget-object v0, p0, Lcom/google/b/j;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/b/af;

    .line 356
    invoke-interface {v0, p0, p1}, Lcom/google/b/af;->a(Lcom/google/b/j;Lcom/google/b/c/a;)Lcom/google/b/ae;

    move-result-object v0

    .line 357
    if-eqz v0, :cond_2

    .line 358
    invoke-virtual {v3, v0}, Lcom/google/b/p;->a(Lcom/google/b/ae;)V

    .line 359
    iget-object v3, p0, Lcom/google/b/j;->d:Ljava/util/Map;

    invoke-interface {v3, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 365
    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 367
    if-eqz v1, :cond_0

    .line 368
    iget-object v1, p0, Lcom/google/b/j;->c:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->remove()V

    goto :goto_0

    .line 363
    :cond_3
    :try_start_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "GSON cannot handle "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 365
    :catchall_0
    move-exception v0

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 367
    if-eqz v1, :cond_4

    .line 368
    iget-object v1, p0, Lcom/google/b/j;->c:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->remove()V

    :cond_4
    throw v0

    :cond_5
    move-object v2, v0

    goto :goto_1
.end method

.method public final a(Ljava/lang/Class;)Lcom/google/b/ae;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/google/b/ae",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 445
    invoke-static {p1}, Lcom/google/b/c/a;->a(Ljava/lang/Class;)Lcom/google/b/c/a;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/b/j;->a(Lcom/google/b/c/a;)Lcom/google/b/ae;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 689
    if-nez p1, :cond_1

    const/4 v0, 0x0

    .line 690
    :cond_0
    invoke-static {p2}, Lcom/google/b/b/af;->a(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 689
    :cond_1
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/google/b/d/a;

    invoke-direct {v1, v0}, Lcom/google/b/d/a;-><init>(Ljava/io/Reader;)V

    invoke-direct {p0, v1, p2}, Lcom/google/b/j;->a(Lcom/google/b/d/a;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v1}, Lcom/google/b/d/a;->f()Lcom/google/b/d/c;

    move-result-object v1

    sget-object v2, Lcom/google/b/d/c;->END_DOCUMENT:Lcom/google/b/d/c;

    if-eq v1, v2, :cond_0

    new-instance v0, Lcom/google/b/u;

    const-string v1, "JSON document was not fully consumed."

    invoke-direct {v0, v1}, Lcom/google/b/u;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lcom/google/b/d/e; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/b/aa;

    invoke-direct {v1, v0}, Lcom/google/b/aa;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Lcom/google/b/u;

    invoke-direct {v1, v0}, Lcom/google/b/u;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final a(Ljava/lang/Object;)Ljava/lang/String;
    .locals 7

    .prologue
    .line 504
    if-nez p1, :cond_0

    .line 505
    sget-object v0, Lcom/google/b/v;->INSTANCE:Lcom/google/b/v;

    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    :try_start_0
    invoke-static {v1}, Lcom/google/b/b/ag;->a(Ljava/lang/Appendable;)Ljava/io/Writer;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/b/j;->a(Ljava/io/Writer;)Lcom/google/b/d/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/b/d/d;->g()Z

    move-result v3

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/google/b/d/d;->b(Z)V

    invoke-virtual {v2}, Lcom/google/b/d/d;->h()Z

    move-result v4

    iget-boolean v5, p0, Lcom/google/b/j;->h:Z

    invoke-virtual {v2, v5}, Lcom/google/b/d/d;->c(Z)V

    invoke-virtual {v2}, Lcom/google/b/d/d;->i()Z

    move-result v5

    iget-boolean v6, p0, Lcom/google/b/j;->g:Z

    invoke-virtual {v2, v6}, Lcom/google/b/d/d;->d(Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-static {v0, v2}, Lcom/google/b/b/ag;->a(Lcom/google/b/t;Lcom/google/b/d/d;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v2, v3}, Lcom/google/b/d/d;->b(Z)V

    invoke-virtual {v2, v4}, Lcom/google/b/d/d;->c(Z)V

    invoke-virtual {v2, v5}, Lcom/google/b/d/d;->d(Z)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    .line 507
    :goto_0
    return-object v0

    .line 505
    :catch_0
    move-exception v0

    :try_start_3
    new-instance v1, Lcom/google/b/u;

    invoke-direct {v1, v0}, Lcom/google/b/u;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    :try_start_4
    invoke-virtual {v2, v3}, Lcom/google/b/d/d;->b(Z)V

    invoke-virtual {v2, v4}, Lcom/google/b/d/d;->c(Z)V

    invoke-virtual {v2, v5}, Lcom/google/b/d/d;->d(Z)V

    throw v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 507
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/b/j;->a(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;
    .locals 7

    .prologue
    .line 526
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 527
    :try_start_0
    invoke-static {v0}, Lcom/google/b/b/ag;->a(Ljava/lang/Appendable;)Ljava/io/Writer;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/b/j;->a(Ljava/io/Writer;)Lcom/google/b/d/d;

    move-result-object v1

    invoke-static {p2}, Lcom/google/b/c/a;->a(Ljava/lang/reflect/Type;)Lcom/google/b/c/a;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/b/j;->a(Lcom/google/b/c/a;)Lcom/google/b/ae;

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/b/d/d;->g()Z

    move-result v3

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lcom/google/b/d/d;->b(Z)V

    invoke-virtual {v1}, Lcom/google/b/d/d;->h()Z

    move-result v4

    iget-boolean v5, p0, Lcom/google/b/j;->h:Z

    invoke-virtual {v1, v5}, Lcom/google/b/d/d;->c(Z)V

    invoke-virtual {v1}, Lcom/google/b/d/d;->i()Z

    move-result v5

    iget-boolean v6, p0, Lcom/google/b/j;->g:Z

    invoke-virtual {v1, v6}, Lcom/google/b/d/d;->d(Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {v2, v1, p1}, Lcom/google/b/ae;->a(Lcom/google/b/d/d;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v1, v3}, Lcom/google/b/d/d;->b(Z)V

    invoke-virtual {v1, v4}, Lcom/google/b/d/d;->c(Z)V

    invoke-virtual {v1, v5}, Lcom/google/b/d/d;->d(Z)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 528
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 527
    :catch_0
    move-exception v0

    :try_start_3
    new-instance v2, Lcom/google/b/u;

    invoke-direct {v2, v0}, Lcom/google/b/u;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    :try_start_4
    invoke-virtual {v1, v3}, Lcom/google/b/d/d;->b(Z)V

    invoke-virtual {v1, v4}, Lcom/google/b/d/d;->c(Z)V

    invoke-virtual {v1, v5}, Lcom/google/b/d/d;->d(Z)V

    throw v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    move-exception v0

    new-instance v1, Lcom/google/b/u;

    invoke-direct {v1, v0}, Lcom/google/b/u;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 898
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{serializeNulls:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/google/b/j;->g:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "factories:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/b/j;->e:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",instanceCreators:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/b/j;->f:Lcom/google/b/b/f;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
