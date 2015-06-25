.class public final Lcom/google/android/gms/plus/d;
.super Ljava/lang/Object;


# static fields
.field public static final API:Lcom/google/android/gms/common/api/a;

.field public static final AccountApi:Lcom/google/android/gms/plus/a;

.field public static final MomentsApi:Lcom/google/android/gms/plus/b;

.field public static final PeopleApi:Lcom/google/android/gms/plus/c;

.field public static final QK:Lcom/google/android/gms/plus/n;

.field public static final SCOPE_PLUS_LOGIN:Lcom/google/android/gms/common/api/j;

.field public static final SCOPE_PLUS_PROFILE:Lcom/google/android/gms/common/api/j;

.field static final va:Lcom/google/android/gms/common/api/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/c",
            "<",
            "Lcom/google/android/gms/plus/internal/k;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/android/gms/plus/e;

    invoke-direct {v0}, Lcom/google/android/gms/plus/e;-><init>()V

    sput-object v0, Lcom/google/android/gms/plus/d;->va:Lcom/google/android/gms/common/api/c;

    new-instance v0, Lcom/google/android/gms/common/api/a;

    sget-object v1, Lcom/google/android/gms/plus/d;->va:Lcom/google/android/gms/common/api/c;

    const/4 v2, 0x0

    new-array v2, v2, [Lcom/google/android/gms/common/api/j;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/api/a;-><init>(Lcom/google/android/gms/common/api/c;[Lcom/google/android/gms/common/api/j;)V

    sput-object v0, Lcom/google/android/gms/plus/d;->API:Lcom/google/android/gms/common/api/a;

    new-instance v0, Lcom/google/android/gms/common/api/j;

    const-string v1, "https://www.googleapis.com/auth/plus.login"

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/j;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/plus/d;->SCOPE_PLUS_LOGIN:Lcom/google/android/gms/common/api/j;

    new-instance v0, Lcom/google/android/gms/common/api/j;

    const-string v1, "https://www.googleapis.com/auth/plus.me"

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/j;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/plus/d;->SCOPE_PLUS_PROFILE:Lcom/google/android/gms/common/api/j;

    new-instance v0, Lcom/google/android/gms/internal/jw;

    sget-object v1, Lcom/google/android/gms/plus/d;->va:Lcom/google/android/gms/common/api/c;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/jw;-><init>(Lcom/google/android/gms/common/api/c;)V

    sput-object v0, Lcom/google/android/gms/plus/d;->MomentsApi:Lcom/google/android/gms/plus/b;

    new-instance v0, Lcom/google/android/gms/internal/jx;

    sget-object v1, Lcom/google/android/gms/plus/d;->va:Lcom/google/android/gms/common/api/c;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/jx;-><init>(Lcom/google/android/gms/common/api/c;)V

    sput-object v0, Lcom/google/android/gms/plus/d;->PeopleApi:Lcom/google/android/gms/plus/c;

    new-instance v0, Lcom/google/android/gms/internal/js;

    sget-object v1, Lcom/google/android/gms/plus/d;->va:Lcom/google/android/gms/common/api/c;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/js;-><init>(Lcom/google/android/gms/common/api/c;)V

    sput-object v0, Lcom/google/android/gms/plus/d;->AccountApi:Lcom/google/android/gms/plus/a;

    new-instance v0, Lcom/google/android/gms/internal/ju;

    sget-object v1, Lcom/google/android/gms/plus/d;->va:Lcom/google/android/gms/common/api/c;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ju;-><init>(Lcom/google/android/gms/common/api/c;)V

    sput-object v0, Lcom/google/android/gms/plus/d;->QK:Lcom/google/android/gms/plus/n;

    return-void
.end method

.method public static a(Lcom/google/android/gms/common/api/d;Lcom/google/android/gms/common/api/c;)Lcom/google/android/gms/plus/internal/k;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/d;",
            "Lcom/google/android/gms/common/api/c",
            "<",
            "Lcom/google/android/gms/plus/internal/k;",
            ">;)",
            "Lcom/google/android/gms/plus/internal/k;"
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p0, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "GoogleApiClient parameter is required."

    invoke-static {v0, v3}, Lcom/google/android/gms/internal/gv;->b(ZLjava/lang/Object;)V

    invoke-interface {p0}, Lcom/google/android/gms/common/api/d;->c()Z

    move-result v0

    const-string v3, "GoogleApiClient must be connected."

    invoke-static {v0, v3}, Lcom/google/android/gms/internal/gv;->a(ZLjava/lang/Object;)V

    invoke-interface {p0, p1}, Lcom/google/android/gms/common/api/d;->a(Lcom/google/android/gms/common/api/c;)Lcom/google/android/gms/common/api/b;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/plus/internal/k;

    if-eqz v0, :cond_1

    :goto_1
    const-string v2, "GoogleApiClient is not configured to use the Plus.API Api. Pass this into GoogleApiClient.Builder#addApi() to use this feature."

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/gv;->a(ZLjava/lang/Object;)V

    return-object v0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method
