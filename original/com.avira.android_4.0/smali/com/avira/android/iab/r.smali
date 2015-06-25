.class public final Lcom/avira/android/iab/r;
.super Landroid/os/Binder;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/avira/android/iab/IABRequestService;


# direct methods
.method public constructor <init>(Lcom/avira/android/iab/IABRequestService;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/avira/android/iab/r;->a:Lcom/avira/android/iab/IABRequestService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method final a()Lcom/avira/android/iab/IABRequestService;
    .locals 1

    .prologue
    .line 74
    invoke-static {}, Lcom/avira/android/iab/IABRequestService;->b()Ljava/lang/String;

    .line 75
    iget-object v0, p0, Lcom/avira/android/iab/r;->a:Lcom/avira/android/iab/IABRequestService;

    return-object v0
.end method
