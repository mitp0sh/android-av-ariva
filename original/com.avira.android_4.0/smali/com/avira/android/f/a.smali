.class public final Lcom/avira/android/f/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final ATOM:Ljava/lang/String; = "(?:[\\!\\#-\\\'\\*\\+\\-\\/-9\\=\\?A-Z\\^-\\~]+)"

.field private static final DOMAIN:Ljava/lang/String; = "(?:(?:[0-9a-zA-Z](?:(?:[0-9a-zA-Z._-])*[0-9a-zA-Z])?)(?:[\\.][a-zA-Z]*)+)"

.field private static final EMAIL:Ljava/lang/String; = "(?:(?:(?:(?:[\\!\\#-\\\'\\*\\+\\-\\/-9\\=\\?A-Z\\^-\\~]+)|(?:[\"\\\"](?:[^\\\"]|(?:[\\\\][\\\"]))*[\\\"]))(?:[\\.](?:(?:[\\!\\#-\\\'\\*\\+\\-\\/-9\\=\\?A-Z\\^-\\~]+)|(?:[\"\\\"](?:[^\\\"]|(?:[\\\\][\\\"]))*[\\\"])))*)[\\@](?:(?:[0-9a-zA-Z](?:(?:[0-9a-zA-Z._-])*[0-9a-zA-Z])?)(?:[\\.][a-zA-Z]*)+))"

.field private static final EMAIL_REGEX:Ljava/lang/String; = "^(?:(?:(?:(?:(?:[\\!\\#-\\\'\\*\\+\\-\\/-9\\=\\?A-Z\\^-\\~]+)|(?:[\"\\\"](?:[^\\\"]|(?:[\\\\][\\\"]))*[\\\"]))(?:[\\.](?:(?:[\\!\\#-\\\'\\*\\+\\-\\/-9\\=\\?A-Z\\^-\\~]+)|(?:[\"\\\"](?:[^\\\"]|(?:[\\\\][\\\"]))*[\\\"])))*)[\\@](?:(?:[0-9a-zA-Z](?:(?:[0-9a-zA-Z._-])*[0-9a-zA-Z])?)(?:[\\.][a-zA-Z]*)+))?)$"

.field private static final LETTER:Ljava/lang/String; = "[a-zA-Z]"

.field private static final LETTER_DIGIT:Ljava/lang/String; = "[0-9a-zA-Z]"

.field private static final LETTER_DIGIT_HYPHEN:Ljava/lang/String; = "(?:[0-9a-zA-Z._-])"

.field private static final LOCALPART:Ljava/lang/String; = "(?:(?:(?:[\\!\\#-\\\'\\*\\+\\-\\/-9\\=\\?A-Z\\^-\\~]+)|(?:[\"\\\"](?:[^\\\"]|(?:[\\\\][\\\"]))*[\\\"]))(?:[\\.](?:(?:[\\!\\#-\\\'\\*\\+\\-\\/-9\\=\\?A-Z\\^-\\~]+)|(?:[\"\\\"](?:[^\\\"]|(?:[\\\\][\\\"]))*[\\\"])))*)"

.field private static final MAINDOMAIN:Ljava/lang/String; = "[a-zA-Z]*"

.field private static final QUOTEDSTRING:Ljava/lang/String; = "(?:[\"\\\"](?:[^\\\"]|(?:[\\\\][\\\"]))*[\\\"])"

.field private static final SUBDOMAIN:Ljava/lang/String; = "(?:[0-9a-zA-Z](?:(?:[0-9a-zA-Z._-])*[0-9a-zA-Z])?)"

.field private static final WORD:Ljava/lang/String; = "(?:(?:[\\!\\#-\\\'\\*\\+\\-\\/-9\\=\\?A-Z\\^-\\~]+)|(?:[\"\\\"](?:[^\\\"]|(?:[\\\\][\\\"]))*[\\\"]))"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 35
    const-string v0, "^(?:(?:(?:(?:(?:[\\!\\#-\\\'\\*\\+\\-\\/-9\\=\\?A-Z\\^-\\~]+)|(?:[\"\\\"](?:[^\\\"]|(?:[\\\\][\\\"]))*[\\\"]))(?:[\\.](?:(?:[\\!\\#-\\\'\\*\\+\\-\\/-9\\=\\?A-Z\\^-\\~]+)|(?:[\"\\\"](?:[^\\\"]|(?:[\\\\][\\\"]))*[\\\"])))*)[\\@](?:(?:[0-9a-zA-Z](?:(?:[0-9a-zA-Z._-])*[0-9a-zA-Z])?)(?:[\\.][a-zA-Z]*)+))?)$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 36
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 37
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    .line 38
    :goto_0
    return v0

    .line 37
    :cond_0
    const/4 v0, 0x0

    .line 38
    goto :goto_0
.end method
