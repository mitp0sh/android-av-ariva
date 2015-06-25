.class public final Lcom/google/android/gms/internal/cu;
.super Lcom/google/android/gms/internal/ct;


# instance fields
.field private final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/cd;Lcom/google/android/gms/internal/cs;)V
    .locals 0

    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/ct;-><init>(Lcom/google/android/gms/internal/cd;Lcom/google/android/gms/internal/cs;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/cu;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final c()V
    .locals 0

    return-void
.end method

.method public final d()Lcom/google/android/gms/internal/da;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/cu;->a:Landroid/content/Context;

    new-instance v1, Lcom/google/android/gms/internal/aj;

    invoke-direct {v1}, Lcom/google/android/gms/internal/aj;-><init>()V

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/de;->a(Landroid/content/Context;Lcom/google/android/gms/internal/ai;)Lcom/google/android/gms/internal/de;

    move-result-object v0

    return-object v0
.end method
