.class public final Lcom/google/android/gms/drive/metadata/internal/c;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/drive/metadata/b",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/gms/drive/metadata/internal/c;->a:Ljava/util/Map;

    sget-object v0, Lcom/google/android/gms/internal/ip;->El:Lcom/google/android/gms/drive/metadata/b;

    invoke-static {v0}, Lcom/google/android/gms/drive/metadata/internal/c;->a(Lcom/google/android/gms/drive/metadata/b;)V

    sget-object v0, Lcom/google/android/gms/internal/ip;->TITLE:Lcom/google/android/gms/drive/metadata/b;

    invoke-static {v0}, Lcom/google/android/gms/drive/metadata/internal/c;->a(Lcom/google/android/gms/drive/metadata/b;)V

    sget-object v0, Lcom/google/android/gms/internal/ip;->MIME_TYPE:Lcom/google/android/gms/drive/metadata/b;

    invoke-static {v0}, Lcom/google/android/gms/drive/metadata/internal/c;->a(Lcom/google/android/gms/drive/metadata/b;)V

    sget-object v0, Lcom/google/android/gms/internal/ip;->STARRED:Lcom/google/android/gms/drive/metadata/b;

    invoke-static {v0}, Lcom/google/android/gms/drive/metadata/internal/c;->a(Lcom/google/android/gms/drive/metadata/b;)V

    sget-object v0, Lcom/google/android/gms/internal/ip;->TRASHED:Lcom/google/android/gms/drive/metadata/b;

    invoke-static {v0}, Lcom/google/android/gms/drive/metadata/internal/c;->a(Lcom/google/android/gms/drive/metadata/b;)V

    sget-object v0, Lcom/google/android/gms/internal/ip;->Em:Lcom/google/android/gms/drive/metadata/b;

    invoke-static {v0}, Lcom/google/android/gms/drive/metadata/internal/c;->a(Lcom/google/android/gms/drive/metadata/b;)V

    sget-object v0, Lcom/google/android/gms/internal/ip;->IS_PINNED:Lcom/google/android/gms/drive/metadata/b;

    invoke-static {v0}, Lcom/google/android/gms/drive/metadata/internal/c;->a(Lcom/google/android/gms/drive/metadata/b;)V

    sget-object v0, Lcom/google/android/gms/internal/ip;->En:Lcom/google/android/gms/drive/metadata/b;

    invoke-static {v0}, Lcom/google/android/gms/drive/metadata/internal/c;->a(Lcom/google/android/gms/drive/metadata/b;)V

    sget-object v0, Lcom/google/android/gms/internal/ip;->Eo:Lcom/google/android/gms/drive/metadata/b;

    invoke-static {v0}, Lcom/google/android/gms/drive/metadata/internal/c;->a(Lcom/google/android/gms/drive/metadata/b;)V

    sget-object v0, Lcom/google/android/gms/internal/ip;->PARENTS:Lcom/google/android/gms/drive/metadata/a;

    invoke-static {v0}, Lcom/google/android/gms/drive/metadata/internal/c;->a(Lcom/google/android/gms/drive/metadata/b;)V

    sget-object v0, Lcom/google/android/gms/internal/ip;->Ep:Lcom/google/android/gms/drive/metadata/b;

    invoke-static {v0}, Lcom/google/android/gms/drive/metadata/internal/c;->a(Lcom/google/android/gms/drive/metadata/b;)V

    sget-object v0, Lcom/google/android/gms/internal/ip;->Eq:Lcom/google/android/gms/drive/metadata/a;

    invoke-static {v0}, Lcom/google/android/gms/drive/metadata/internal/c;->a(Lcom/google/android/gms/drive/metadata/b;)V

    sget-object v0, Lcom/google/android/gms/internal/ip;->Er:Lcom/google/android/gms/drive/metadata/b;

    invoke-static {v0}, Lcom/google/android/gms/drive/metadata/internal/c;->a(Lcom/google/android/gms/drive/metadata/b;)V

    sget-object v0, Lcom/google/android/gms/internal/ip;->Es:Lcom/google/android/gms/drive/metadata/b;

    invoke-static {v0}, Lcom/google/android/gms/drive/metadata/internal/c;->a(Lcom/google/android/gms/drive/metadata/b;)V

    sget-object v0, Lcom/google/android/gms/internal/ip;->Et:Lcom/google/android/gms/drive/metadata/b;

    invoke-static {v0}, Lcom/google/android/gms/drive/metadata/internal/c;->a(Lcom/google/android/gms/drive/metadata/b;)V

    sget-object v0, Lcom/google/android/gms/internal/ip;->Eu:Lcom/google/android/gms/drive/metadata/b;

    invoke-static {v0}, Lcom/google/android/gms/drive/metadata/internal/c;->a(Lcom/google/android/gms/drive/metadata/b;)V

    sget-object v0, Lcom/google/android/gms/internal/ip;->Ev:Lcom/google/android/gms/drive/metadata/b;

    invoke-static {v0}, Lcom/google/android/gms/drive/metadata/internal/c;->a(Lcom/google/android/gms/drive/metadata/b;)V

    sget-object v0, Lcom/google/android/gms/internal/ip;->Ew:Lcom/google/android/gms/drive/metadata/b;

    invoke-static {v0}, Lcom/google/android/gms/drive/metadata/internal/c;->a(Lcom/google/android/gms/drive/metadata/b;)V

    sget-object v0, Lcom/google/android/gms/internal/ip;->Ex:Lcom/google/android/gms/drive/metadata/b;

    invoke-static {v0}, Lcom/google/android/gms/drive/metadata/internal/c;->a(Lcom/google/android/gms/drive/metadata/b;)V

    sget-object v0, Lcom/google/android/gms/internal/ip;->Ey:Lcom/google/android/gms/drive/metadata/b;

    invoke-static {v0}, Lcom/google/android/gms/drive/metadata/internal/c;->a(Lcom/google/android/gms/drive/metadata/b;)V

    sget-object v0, Lcom/google/android/gms/internal/ip;->Ez:Lcom/google/android/gms/drive/metadata/b;

    invoke-static {v0}, Lcom/google/android/gms/drive/metadata/internal/c;->a(Lcom/google/android/gms/drive/metadata/b;)V

    sget-object v0, Lcom/google/android/gms/internal/ip;->EA:Lcom/google/android/gms/drive/metadata/b;

    invoke-static {v0}, Lcom/google/android/gms/drive/metadata/internal/c;->a(Lcom/google/android/gms/drive/metadata/b;)V

    sget-object v0, Lcom/google/android/gms/internal/ip;->EB:Lcom/google/android/gms/drive/metadata/b;

    invoke-static {v0}, Lcom/google/android/gms/drive/metadata/internal/c;->a(Lcom/google/android/gms/drive/metadata/b;)V

    sget-object v0, Lcom/google/android/gms/internal/ip;->EC:Lcom/google/android/gms/drive/metadata/b;

    invoke-static {v0}, Lcom/google/android/gms/drive/metadata/internal/c;->a(Lcom/google/android/gms/drive/metadata/b;)V

    sget-object v0, Lcom/google/android/gms/internal/ip;->ED:Lcom/google/android/gms/drive/metadata/b;

    invoke-static {v0}, Lcom/google/android/gms/drive/metadata/internal/c;->a(Lcom/google/android/gms/drive/metadata/b;)V

    sget-object v0, Lcom/google/android/gms/internal/is;->EG:Lcom/google/android/gms/drive/metadata/c;

    invoke-static {v0}, Lcom/google/android/gms/drive/metadata/internal/c;->a(Lcom/google/android/gms/drive/metadata/b;)V

    sget-object v0, Lcom/google/android/gms/internal/is;->EE:Lcom/google/android/gms/drive/metadata/c;

    invoke-static {v0}, Lcom/google/android/gms/drive/metadata/internal/c;->a(Lcom/google/android/gms/drive/metadata/b;)V

    sget-object v0, Lcom/google/android/gms/internal/is;->EF:Lcom/google/android/gms/drive/metadata/c;

    invoke-static {v0}, Lcom/google/android/gms/drive/metadata/internal/c;->a(Lcom/google/android/gms/drive/metadata/b;)V

    sget-object v0, Lcom/google/android/gms/internal/is;->EH:Lcom/google/android/gms/drive/metadata/c;

    invoke-static {v0}, Lcom/google/android/gms/drive/metadata/internal/c;->a(Lcom/google/android/gms/drive/metadata/b;)V

    sget-object v0, Lcom/google/android/gms/internal/is;->LAST_VIEWED_BY_ME:Lcom/google/android/gms/drive/metadata/c;

    invoke-static {v0}, Lcom/google/android/gms/drive/metadata/internal/c;->a(Lcom/google/android/gms/drive/metadata/b;)V

    sget-object v0, Lcom/google/android/gms/internal/iu;->EJ:Lcom/google/android/gms/drive/metadata/b;

    invoke-static {v0}, Lcom/google/android/gms/drive/metadata/internal/c;->a(Lcom/google/android/gms/drive/metadata/b;)V

    sget-object v0, Lcom/google/android/gms/internal/iu;->EK:Lcom/google/android/gms/drive/metadata/b;

    invoke-static {v0}, Lcom/google/android/gms/drive/metadata/internal/c;->a(Lcom/google/android/gms/drive/metadata/b;)V

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/google/android/gms/drive/metadata/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/drive/metadata/b",
            "<*>;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/drive/metadata/internal/c;->a:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/drive/metadata/b;

    return-object v0
.end method

.method private static a(Lcom/google/android/gms/drive/metadata/b;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/drive/metadata/b",
            "<*>;)V"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/drive/metadata/internal/c;->a:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/google/android/gms/drive/metadata/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Duplicate field name registered: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/drive/metadata/b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget-object v0, Lcom/google/android/gms/drive/metadata/internal/c;->a:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/google/android/gms/drive/metadata/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
